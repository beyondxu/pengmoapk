###### Class kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure (kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure)
.class public Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;
.super Ljava/lang/Object;
.source "TypeCheckingProcedure.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 10

    const/16 v0, 0xa

    const/4 v1, 0x7

    if-eq p0, v1, :cond_a

    if-eq p0, v0, :cond_a

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_c

    :cond_a
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_c
    const/4 v3, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const/4 v4, 0x3

    goto :goto_14

    :cond_13
    const/4 v4, 0x2

    :goto_14
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_aa

    :pswitch_1c
    const-string v7, "subtype"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_21
    const-string v7, "supertypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_26
    const-string v7, "subtypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_2b
    const-string v7, "typeArgumentVariance"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_30
    const-string v7, "typeParameterVariance"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_35
    const-string v7, "typeArgument"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_3a
    const-string v7, "typeParameter"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_3f
    const-string v7, "type2"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_44
    const-string v7, "type1"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_49
    aput-object v5, v4, v6

    goto :goto_5f

    :pswitch_4c
    const-string v7, "argument"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_51
    const-string v7, "parameter"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_56
    const-string v7, "typeCheckingProcedureCallbacks"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_5b
    const-string v7, "supertype"

    aput-object v7, v4, v6

    :goto_5f
    const-string v6, "getInType"

    const-string v7, "getOutType"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_6e

    if-eq p0, v0, :cond_6b

    aput-object v5, v4, v8

    goto :goto_70

    :cond_6b
    aput-object v6, v4, v8

    goto :goto_70

    :cond_6e
    aput-object v7, v4, v8

    :goto_70
    packed-switch p0, :pswitch_data_dc

    const-string v5, "findCorrespondingSupertype"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_78
    const-string v5, "capture"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_7d
    const-string v5, "checkSubtypeForTheSameConstructor"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_82
    const-string v5, "isSubtypeOf"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_87
    const-string v5, "getEffectiveProjectionKind"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_8c
    const-string v5, "equalTypes"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_91
    aput-object v6, v4, v3

    goto :goto_96

    :pswitch_94
    aput-object v7, v4, v3

    :goto_96
    :pswitch_96
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_a4

    if-eq p0, v0, :cond_a4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a9

    :cond_a4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_a9
    throw p0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_1c
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_49
        :pswitch_51
        :pswitch_4c
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_1c
        :pswitch_5b
        :pswitch_1c
        :pswitch_5b
        :pswitch_26
        :pswitch_21
        :pswitch_51
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x5
        :pswitch_94
        :pswitch_94
        :pswitch_96
        :pswitch_91
        :pswitch_91
        :pswitch_96
        :pswitch_8c
        :pswitch_8c
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_82
        :pswitch_82
        :pswitch_7d
        :pswitch_7d
        :pswitch_78
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    .line 36
    :cond_c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl;-><init>()V

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedureCallbacks;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method

.method public static findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedureCallbacks;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p2, :cond_12

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    .line 43
    :cond_12
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedureCallbacks;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method
