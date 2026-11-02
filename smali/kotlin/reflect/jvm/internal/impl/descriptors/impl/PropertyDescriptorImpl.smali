###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl (kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl;
.source "PropertyDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    }
.end annotation


# instance fields
.field private backingField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

.field private contextReceiverParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private delegateField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

.field private dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

.field private extensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

.field private getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

.field private final isActual:Z

.field private final isConst:Z

.field private final isDelegated:Z

.field private final isExpect:Z

.field private final isExternal:Z

.field private final kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field private final lateInit:Z

.field private final modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private final original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

.field private overriddenProperties:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

.field private setterProjectedOut:Z

.field private typeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 12

    const/16 v0, 0x2a

    const/16 v1, 0x29

    const/16 v2, 0x27

    const/16 v3, 0x26

    const/16 v4, 0x1c

    if-eq p0, v4, :cond_1a

    if-eq p0, v3, :cond_1a

    if-eq p0, v2, :cond_1a

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_1a

    packed-switch p0, :pswitch_data_136

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_1c

    :cond_1a
    :pswitch_1a
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_1c
    const/4 v6, 0x2

    if-eq p0, v4, :cond_2c

    if-eq p0, v3, :cond_2c

    if-eq p0, v2, :cond_2c

    if-eq p0, v1, :cond_2c

    if-eq p0, v0, :cond_2c

    packed-switch p0, :pswitch_data_146

    const/4 v7, 0x3

    goto :goto_2d

    :cond_2c
    :pswitch_2c
    const/4 v7, 0x2

    :goto_2d
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_156

    :pswitch_35
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto/16 :goto_9d

    :pswitch_3b
    const-string v10, "overriddenDescriptors"

    aput-object v10, v7, v9

    goto/16 :goto_9d

    :pswitch_41
    const-string v10, "newName"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_46
    const-string v10, "newVisibility"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_4b
    const-string v10, "newModality"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_50
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_55
    const-string v10, "accessorDescriptor"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_5a
    const-string v10, "substitutor"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_5f
    const-string v10, "copyConfiguration"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_64
    const-string v10, "originalSubstitutor"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_69
    aput-object v8, v7, v9

    goto :goto_9d

    :pswitch_6c
    const-string v10, "contextReceiverParameters"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_71
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_76
    const-string v10, "outType"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_7b
    const-string v10, "inType"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_80
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_85
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_8a
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_8f
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_94
    const-string v10, "modality"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_99
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_9d
    const/4 v9, 0x1

    if-eq p0, v4, :cond_e0

    if-eq p0, v3, :cond_db

    if-eq p0, v2, :cond_d6

    if-eq p0, v1, :cond_d1

    if-eq p0, v0, :cond_cc

    packed-switch p0, :pswitch_data_1ae

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_ae
    const-string v8, "getAccessors"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_b3
    const-string v8, "getVisibility"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_b8
    const-string v8, "getModality"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_bd
    const-string v8, "getReturnType"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_c2
    const-string v8, "getContextReceiverParameters"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_c7
    const-string v8, "getTypeParameters"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_cc
    const-string v8, "copy"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_d1
    const-string v8, "getOverriddenDescriptors"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_d6
    const-string v8, "getKind"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_db
    const-string v8, "getOriginal"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_e0
    const-string v8, "getSourceToUseForCopy"

    aput-object v8, v7, v9

    :goto_e4
    packed-switch p0, :pswitch_data_1be

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_ec
    const-string v8, "setOverriddenDescriptors"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_f1
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_f6
    const-string v8, "getSubstitutedInitialSignatureDescriptor"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_fb
    const-string v8, "doSubstitute"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_100
    const-string v8, "substitute"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_105
    const-string v8, "setVisibility"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_10a
    const-string v8, "setType"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_10f
    const-string v8, "setInType"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_114
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_118
    :pswitch_118
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_12f

    if-eq p0, v3, :cond_12f

    if-eq p0, v2, :cond_12f

    if-eq p0, v1, :cond_12f

    if-eq p0, v0, :cond_12f

    packed-switch p0, :pswitch_data_20a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_134

    :cond_12f
    :pswitch_12f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_134
    throw p0

    nop

    :pswitch_data_136
    .packed-switch 0x15
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x15
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_35
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_8f
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_64
        :pswitch_69
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_85
        :pswitch_41
        :pswitch_80
        :pswitch_69
        :pswitch_69
        :pswitch_3b
        :pswitch_69
        :pswitch_69
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x15
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x7
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_10f
        :pswitch_10a
        :pswitch_10a
        :pswitch_10a
        :pswitch_10a
        :pswitch_10a
        :pswitch_105
        :pswitch_118
        :pswitch_118
        :pswitch_118
        :pswitch_118
        :pswitch_118
        :pswitch_118
        :pswitch_100
        :pswitch_118
        :pswitch_fb
        :pswitch_f6
        :pswitch_f6
        :pswitch_f1
        :pswitch_f1
        :pswitch_f1
        :pswitch_f1
        :pswitch_f1
        :pswitch_f1
        :pswitch_118
        :pswitch_118
        :pswitch_ec
        :pswitch_118
        :pswitch_118
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x15
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
    .end packed-switch
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;ZZZZZZ)V
    .registers 24

    move-object/from16 v7, p8

    if-nez p1, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_8
    if-nez p3, :cond_e

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p4, :cond_14

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_14
    if-nez p5, :cond_1a

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_1a
    if-nez p7, :cond_20

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_20
    if-nez v7, :cond_26

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_26
    if-nez p9, :cond_2c

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_2c
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p6

    move-object v3, p7

    move-object/from16 v6, p9

    .line 79
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZLkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->overriddenProperties:Ljava/util/Collection;

    .line 52
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->contextReceiverParameters:Ljava/util/List;

    .line 80
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 81
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    if-nez p2, :cond_46

    move-object v1, p0

    goto :goto_47

    :cond_46
    move-object v1, p2

    .line 82
    :goto_47
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 83
    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move/from16 v1, p10

    .line 84
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->lateInit:Z

    move/from16 v1, p11

    .line 85
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isConst:Z

    move/from16 v1, p12

    .line 86
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isExpect:Z

    move/from16 v1, p13

    .line 87
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isActual:Z

    move/from16 v1, p14

    .line 88
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isExternal:Z

    move/from16 v1, p15

    .line 89
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isDelegated:Z

    return-void
.end method

.method static synthetic access$000(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
    .registers 1

    .line 39
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    return-object p0
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;ZZZZZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .registers 31

    if-nez p0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_d

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_d
    if-nez p2, :cond_14

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_14
    if-nez p3, :cond_1b

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_1b
    if-nez p5, :cond_22

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_22
    if-nez p6, :cond_29

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_29
    if-nez p7, :cond_30

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 109
    :cond_30
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-direct/range {v1 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;ZZZZZZ)V

    return-object v1
.end method

.method private getSourceToUseForCopy(ZLkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;
    .registers 3

    if-eqz p1, :cond_e

    if-eqz p2, :cond_5

    goto :goto_9

    .line 415
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-result-object p1

    goto :goto_10

    :cond_e
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    :goto_10
    if-nez p1, :cond_17

    const/16 p2, 0x1c

    .line 414
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_17
    return-object p1
.end method

.method private static getSubstitutedInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x1f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 582
    :cond_e
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;->getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 583
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;->getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static normalizeVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
    .registers 3

    .line 541
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;->normalize()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 542
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INVISIBLE_FAKE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    :cond_10
    return-object p0
.end method

.method private static substituteContextParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
    .registers 7

    .line 566
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 568
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;

    .line 572
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ImplicitContextReceiver;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ImplicitContextReceiver;->getCustomLabelName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    .line 573
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    move-result-object v3

    invoke-direct {v1, p1, p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;)V

    .line 574
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    return-object v0
.end method

.method private static substituteParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
    .registers 6

    .line 552
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 554
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver;

    .line 556
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;)V

    .line 557
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 605
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;->visitPropertyDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 6

    .line 38
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .registers 7

    .line 658
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object v0

    .line 659
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setOriginal(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    .line 661
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    .line 662
    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    .line 663
    invoke-virtual {p1, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setKind(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    .line 664
    invoke-virtual {p1, p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setCopyOverrides(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    .line 665
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object p1

    if-nez p1, :cond_28

    const/16 p2, 0x2a

    .line 658
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_28
    return-object p1
.end method

.method protected createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .registers 25

    if-nez p1, :cond_7

    const/16 v0, 0x20

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x21

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p3, :cond_15

    const/16 v0, 0x22

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_15
    if-nez p5, :cond_1c

    const/16 v0, 0x23

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_1c
    if-nez p6, :cond_23

    const/16 v0, 0x24

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_23
    if-nez p7, :cond_2a

    const/16 v0, 0x25

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 597
    :cond_2a
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    .line 598
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isVar()Z

    move-result v7

    .line 599
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isLateInit()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isConst()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isExpect()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isActual()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isExternal()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isDelegated()Z

    move-result v16

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move-object/from16 v9, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;ZZZZZZ)V

    return-object v1
.end method

.method protected doSubstitute(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .registers 22

    move-object/from16 v0, p0

    if-nez p1, :cond_9

    const/16 v1, 0x1d

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 422
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$100(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$200(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$300(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v3

    .line 423
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$400(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$500(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$600(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    .line 424
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$700(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Z

    move-result v7

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$400(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getSourceToUseForCopy(ZLkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-result-object v7

    .line 421
    invoke-virtual/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    move-result-object v9

    .line 427
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$800(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3c

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    goto :goto_40

    :cond_3c
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$800(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Ljava/util/List;

    move-result-object v1

    .line 428
    :goto_40
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 430
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$900(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v2

    .line 429
    invoke-static {v1, v2, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor;->substituteTypeParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v5

    .line 433
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$1000(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    .line 434
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v5, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const/16 v19, 0x0

    if-nez v2, :cond_60

    return-object v19

    .line 439
    :cond_60
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v5, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 442
    invoke-virtual {v9, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setInType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 446
    :cond_6b
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$1100(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 448
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v1

    if-nez v1, :cond_78

    return-object v19

    :cond_78
    move-object v11, v1

    goto :goto_7c

    :cond_7a
    move-object/from16 v11, v19

    .line 456
    :goto_7c
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->extensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    if-eqz v1, :cond_86

    .line 457
    invoke-static {v5, v9, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->substituteParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v1

    move-object v12, v1

    goto :goto_88

    :cond_86
    move-object/from16 v12, v19

    .line 462
    :goto_88
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 463
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->contextReceiverParameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_93
    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    .line 464
    invoke-static {v5, v9, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->substituteContextParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 467
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_a9
    move-object v8, v9

    move-object v9, v2

    .line 471
    invoke-virtual/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Ljava/util/List;)V

    move-object v9, v8

    .line 474
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    if-nez v1, :cond_b6

    move-object/from16 v1, v19

    goto :goto_f0

    :cond_b6
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 475
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$200(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v11

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$500(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->normalizeVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v12

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 476
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->isDefault()Z

    move-result v13

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->isExternal()Z

    move-result v14

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->isInline()Z

    move-result v15

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$500(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v16

    .line 477
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->getOriginalGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;

    move-result-object v17

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    move-object v1, v8

    :goto_f0
    if-eqz v1, :cond_10f

    .line 481
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 482
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    invoke-static {v5, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getSubstitutedInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->setInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)V

    if-eqz v2, :cond_10a

    .line 483
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v5, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    goto :goto_10c

    :cond_10a
    move-object/from16 v2, v19

    :goto_10c
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 485
    :cond_10f
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    if-nez v2, :cond_116

    move-object/from16 v3, v19

    goto :goto_150

    :cond_116
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    .line 486
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$200(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v11

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$500(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->normalizeVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v12

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    .line 487
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->isDefault()Z

    move-result v13

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->isExternal()Z

    move-result v14

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->isInline()Z

    move-result v15

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$500(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v16

    .line 488
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->getOriginalSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    move-result-object v17

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    move-object v3, v8

    :goto_150
    if-eqz v3, :cond_1a9

    .line 492
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    .line 493
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 492
    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getSubstitutedValueParameters(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_18a

    .line 502
    invoke-virtual {v9, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setSetterProjectedOut(Z)V

    .line 506
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$100(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    .line 507
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    .line 504
    invoke-static {v3, v2, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->createSetterParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-result-object v2

    .line 503
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 511
    :cond_18a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v6, :cond_1a3

    .line 514
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    invoke-static {v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getSubstitutedInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->setInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)V

    .line 515
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;)V

    goto :goto_1a9

    .line 512
    :cond_1a3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 518
    :cond_1a9
    :goto_1a9
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->backingField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    if-nez v2, :cond_1b0

    move-object/from16 v2, v19

    goto :goto_1bb

    :cond_1b0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->backingField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    .line 521
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v2, v4, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    :goto_1bb
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->delegateField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    if-nez v4, :cond_1c2

    move-object/from16 v4, v19

    goto :goto_1cd

    :cond_1c2
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->delegateField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    .line 522
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v6

    invoke-direct {v4, v6, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 518
    :goto_1cd
    invoke-virtual {v9, v1, v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;)V

    .line 525
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->access$1200(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    .line 526
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->create()Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    move-result-object v1

    .line 527
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 528
    invoke-interface {v3, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e2

    .line 530
    :cond_1f6
    invoke-virtual {v9, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setOverriddenDescriptors(Ljava/util/Collection;)V

    .line 533
    :cond_1f9
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isConst()Z

    move-result v1

    if-eqz v1, :cond_20a

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->compileTimeInitializerFactory:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_20a

    .line 534
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->compileTimeInitializer:Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->compileTimeInitializerFactory:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue;Lkotlin/jvm/functions/Function0;)V

    :cond_20a
    return-object v9
.end method

.method public getAccessors()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    if-eqz v1, :cond_d

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_d
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    if-eqz v1, :cond_14

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object v0
.end method

.method public getBackingField()Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;
    .registers 2

    .line 633
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->backingField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    return-object v0
.end method

.method public getContextReceiverParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->contextReceiverParameters:Ljava/util/List;

    if-nez v0, :cond_9

    const/16 v1, 0x16

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getDelegateField()Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;
    .registers 2

    .line 639
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->delegateField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    return-object v0
.end method

.method public getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
    .registers 2

    .line 208
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    return-object v0
.end method

.method public getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
    .registers 2

    .line 202
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->extensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;
    .registers 2

    .line 232
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    return-object v0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .registers 3

    .line 617
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-nez v0, :cond_9

    const/16 v1, 0x27

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 3

    .line 220
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez v0, :cond_9

    const/16 v1, 0x18

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithSource;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .registers 3

    .line 611
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-ne v0, p0, :cond_6

    move-object v0, p0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_11

    const/16 v1, 0x26

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_11
    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOverriddenDescriptors()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->overriddenProperties:Ljava/util/Collection;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_7
    if-nez v0, :cond_e

    const/16 v1, 0x29

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    return-object v0
.end method

.method public getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    .line 214
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0x17

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_b
    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;
    .registers 2

    .line 238
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->typeParameters:Ljava/util/List;

    if-eqz v0, :cond_c

    if-nez v0, :cond_b

    const/16 v1, 0x15

    .line 185
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_b
    return-object v0

    .line 183
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeParameters == null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
    .registers 3

    .line 226
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    if-nez v0, :cond_9

    const/16 v1, 0x19

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;)V
    .registers 4

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, p2, v0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;)V

    return-void
.end method

.method public initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;)V
    .registers 5

    .line 163
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 164
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    .line 165
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->backingField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    .line 166
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->delegateField:Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    return-void
.end method

.method public isActual()Z
    .registers 2

    .line 627
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isActual:Z

    return v0
.end method

.method public isConst()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isConst:Z

    return v0
.end method

.method public isDelegated()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isDelegated:Z

    return v0
.end method

.method public isExpect()Z
    .registers 2

    .line 622
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isExpect:Z

    return v0
.end method

.method public isExternal()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isExternal:Z

    return v0
.end method

.method public isLateInit()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->lateInit:Z

    return v0
.end method

.method public isSetterProjectedOut()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setterProjectedOut:Z

    return v0
.end method

.method public newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 2

    .line 409
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V

    return-object v0
.end method

.method public setInType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 2

    if-nez p1, :cond_7

    const/16 p1, 0xe

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    return-void
.end method

.method public setOverriddenDescriptors(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x28

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 645
    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->overriddenProperties:Ljava/util/Collection;

    return-void
.end method

.method public setSetterProjectedOut(Z)V
    .registers 2

    .line 170
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setterProjectedOut:Z

    return-void
.end method

.method public setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p5, :cond_15

    const/16 v0, 0x13

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 141
    :cond_15
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setOutType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->typeParameters:Ljava/util/List;

    .line 145
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->extensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    .line 146
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    .line 147
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->contextReceiverParameters:Ljava/util/List;

    return-void
.end method

.method public setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 174
    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    return-void
.end method

.method public bridge synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 281
    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p0

    .line 285
    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setSubstitution(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    .line 287
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->setOriginal(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl.CopyConfiguration (kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl$CopyConfiguration)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
.super Ljava/lang/Object;
.source "PropertyDescriptorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyConfiguration"
.end annotation


# instance fields
.field private copyOverrides:Z

.field private dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

.field private kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field private modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private name:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field private newTypeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

.field private owner:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

.field private preserveSourceElement:Z

.field private returnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

.field private visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 25

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_30

    if-eq v0, v11, :cond_30

    if-eq v0, v10, :cond_30

    if-eq v0, v9, :cond_30

    if-eq v0, v8, :cond_30

    if-eq v0, v7, :cond_30

    if-eq v0, v6, :cond_30

    if-eq v0, v5, :cond_30

    if-eq v0, v4, :cond_30

    if-eq v0, v3, :cond_30

    if-eq v0, v2, :cond_30

    if-eq v0, v1, :cond_30

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_32

    :cond_30
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_32
    if-eq v0, v12, :cond_4c

    if-eq v0, v11, :cond_4c

    if-eq v0, v10, :cond_4c

    if-eq v0, v9, :cond_4c

    if-eq v0, v8, :cond_4c

    if-eq v0, v7, :cond_4c

    if-eq v0, v6, :cond_4c

    if-eq v0, v5, :cond_4c

    if-eq v0, v4, :cond_4c

    if-eq v0, v3, :cond_4c

    if-eq v0, v2, :cond_4c

    if-eq v0, v1, :cond_4c

    const/4 v14, 0x3

    goto :goto_4d

    :cond_4c
    const/4 v14, 0x2

    :goto_4d
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_118

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_5b
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_60
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_65
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_6a
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_6f
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_74
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_79
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_7e
    aput-object v15, v14, v16

    :goto_80
    const-string v16, "setName"

    const-string v17, "setSubstitution"

    const-string v18, "setTypeParameters"

    const-string v19, "setKind"

    const-string v20, "setVisibility"

    const-string v21, "setModality"

    const-string v22, "setReturnType"

    const-string v23, "setOwner"

    if-eq v0, v12, :cond_d4

    if-eq v0, v11, :cond_cf

    if-eq v0, v10, :cond_ca

    if-eq v0, v9, :cond_c7

    if-eq v0, v8, :cond_c4

    if-eq v0, v7, :cond_c1

    if-eq v0, v6, :cond_be

    if-eq v0, v5, :cond_bb

    if-eq v0, v4, :cond_b8

    if-eq v0, v3, :cond_b3

    if-eq v0, v2, :cond_b0

    if-eq v0, v1, :cond_ab

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_ab
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_b0
    aput-object v17, v14, v12

    goto :goto_d6

    :cond_b3
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_b8
    aput-object v18, v14, v12

    goto :goto_d6

    :cond_bb
    aput-object v16, v14, v12

    goto :goto_d6

    :cond_be
    aput-object v19, v14, v12

    goto :goto_d6

    :cond_c1
    aput-object v20, v14, v12

    goto :goto_d6

    :cond_c4
    aput-object v21, v14, v12

    goto :goto_d6

    :cond_c7
    aput-object v22, v14, v12

    goto :goto_d6

    :cond_ca
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_cf
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_d4
    aput-object v23, v14, v12

    :goto_d6
    packed-switch v0, :pswitch_data_142

    aput-object v23, v14, v11

    goto :goto_f0

    :pswitch_dc
    aput-object v16, v14, v11

    goto :goto_f0

    :pswitch_df
    aput-object v17, v14, v11

    goto :goto_f0

    :pswitch_e2
    aput-object v18, v14, v11

    goto :goto_f0

    :pswitch_e5
    aput-object v19, v14, v11

    goto :goto_f0

    :pswitch_e8
    aput-object v20, v14, v11

    goto :goto_f0

    :pswitch_eb
    aput-object v21, v14, v11

    goto :goto_f0

    :pswitch_ee
    aput-object v22, v14, v11

    :goto_f0
    :pswitch_f0
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_112

    if-eq v0, v11, :cond_112

    if-eq v0, v10, :cond_112

    if-eq v0, v9, :cond_112

    if-eq v0, v8, :cond_112

    if-eq v0, v7, :cond_112

    if-eq v0, v6, :cond_112

    if-eq v0, v5, :cond_112

    if-eq v0, v4, :cond_112

    if-eq v0, v3, :cond_112

    if-eq v0, v2, :cond_112

    if-eq v0, v1, :cond_112

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_117

    :cond_112
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_117
    throw v0

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_79
        :pswitch_7e
        :pswitch_74
        :pswitch_7e
        :pswitch_6f
        :pswitch_7e
        :pswitch_6a
        :pswitch_7e
        :pswitch_65
        :pswitch_7e
        :pswitch_7e
        :pswitch_60
        :pswitch_7e
        :pswitch_7e
        :pswitch_5b
        :pswitch_7e
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_ee
        :pswitch_f0
        :pswitch_eb
        :pswitch_f0
        :pswitch_e8
        :pswitch_f0
        :pswitch_e5
        :pswitch_f0
        :pswitch_e2
        :pswitch_f0
        :pswitch_f0
        :pswitch_df
        :pswitch_f0
        :pswitch_f0
        :pswitch_dc
        :pswitch_f0
    .end packed-switch
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V
    .registers 4

    .line 291
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->owner:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 293
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 294
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    const/4 v1, 0x0

    .line 296
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->preserveSourceElement:Z

    .line 297
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 298
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->EMPTY:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    const/4 v1, 0x1

    .line 299
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->copyOverrides:Z

    .line 300
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->access$000(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    .line 301
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->newTypeParameters:Ljava/util/List;

    .line 302
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 303
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->returnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method

.method static synthetic access$100(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->owner:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    return-object p0
.end method

.method static synthetic access$1000(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->returnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p0
.end method

.method static synthetic access$1100(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    return-object p0
.end method

.method static synthetic access$1200(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Z
    .registers 1

    .line 291
    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->copyOverrides:Z

    return p0
.end method

.method static synthetic access$200(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method static synthetic access$300(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    return-object p0
.end method

.method static synthetic access$400(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    return-object p0
.end method

.method static synthetic access$500(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

.method static synthetic access$600(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/name/Name;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object p0
.end method

.method static synthetic access$700(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Z
    .registers 1

    .line 291
    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->preserveSourceElement:Z

    return p0
.end method

.method static synthetic access$800(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Ljava/util/List;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->newTypeParameters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;
    .registers 1

    .line 291
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    return-object p0
.end method


# virtual methods
.method public build()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .registers 2

    .line 392
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->doSubstitute(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method getOriginalGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;
    .registers 2

    .line 396
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;

    move-result-object v0

    return-object v0
.end method

.method getOriginalSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;
    .registers 2

    .line 401
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 402
    :cond_6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setCopyOverrides(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 2

    .line 378
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->copyOverrides:Z

    return-object p0
.end method

.method public setKind(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 350
    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

.method public setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 336
    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method public setOriginal(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 2

    .line 315
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    return-object p0
.end method

.method public setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 308
    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->owner:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    return-object p0
.end method

.method public setSubstitution(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 371
    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    return-object p0
.end method

.method public setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 343
    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    return-object p0
.end method
