###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl (kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;
.source "TypeParameterDescriptorImpl.java"


# instance fields
.field private initialized:Z

.field private final reportCycleError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final upperBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 9

    const/16 v0, 0x1c

    const/4 v1, 0x5

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

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_8e

    :pswitch_1c
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_21
    const-string v7, "type"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_26
    const-string v7, "bound"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_2b
    const-string v7, "supertypeLoopsChecker"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_30
    const-string v7, "supertypeLoopsResolver"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_35
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_3a
    aput-object v5, v4, v6

    goto :goto_50

    :pswitch_3d
    const-string v7, "storageManager"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_42
    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_47
    const-string v7, "variance"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_4c
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_50
    const-string v6, "createWithDefaultBound"

    const/4 v7, 0x1

    if-eq p0, v1, :cond_5f

    if-eq p0, v0, :cond_5a

    aput-object v5, v4, v7

    goto :goto_61

    :cond_5a
    const-string v5, "resolveUpperBounds"

    aput-object v5, v4, v7

    goto :goto_61

    :cond_5f
    aput-object v6, v4, v7

    :goto_61
    packed-switch p0, :pswitch_data_ca

    aput-object v6, v4, v3

    goto :goto_7a

    :pswitch_67
    const-string v5, "reportSupertypeLoopError"

    aput-object v5, v4, v3

    goto :goto_7a

    :pswitch_6c
    const-string v5, "addUpperBound"

    aput-object v5, v4, v3

    goto :goto_7a

    :pswitch_71
    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_7a

    :pswitch_76
    const-string v5, "createForFurtherModification"

    aput-object v5, v4, v3

    :goto_7a
    :pswitch_7a
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_88

    if-eq p0, v0, :cond_88

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8d

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_8d
    throw p0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_3a
        :pswitch_1c
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_35
        :pswitch_3d
        :pswitch_1c
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_35
        :pswitch_30
        :pswitch_3d
        :pswitch_1c
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_35
        :pswitch_2b
        :pswitch_3d
        :pswitch_26
        :pswitch_21
        :pswitch_3a
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x5
        :pswitch_7a
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_7a
    .end packed-switch
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;",
            "Z",
            "Lkotlin/reflect/jvm/internal/impl/types/Variance;",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;",
            "Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x13

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p4, :cond_15

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_15
    if-nez p5, :cond_1c

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_1c
    if-nez p7, :cond_23

    const/16 v0, 0x17

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_23
    if-nez p9, :cond_2a

    const/16 v0, 0x18

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_2a
    if-nez p10, :cond_31

    const/16 v0, 0x19

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_31
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v5, p4

    move-object v4, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v1, p10

    .line 110
    invoke-direct/range {v0 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->upperBounds:Ljava/util/List;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->initialized:Z

    move-object/from16 v1, p8

    .line 111
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->reportCycleError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private checkInitialized()V
    .registers 4

    .line 115
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->initialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 116
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type parameter descriptor is not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->nameForAssertions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkUninitialized()V
    .registers 4

    .line 121
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->initialized:Z

    if-nez v0, :cond_5

    return-void

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type parameter descriptor is already initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->nameForAssertions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForFurtherModification(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;",
            "Z",
            "Lkotlin/reflect/jvm/internal/impl/types/Variance;",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;",
            "Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p3, :cond_15

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_15
    if-nez p4, :cond_1c

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_1c
    if-nez p6, :cond_23

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_23
    if-nez p8, :cond_2a

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_2a
    if-nez p9, :cond_31

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 89
    :cond_31
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    return-object v1
.end method

.method public static createForFurtherModification(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;
    .registers 19

    if-nez p0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_13

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_13
    if-nez p4, :cond_1a

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_1a
    if-nez p6, :cond_21

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_21
    if-nez p7, :cond_28

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_28
    const/4 v8, 0x0

    .line 71
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker$EMPTY;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker$EMPTY;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->createForFurtherModification(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    move-result-object p0

    return-object p0
.end method

.method public static createWithDefaultBound(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/storage/StorageManager;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .registers 16

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p4, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_18
    if-nez p6, :cond_1e

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 53
    :cond_1e
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->createForFurtherModification(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    move-result-object p0

    .line 56
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getDefaultBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->addUpperBound(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 57
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->setInitialized()V

    if-nez p0, :cond_3f

    const/4 p1, 0x5

    .line 58
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_3f
    return-object p0
.end method

.method private doAddUpperBound(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 3

    .line 145
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 146
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->upperBounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private nameForAssertions()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addUpperBound(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 140
    :cond_7
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->checkUninitialized()V

    .line 141
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->doAddUpperBound(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->initialized:Z

    return v0
.end method

.method protected reportSupertypeLoopError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 159
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->reportCycleError:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_c

    return-void

    .line 160
    :cond_c
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected resolveUpperBounds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->checkInitialized()V

    .line 167
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->upperBounds:Ljava/util/List;

    if-nez v0, :cond_c

    const/16 v1, 0x1c

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_c
    return-object v0
.end method

.method public setInitialized()V
    .registers 2

    .line 131
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->checkUninitialized()V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->initialized:Z

    return-void
.end method
