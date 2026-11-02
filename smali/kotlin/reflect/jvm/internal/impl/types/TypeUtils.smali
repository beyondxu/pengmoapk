###### Class kotlin.reflect.jvm.internal.impl.types.TypeUtils (kotlin.reflect.jvm.internal.impl.types.TypeUtils)
.class public Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CANNOT_INFER_FUNCTION_PARAM_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

.field public static final DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

.field public static final NO_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

.field public static final UNIT_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 25

    move/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x35

    const/16 v4, 0x30

    const/16 v5, 0x23

    const/16 v6, 0x1a

    const/16 v7, 0x13

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_35

    if-eq v0, v11, :cond_35

    if-eq v0, v10, :cond_35

    if-eq v0, v9, :cond_35

    if-eq v0, v8, :cond_35

    if-eq v0, v7, :cond_35

    if-eq v0, v6, :cond_35

    if-eq v0, v5, :cond_35

    if-eq v0, v4, :cond_35

    if-eq v0, v3, :cond_35

    if-eq v0, v2, :cond_35

    if-eq v0, v1, :cond_35

    packed-switch v0, :pswitch_data_1e6

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_37

    :cond_35
    :pswitch_35
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_37
    const/4 v14, 0x2

    if-eq v0, v12, :cond_55

    if-eq v0, v11, :cond_55

    if-eq v0, v10, :cond_55

    if-eq v0, v9, :cond_55

    if-eq v0, v8, :cond_55

    if-eq v0, v7, :cond_55

    if-eq v0, v6, :cond_55

    if-eq v0, v5, :cond_55

    if-eq v0, v4, :cond_55

    if-eq v0, v3, :cond_55

    if-eq v0, v2, :cond_55

    if-eq v0, v1, :cond_55

    packed-switch v0, :pswitch_data_1f2

    const/4 v15, 0x3

    goto :goto_56

    :cond_55
    :pswitch_55
    const/4 v15, 0x2

    :goto_56
    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "kotlin/reflect/jvm/internal/impl/types/TypeUtils"

    const/16 v17, 0x0

    packed-switch v0, :pswitch_data_1fe

    :pswitch_5f
    const-string v18, "type"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_65
    const-string v18, "literalTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_6b
    const-string v18, "expectedType"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_71
    const-string v18, "supertypes"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_77
    const-string v18, "numberValueTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_7d
    const-string v18, "parameterDescriptor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_82
    const-string v18, "isSpecialType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_87
    const-string v18, "specialType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_8c
    const-string v18, "typeParameterConstructors"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_91
    const-string v18, "typeParameters"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_96
    const-string v18, "b"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_9b
    const-string v18, "a"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_a0
    const-string v18, "projections"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_a5
    const-string v18, "typeArguments"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_aa
    const-string v18, "clazz"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_af
    const-string v18, "result"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_b4
    const-string v18, "substitutor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_b9
    const-string v18, "superType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_be
    const-string v18, "subType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_c3
    const-string v18, "parameters"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_c8
    const-string v18, "refinedTypeFactory"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_cd
    const-string v18, "unsubstitutedMemberScope"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_d2
    const-string v18, "typeConstructor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_d7
    aput-object v16, v15, v17

    :goto_d9
    const-string v17, "getAllSupertypes"

    const-string v18, "getImmediateSupertypes"

    const-string v19, "getDefaultTypeProjections"

    const-string v20, "makeUnsubstitutedType"

    const-string v21, "makeNullableIfNeeded"

    const-string v22, "makeNullableAsSpecified"

    const/16 v23, 0x1

    if-eq v0, v12, :cond_123

    if-eq v0, v11, :cond_120

    if-eq v0, v10, :cond_11d

    if-eq v0, v9, :cond_11d

    if-eq v0, v8, :cond_11a

    if-eq v0, v7, :cond_117

    if-eq v0, v6, :cond_114

    if-eq v0, v5, :cond_10f

    if-eq v0, v4, :cond_10a

    if-eq v0, v3, :cond_105

    if-eq v0, v2, :cond_120

    if-eq v0, v1, :cond_120

    packed-switch v0, :pswitch_data_272

    aput-object v16, v15, v23

    goto :goto_125

    :cond_105
    :pswitch_105
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_10a
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_10f
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_114
    aput-object v17, v15, v23

    goto :goto_125

    :cond_117
    aput-object v18, v15, v23

    goto :goto_125

    :cond_11a
    aput-object v19, v15, v23

    goto :goto_125

    :cond_11d
    aput-object v20, v15, v23

    goto :goto_125

    :cond_120
    aput-object v21, v15, v23

    goto :goto_125

    :cond_123
    aput-object v22, v15, v23

    :goto_125
    packed-switch v0, :pswitch_data_27e

    const-string v16, "noExpectedType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_12e
    const-string v16, "getTypeParameterDescriptorOrNull"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_134
    const-string v16, "isNonReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_13a
    const-string v16, "isReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_140
    const-string v16, "isTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_146
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_14c
    const-string v16, "findByFqName"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_152
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_158
    const-string v16, "makeStarProjection"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_15e
    const-string v16, "contains"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_164
    const-string v16, "dependsOnTypeConstructors"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_169
    const-string v16, "dependsOnTypeParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_16e
    const-string v16, "equalTypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_173
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_178
    const-string v16, "substituteParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_17d
    const-string v16, "getClassDescriptor"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_182
    const-string v16, "hasNullableSuperType"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_187
    const-string v16, "acceptsNullable"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_18c
    const-string v16, "isNullableType"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_191
    aput-object v17, v15, v14

    goto :goto_1bb

    :pswitch_194
    const-string v16, "collectAllSupertypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_199
    const-string v16, "createSubstitutedSupertype"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_19e
    aput-object v18, v15, v14

    goto :goto_1bb

    :pswitch_1a1
    aput-object v19, v15, v14

    goto :goto_1bb

    :pswitch_1a4
    aput-object v20, v15, v14

    goto :goto_1bb

    :pswitch_1a7
    const-string v16, "canHaveSubtypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_1ac
    aput-object v21, v15, v14

    goto :goto_1bb

    :pswitch_1af
    aput-object v22, v15, v14

    goto :goto_1bb

    :pswitch_1b2
    const-string v16, "makeNotNullable"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_1b7
    const-string v16, "makeNullable"

    aput-object v16, v15, v14

    :goto_1bb
    :pswitch_1bb
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_1e0

    if-eq v0, v11, :cond_1e0

    if-eq v0, v10, :cond_1e0

    if-eq v0, v9, :cond_1e0

    if-eq v0, v8, :cond_1e0

    if-eq v0, v7, :cond_1e0

    if-eq v0, v6, :cond_1e0

    if-eq v0, v5, :cond_1e0

    if-eq v0, v4, :cond_1e0

    if-eq v0, v3, :cond_1e0

    if-eq v0, v2, :cond_1e0

    if-eq v0, v1, :cond_1e0

    packed-switch v0, :pswitch_data_300

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1e5

    :cond_1e0
    :pswitch_1e0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1e5
    throw v0

    :pswitch_data_1e6
    .packed-switch 0x38
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_1f2
    .packed-switch 0x38
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch 0x4
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_d2
        :pswitch_cd
        :pswitch_c8
        :pswitch_d7
        :pswitch_c3
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_be
        :pswitch_b9
        :pswitch_b4
        :pswitch_5f
        :pswitch_af
        :pswitch_5f
        :pswitch_d7
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_aa
        :pswitch_a5
        :pswitch_aa
        :pswitch_a0
        :pswitch_d7
        :pswitch_9b
        :pswitch_96
        :pswitch_5f
        :pswitch_91
        :pswitch_5f
        :pswitch_8c
        :pswitch_87
        :pswitch_82
        :pswitch_82
        :pswitch_7d
        :pswitch_7d
        :pswitch_77
        :pswitch_d7
        :pswitch_71
        :pswitch_71
        :pswitch_77
        :pswitch_6b
        :pswitch_d7
        :pswitch_65
        :pswitch_6b
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
    .end packed-switch

    :pswitch_data_272
    .packed-switch 0x38
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
    .end packed-switch

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_1b7
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1bb
        :pswitch_1ac
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_1ac
        :pswitch_1bb
        :pswitch_1a7
        :pswitch_1bb
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_1bb
        :pswitch_1a1
        :pswitch_1bb
        :pswitch_19e
        :pswitch_1bb
        :pswitch_199
        :pswitch_199
        :pswitch_199
        :pswitch_194
        :pswitch_194
        :pswitch_191
        :pswitch_1bb
        :pswitch_18c
        :pswitch_187
        :pswitch_182
        :pswitch_17d
        :pswitch_178
        :pswitch_178
        :pswitch_173
        :pswitch_173
        :pswitch_1bb
        :pswitch_16e
        :pswitch_16e
        :pswitch_169
        :pswitch_169
        :pswitch_164
        :pswitch_164
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_158
        :pswitch_158
        :pswitch_152
        :pswitch_1bb
        :pswitch_152
        :pswitch_14c
        :pswitch_146
        :pswitch_146
        :pswitch_1bb
        :pswitch_146
        :pswitch_146
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_140
        :pswitch_13a
        :pswitch_134
        :pswitch_12e
    .end packed-switch

    :pswitch_data_300
    .packed-switch 0x38
        :pswitch_1e0
        :pswitch_1e0
        :pswitch_1e0
        :pswitch_1e0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 37
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNINFERRED_LAMBDA_PARAMETER_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    new-array v1, v1, [Ljava/lang/String;

    .line 38
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->CANNOT_INFER_FUNCTION_PARAM_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 87
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    const-string v1, "NO_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->NO_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 89
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    const-string v1, "UNIT_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->UNIT_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 331
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    .line 334
    :cond_f
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x2b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_7
    const/4 v0, 0x0

    .line 431
    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result p0

    return p0
.end method

.method private static contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/utils/SmartSet<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x2c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_7
    const/4 v0, 0x0

    if-nez p0, :cond_b

    return v0

    .line 441
    :cond_b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    .line 443
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->noExpectedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_20
    if-eqz p2, :cond_29

    .line 444
    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    return v0

    .line 445
    :cond_29
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    return v3

    :cond_37
    if-nez p2, :cond_3d

    .line 448
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->create()Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    move-result-object p2

    .line 450
    :cond_3d
    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 452
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v2, :cond_48

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    if-eqz v2, :cond_60

    .line 454
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 455
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v2

    if-eqz v2, :cond_60

    :cond_5f
    return v3

    .line 459
    :cond_60
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    if-eqz v2, :cond_71

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 460
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->getOriginal()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v1

    if-eqz v1, :cond_71

    return v3

    .line 464
    :cond_71
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    .line 465
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v2, :cond_97

    .line 466
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 467
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_83
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 468
    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v1

    if-eqz v1, :cond_83

    return v3

    :cond_96
    return v0

    .line 473
    :cond_97
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9f
    :goto_9f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 474
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v2

    if-eqz v2, :cond_b2

    goto :goto_9f

    .line 475
    :cond_b2
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    :try_start_b6
    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v1
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_bd

    if-eqz v1, :cond_9f

    return v3

    :catchall_bd
    move-exception p0

    throw p0

    :cond_bf
    return v0
.end method

.method public static createSubstitutedSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p2, :cond_15

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 266
    :cond_15
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 268
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getClassDescriptor(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 355
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    .line 356
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v0, :cond_16

    .line 357
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultTypeProjections(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 239
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 241
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 243
    :cond_2d
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_38

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_38
    return-object p0
.end method

.method public static getImmediateSupertypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 248
    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 252
    invoke-static {p0, v3, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->createSubstitutedSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 254
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_36
    return-object v2
.end method

.method public static getTypeParameterDescriptorOrNull(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x3f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 601
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_1e

    .line 602
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasNullableSuperType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 341
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    return v1

    .line 346
    :cond_15
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getImmediateSupertypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 347
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_31
    return v1
.end method

.method public static isDontCarePlaceholder(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 96
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 297
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    .line 300
    :cond_f
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    .line 303
    :cond_24
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    return v2

    .line 306
    :cond_2c
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 307
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->hasNullableSuperType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    return p0

    .line 309
    :cond_37
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractStubType;

    if-eqz v0, :cond_54

    .line 310
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractStubType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractStubType;->getOriginalTypeVariable()Lkotlin/reflect/jvm/internal/impl/types/checker/NewTypeVariableConstructor;

    move-result-object p0

    .line 311
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewTypeVariableConstructor;->getOriginalTypeParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 312
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->hasNullableSuperType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_53

    :cond_52
    return v2

    :cond_53
    :goto_53
    return v1

    .line 315
    :cond_54
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    .line 316
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v0, :cond_77

    .line 317
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 318
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_64

    return v1

    :cond_77
    return v2
.end method

.method public static isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x3c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 586
    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getTypeParameterDescriptorOrNull(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewTypeVariableConstructor;

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method

.method public static makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_6
    const/4 v0, 0x0

    .line 106
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method

.method public static makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 2

    const/4 v0, 0x1

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 101
    :cond_6
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method

.method public static makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 111
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_14
    return-object p0
.end method

.method public static makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_7
    if-eqz p1, :cond_e

    .line 125
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p0, :cond_15

    const/16 p1, 0x9

    .line 127
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_15
    return-object p0
.end method

.method public static makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_6
    if-eqz p1, :cond_14

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p1, 0x6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_13
    return-object p0

    :cond_14
    if-nez p0, :cond_1a

    const/4 p1, 0x7

    .line 119
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_1a
    return-object p0
.end method

.method public static makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x2d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 482
    :cond_7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    return-object v0
.end method

.method public static makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x2e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 487
    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;->getHowThisTypeIsUsed()Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    if-ne p1, v0, :cond_19

    .line 488
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt;->starProjectionType(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p1

    .line 490
    :cond_19
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    return-object p1
.end method

.method public static makeUnsubstitutedType(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;"
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 214
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNABLE_TO_SUBSTITUTE_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p0

    if-nez p0, :cond_1b

    const/16 p1, 0xb

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_1b
    return-object p0

    .line 216
    :cond_1c
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    .line 217
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeUnsubstitutedType(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public static makeUnsubstitutedType(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p2, :cond_15

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 226
    :cond_15
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getDefaultTypeProjections(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 227
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    .line 228
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 227
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-nez p0, :cond_32

    const/16 p1, 0xf

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    :cond_32
    return-object p0
.end method

.method public static noExpectedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 92
    :cond_6
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->NO_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->UNIT_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-ne p0, v1, :cond_f

    goto :goto_10

    :cond_f
    return v0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.TypeUtils.SpecialType (kotlin.reflect.jvm.internal.impl.types.TypeUtils$SpecialType)
.class public Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;
.super Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialType"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const/4 v5, 0x3

    goto :goto_14

    :cond_13
    const/4 v5, 0x2

    :goto_14
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType"

    const/4 v7, 0x0

    if-eq p0, v1, :cond_30

    if-eq p0, v4, :cond_2b

    if-eq p0, v3, :cond_26

    if-eq p0, v0, :cond_30

    const-string v8, "newAttributes"

    aput-object v8, v5, v7

    goto :goto_32

    :cond_26
    const-string v8, "kotlinTypeRefiner"

    aput-object v8, v5, v7

    goto :goto_32

    :cond_2b
    const-string v8, "delegate"

    aput-object v8, v5, v7

    goto :goto_32

    :cond_30
    aput-object v6, v5, v7

    :goto_32
    const-string v7, "refine"

    if-eq p0, v1, :cond_3e

    if-eq p0, v0, :cond_3b

    aput-object v6, v5, v1

    goto :goto_42

    :cond_3b
    aput-object v7, v5, v1

    goto :goto_42

    :cond_3e
    const-string v6, "toString"

    aput-object v6, v5, v1

    :goto_42
    if-eq p0, v1, :cond_56

    if-eq p0, v4, :cond_52

    if-eq p0, v3, :cond_4f

    if-eq p0, v0, :cond_56

    const-string v3, "replaceAttributes"

    aput-object v3, v5, v4

    goto :goto_56

    :cond_4f
    aput-object v7, v5, v4

    goto :goto_56

    :cond_52
    const-string v3, "replaceDelegate"

    aput-object v3, v5, v4

    :cond_56
    :goto_56
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_64

    if-eq p0, v0, :cond_64

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_69
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;-><init>()V

    .line 44
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 3

    .line 62
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    move-result-object p1

    return-object p1
.end method

.method public refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->$$$reportNull$$$0(I)V

    :cond_6
    return-object p0
.end method

.method public bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    move-result-object p1

    return-object p1
.end method

.method public replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->$$$reportNull$$$0(I)V

    .line 56
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1
.end method

.method public replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->$$$reportNull$$$0(I)V

    .line 75
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->name:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method
