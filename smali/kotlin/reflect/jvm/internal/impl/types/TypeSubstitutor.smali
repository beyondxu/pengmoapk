###### Class kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor (kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor)
.class public Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
.super Ljava/lang/Object;
.source "TypeSubstitutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;,
        Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;


# instance fields
.field private final substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 14

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_21

    if-eq p0, v3, :cond_21

    if-eq p0, v2, :cond_21

    if-eq p0, v1, :cond_21

    if-eq p0, v0, :cond_21

    packed-switch p0, :pswitch_data_11c

    packed-switch p0, :pswitch_data_126

    packed-switch p0, :pswitch_data_138

    packed-switch p0, :pswitch_data_144

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_23

    :cond_21
    :pswitch_21
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_23
    if-eq p0, v4, :cond_3b

    if-eq p0, v3, :cond_3b

    if-eq p0, v2, :cond_3b

    if-eq p0, v1, :cond_3b

    if-eq p0, v0, :cond_3b

    packed-switch p0, :pswitch_data_14e

    packed-switch p0, :pswitch_data_158

    packed-switch p0, :pswitch_data_16a

    packed-switch p0, :pswitch_data_176

    const/4 v6, 0x3

    goto :goto_3c

    :cond_3b
    :pswitch_3b
    const/4 v6, 0x2

    :goto_3c
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_180

    :pswitch_44
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_49
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_4e
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_53
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_58
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_5d
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_62
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_67
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_6c
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_71
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_76
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_7b
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_80
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_85
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_8a
    aput-object v7, v6, v8

    :goto_8c
    const-string v8, "combine"

    const-string v9, "filterOutUnsafeVariance"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "unsafeSubstitute"

    const-string v12, "safeSubstitute"

    if-eq p0, v4, :cond_c8

    if-eq p0, v3, :cond_c3

    if-eq p0, v2, :cond_be

    if-eq p0, v1, :cond_bb

    if-eq p0, v0, :cond_b8

    packed-switch p0, :pswitch_data_1d8

    packed-switch p0, :pswitch_data_1e2

    packed-switch p0, :pswitch_data_1f4

    packed-switch p0, :pswitch_data_200

    aput-object v7, v6, v4

    goto :goto_cc

    :pswitch_af
    aput-object v10, v6, v4

    goto :goto_cc

    :pswitch_b2
    aput-object v11, v6, v4

    goto :goto_cc

    :pswitch_b5
    aput-object v12, v6, v4

    goto :goto_cc

    :cond_b8
    :pswitch_b8
    aput-object v8, v6, v4

    goto :goto_cc

    :cond_bb
    aput-object v9, v6, v4

    goto :goto_cc

    :cond_be
    const-string v7, "getSubstitution"

    aput-object v7, v6, v4

    goto :goto_cc

    :cond_c3
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v4

    goto :goto_cc

    :cond_c8
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v4

    :goto_cc
    packed-switch p0, :pswitch_data_20a

    :pswitch_cf
    const-string v7, "create"

    aput-object v7, v6, v3

    goto :goto_f6

    :pswitch_d4
    aput-object v8, v6, v3

    goto :goto_f6

    :pswitch_d7
    aput-object v9, v6, v3

    goto :goto_f6

    :pswitch_da
    aput-object v10, v6, v3

    goto :goto_f6

    :pswitch_dd
    aput-object v11, v6, v3

    goto :goto_f6

    :pswitch_e0
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v3

    goto :goto_f6

    :pswitch_e5
    const-string v7, "substitute"

    aput-object v7, v6, v3

    goto :goto_f6

    :pswitch_ea
    aput-object v12, v6, v3

    goto :goto_f6

    :pswitch_ed
    const-string v7, "<init>"

    aput-object v7, v6, v3

    goto :goto_f6

    :pswitch_f2
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v3

    :goto_f6
    :pswitch_f6
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_116

    if-eq p0, v3, :cond_116

    if-eq p0, v2, :cond_116

    if-eq p0, v1, :cond_116

    if-eq p0, v0, :cond_116

    packed-switch p0, :pswitch_data_262

    packed-switch p0, :pswitch_data_26c

    packed-switch p0, :pswitch_data_27e

    packed-switch p0, :pswitch_data_28a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_11b

    :cond_116
    :pswitch_116
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_11b
    throw p0

    :pswitch_data_11c
    .packed-switch 0xb
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x13
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x1d
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x28
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0xb
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x13
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x1d
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x28
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_44
        :pswitch_8a
        :pswitch_71
        :pswitch_6c
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_67
        :pswitch_62
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_5d
        :pswitch_58
        :pswitch_62
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_53
        :pswitch_8a
        :pswitch_4e
        :pswitch_67
        :pswitch_8a
        :pswitch_4e
        :pswitch_49
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
    .end packed-switch

    :pswitch_data_1d8
    .packed-switch 0xb
        :pswitch_b5
        :pswitch_b5
        :pswitch_b5
    .end packed-switch

    :pswitch_data_1e2
    .packed-switch 0x13
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
    .end packed-switch

    :pswitch_data_1f4
    .packed-switch 0x1d
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x28
        :pswitch_b8
        :pswitch_b8
        :pswitch_b8
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_f6
        :pswitch_f2
        :pswitch_f2
        :pswitch_cf
        :pswitch_cf
        :pswitch_ed
        :pswitch_f6
        :pswitch_ea
        :pswitch_ea
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e0
        :pswitch_dd
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_d7
        :pswitch_f6
        :pswitch_d4
        :pswitch_d4
        :pswitch_f6
        :pswitch_d4
        :pswitch_d4
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0xb
        :pswitch_116
        :pswitch_116
        :pswitch_116
    .end packed-switch

    :pswitch_data_26c
    .packed-switch 0x13
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
    .end packed-switch

    :pswitch_data_27e
    .packed-switch 0x1d
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
    .end packed-switch

    :pswitch_data_28a
    .packed-switch 0x28
        :pswitch_116
        :pswitch_116
        :pswitch_116
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->EMPTY:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->EMPTY:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 114
    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    return-void
.end method

.method private static assertRecursionDepth(ILkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V
    .registers 5

    const/16 v0, 0x64

    if-gt p0, v0, :cond_5

    return-void

    .line 434
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; substitution: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static combine(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x23

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x24

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 402
    :cond_e
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-nez p0, :cond_1d

    const/16 p1, 0x25

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_1d
    return-object p0

    .line 404
    :cond_1e
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->combine(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    return-object p0
.end method

.method public static combine(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .registers 5

    if-nez p0, :cond_7

    const/16 v0, 0x26

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x27

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 409
    :cond_e
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v0, :cond_1a

    if-nez p1, :cond_2f

    const/16 p0, 0x28

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    return-object p1

    .line 410
    :cond_1a
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v0, :cond_26

    if-nez p0, :cond_25

    const/16 p1, 0x29

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_25
    return-object p0

    :cond_26
    if-ne p0, p1, :cond_30

    if-nez p1, :cond_2f

    const/16 p0, 0x2a

    .line 411
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_2f
    return-object p1

    .line 412
    :cond_30
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static conflictType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;
    .registers 3

    .line 423
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v0, :cond_b

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v0, :cond_b

    .line 424
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0

    .line 426
    :cond_b
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v0, :cond_16

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, p0, :cond_16

    .line 427
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->IN_IN_OUT_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0

    .line 429
    :cond_16
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 107
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 56
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    return-object v0
.end method

.method public static createChainedSubstitutor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 97
    :cond_c
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DisjointKeysUnionTypeSubstitution;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method private static filterOutUnsafeVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x21

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 323
    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unsafeVariance:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v0

    if-nez v0, :cond_17

    if-nez p0, :cond_16

    const/16 v0, 0x22

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_16
    return-object p0

    .line 324
    :cond_17
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/FilteredAnnotations;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1;-><init>()V

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/FilteredAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static projectedTypeForConflictedTypeWithUnsafeVariance(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 6

    if-nez p0, :cond_7

    const/16 v0, 0x1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p3, :cond_15

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 297
    :cond_15
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unsafeVariance:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result p0

    if-nez p0, :cond_29

    if-nez p1, :cond_84

    const/16 p0, 0x1d

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    return-object p1

    .line 299
    :cond_29
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    .line 300
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    if-nez v0, :cond_3d

    if-nez p1, :cond_84

    const/16 p0, 0x1e

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    return-object p1

    .line 302
    :cond_3d
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 303
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p0

    .line 304
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    .line 306
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->conflictType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p3

    .line 307
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    if-ne p3, v1, :cond_5d

    .line 308
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p1

    :cond_5d
    if-nez p2, :cond_67

    if-nez p1, :cond_84

    const/16 p0, 0x1f

    .line 311
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    return-object p1

    .line 313
    :cond_67
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->conflictType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p2

    .line 314
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    if-ne p2, p3, :cond_7d

    .line 315
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p1

    :cond_7d
    if-nez p1, :cond_84

    const/16 p0, 0x20

    .line 318
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_84
    return-object p1
.end method

.method private static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 440
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    .line 443
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/ExceptionUtilsKt;->isProcessCanceledException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Exception while computing toString(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 445
    :cond_20
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method private substituteCompoundType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
        }
    .end annotation

    .line 336
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 337
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    .line 338
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v2

    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v2, :cond_15

    return-object p1

    .line 345
    :cond_15
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->getAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 348
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->replaceWithNonApproximatingSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v2

    .line 349
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v2, p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 353
    :goto_27
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v3

    .line 352
    invoke-direct {p0, v2, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substituteTypeArguments(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 355
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    .line 356
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->filterAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->replace(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    .line 357
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_55

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_55

    .line 358
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    .line 361
    :cond_55
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-direct {p1, v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p1
.end method

.method private substituteTypeArguments(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;I)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 369
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_69

    .line 370
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 371
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    const/4 v5, 0x1

    add-int/lit8 v6, p3, 0x1

    .line 373
    invoke-direct {p0, v4, v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->unsafeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v6

    .line 375
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$2;->$SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType:[I

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->conflictType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_5c

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_41

    goto :goto_60

    .line 378
    :cond_41
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v3, v7, :cond_60

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v3

    if-nez v3, :cond_60

    .line 379
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-direct {v3, v7, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    move-object v6, v3

    goto :goto_60

    .line 384
    :cond_5c
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v6

    :cond_60
    :goto_60
    if-eq v6, v4, :cond_63

    const/4 v2, 0x1

    .line 392
    :cond_63
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_69
    if-nez v2, :cond_6c

    return-object p2

    :cond_6c
    return-object v0
.end method

.method private unsafeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 176
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-static {p3, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->assertRecursionDepth(ILkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    .line 178
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-nez p1, :cond_1ba

    const/16 p2, 0x13

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    return-object p1

    .line 181
    :cond_1a
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 182
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancement;

    const/4 v2, 0x1

    if-eqz v1, :cond_67

    .line 183
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancement;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancement;->getOrigin()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    .line 184
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancement;->getEnhancement()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 186
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    .line 187
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    add-int/2addr p3, v2

    .line 186
    invoke-direct {p0, v3, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->unsafeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p2

    .line 191
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result p3

    if-eqz p3, :cond_49

    if-nez p2, :cond_48

    const/16 p1, 0x14

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_48
    return-object p2

    .line 193
    :cond_49
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    .line 195
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p3

    .line 194
    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    .line 199
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p3

    .line 202
    :cond_67
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-nez v1, :cond_1b3

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/types/RawType;

    if-eqz v1, :cond_77

    goto/16 :goto_1b3

    .line 206
    :cond_77
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 209
    invoke-static {v0, v1, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->projectedTypeForConflictedTypeWithUnsafeVariance(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v1

    goto :goto_85

    :cond_84
    const/4 v1, 0x0

    .line 212
    :goto_85
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    if-nez v1, :cond_f0

    .line 213
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCapabilitiesKt;->isCustomTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-nez v4, :cond_f0

    .line 214
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v0

    .line 215
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    .line 217
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    add-int/2addr p3, v2

    .line 216
    invoke-direct {p0, v1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->unsafeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v1

    .line 221
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    .line 223
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 222
    invoke-direct {p0, v2, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->unsafeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p2

    .line 228
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    .line 233
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    if-ne v2, v3, :cond_d6

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-ne v2, v0, :cond_d6

    if-nez p1, :cond_1ba

    const/16 p2, 0x16

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    return-object p1

    .line 236
    :cond_d6
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    .line 235
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    .line 237
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-direct {p2, p3, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p2

    .line 240
    :cond_f0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isNothing(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-nez p2, :cond_1ab

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-eqz p2, :cond_fe

    goto/16 :goto_1ab

    :cond_fe
    if-eqz v1, :cond_19f

    .line 243
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->conflictType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p1

    .line 248
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->isCaptured(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    const/4 p3, 0x2

    if-nez p2, :cond_138

    .line 251
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$2;->$SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->ordinal()I

    move-result v4

    aget p2, p2, v4

    if-eq p2, v2, :cond_130

    if-eq p2, p3, :cond_11c

    goto :goto_138

    .line 256
    :cond_11c
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNullableAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p1

    .line 253
    :cond_130
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;

    const-string p2, "Out-projection in in-position"

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_138
    :goto_138
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCapabilitiesKt;->getCustomTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/CustomTypeParameter;

    move-result-object p2

    .line 261
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v4

    if-eqz v4, :cond_14a

    if-nez v1, :cond_149

    const/16 p1, 0x18

    .line 262
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_149
    return-object v1

    :cond_14a
    if-eqz p2, :cond_155

    .line 265
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-interface {p2, v4}, Lkotlin/reflect/jvm/internal/impl/types/CustomTypeParameter;->substitutionResult(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    goto :goto_161

    .line 269
    :cond_155
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v4

    invoke-static {p2, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    .line 273
    :goto_161
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18d

    .line 274
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    invoke-virtual {v4, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->filterAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->filterOutUnsafeVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    .line 275
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;

    new-array p3, p3, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    const/4 v5, 0x0

    .line 277
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v6

    aput-object v6, p3, v5

    aput-object v0, p3, v2

    invoke-direct {v4, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 275
    invoke-static {p2, v4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    .line 281
    :cond_18d
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    if-ne p1, p3, :cond_199

    .line 282
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->combine(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    .line 284
    :cond_199
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-direct {p1, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p1

    .line 287
    :cond_19f
    invoke-direct {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substituteCompoundType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p1

    if-nez p1, :cond_1aa

    const/16 p2, 0x19

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_1aa
    return-object p1

    :cond_1ab
    :goto_1ab
    if-nez p1, :cond_1ba

    const/16 p2, 0x17

    .line 240
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    return-object p1

    :cond_1b3
    :goto_1b3
    if-nez p1, :cond_1ba

    const/16 p2, 0x15

    .line 203
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_1ba
    return-object p1
.end method


# virtual methods
.method public getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;
    .registers 3

    .line 124
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    if-nez v0, :cond_9

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public replaceWithNonApproximatingSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .registers 6

    .line 61
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateContravariantCapturedTypes()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_29

    .line 63
    :cond_d
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;

    .line 65
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;->getParameters()[Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;

    .line 66
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;->getArguments()[Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;[Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Z)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    return-object v0

    :cond_29
    :goto_29
    return-object p0
.end method

.method public safeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 4

    if-nez p1, :cond_7

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 129
    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez p1, :cond_1b

    const/16 p2, 0xb

    .line 130
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_1b
    return-object p1

    .line 134
    :cond_1c
    :try_start_1c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->unsafeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1
    :try_end_2b
    .catch Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException; {:try_start_1c .. :try_end_2b} :catch_33

    if-nez p1, :cond_32

    const/16 p2, 0xc

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_32
    return-object p1

    :catch_33
    move-exception p1

    .line 136
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNABLE_TO_SUBSTITUTE_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p1

    if-nez p1, :cond_49

    const/16 p2, 0xd

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_49
    return-object p1
.end method

.method public substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 5

    if-nez p1, :cond_7

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 142
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    .line 143
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->prepareTopLevelType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p1

    if-nez p1, :cond_23

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_23
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    return-object p1
.end method

.method public substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 149
    :cond_7
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substituteWithoutApproximation(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateCapturedTypes()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateContravariantCapturedTypes()Z

    move-result v0

    if-nez v0, :cond_1c

    return-object p1

    .line 153
    :cond_1c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    .line 154
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateContravariantCapturedTypes()Z

    move-result v0

    .line 153
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->approximateCapturedTypesIfNecessary(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Z)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p1

    return-object p1
.end method

.method public substituteWithoutApproximation(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 4

    if-nez p1, :cond_7

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 159
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    :try_start_10
    invoke-direct {p0, p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->unsafeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p1
    :try_end_14
    .catch Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException; {:try_start_10 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    return-object v1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$1)
.class final Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1;
.super Ljava/lang/Object;
.source "TypeSubstitutor.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->filterOutUnsafeVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 3

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "name"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "invoke"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>()V
    .registers 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/lang/Boolean;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1;->$$$reportNull$$$0(I)V

    .line 327
    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unsafeVariance:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 324
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1;->invoke(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.AnonymousClass2 (kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$2)
.class synthetic Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$2;
.super Ljava/lang/Object;
.source "TypeSubstitutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 251
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->values()[Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$2;->$SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType:[I

    :try_start_9
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$2;->$SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->IN_IN_OUT_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$2;->$SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.SubstitutionException (kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$SubstitutionException)
.class final Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
.super Ljava/lang/Exception;
.source "TypeSubstitutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubstitutionException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.VarianceConflictType (kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$VarianceConflictType)
.class final enum Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;
.super Ljava/lang/Enum;
.source "TypeSubstitutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VarianceConflictType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

.field public static final enum IN_IN_OUT_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

.field public static final enum NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

.field public static final enum OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 417
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    const-string v1, "NO_CONFLICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    .line 418
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    const-string v3, "IN_IN_OUT_POSITION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->IN_IN_OUT_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    .line 419
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    const-string v5, "OUT_IN_IN_POSITION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    const/4 v5, 0x3

    .line 416
    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;
    .registers 2

    .line 416
    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;
    .registers 1

    .line 416
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object v0
.end method
