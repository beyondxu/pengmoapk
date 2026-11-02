###### Class kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor (kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor)
.class public Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
.source "JavaPropertyDescriptor.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;


# instance fields
.field private inType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final isStaticFinal:Z

.field private final singleUserData:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "*>;*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 8

    const/16 v0, 0x15

    if-eq p0, v0, :cond_7

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_9

    :cond_7
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_9
    const/4 v2, 0x2

    if-eq p0, v0, :cond_e

    const/4 v3, 0x3

    goto :goto_f

    :cond_e
    const/4 v3, 0x2

    :goto_f
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_94

    :pswitch_17
    const-string v6, "containingDeclaration"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_1c
    const-string v6, "inType"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_21
    aput-object v4, v3, v5

    goto :goto_5f

    :pswitch_24
    const-string v6, "enhancedReturnType"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_29
    const-string v6, "enhancedValueParameterTypes"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_2e
    const-string v6, "newName"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_33
    const-string v6, "newVisibility"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_38
    const-string v6, "newModality"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_3d
    const-string v6, "newOwner"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_42
    const-string v6, "kind"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_47
    const-string v6, "source"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_4c
    const-string v6, "name"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_51
    const-string v6, "visibility"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_56
    const-string v6, "modality"

    aput-object v6, v3, v5

    goto :goto_5f

    :pswitch_5b
    const-string v6, "annotations"

    aput-object v6, v3, v5

    :goto_5f
    const-string v5, "enhance"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_67

    aput-object v4, v3, v6

    goto :goto_69

    :cond_67
    aput-object v5, v3, v6

    :goto_69
    packed-switch p0, :pswitch_data_c4

    const-string v4, "<init>"

    aput-object v4, v3, v2

    goto :goto_82

    :pswitch_71
    const-string v4, "setInType"

    aput-object v4, v3, v2

    goto :goto_82

    :pswitch_76
    aput-object v5, v3, v2

    goto :goto_82

    :pswitch_79
    const-string v4, "createSubstitutedCopy"

    aput-object v4, v3, v2

    goto :goto_82

    :pswitch_7e
    const-string v4, "create"

    aput-object v4, v3, v2

    :goto_82
    :pswitch_82
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_8e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :cond_8e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_93
    throw p0

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_17
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_42
        :pswitch_2e
        :pswitch_47
        :pswitch_29
        :pswitch_24
        :pswitch_21
        :pswitch_1c
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x7
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_76
        :pswitch_76
        :pswitch_82
        :pswitch_71
    .end packed-switch
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;",
            "Z",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;",
            "Z",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "*>;*>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p4, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_18
    if-nez p6, :cond_1e

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_1e
    if-nez p7, :cond_24

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_24
    if-nez p9, :cond_2a

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_2a
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v2, p8

    move-object/from16 v8, p9

    .line 56
    invoke-direct/range {v0 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;ZZZZZZ)V

    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->inType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move/from16 v1, p10

    .line 59
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->isStaticFinal:Z

    move-object/from16 v1, p11

    .line 60
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->singleUserData:Lkotlin/Pair;

    return-void
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Z)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;
    .registers 21

    if-nez p0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_d

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_d
    if-nez p2, :cond_14

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_14
    if-nez p3, :cond_1b

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_1b
    if-nez p5, :cond_22

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_22
    if-nez p6, :cond_29

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    .line 74
    :cond_29
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V

    return-object v1
.end method


# virtual methods
.method protected createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .registers 21

    if-nez p1, :cond_7

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p3, :cond_15

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_15
    if-nez p5, :cond_1c

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_1c
    if-nez p6, :cond_23

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_23
    if-nez p7, :cond_2a

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    .line 90
    :cond_2a
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    .line 91
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->isVar()Z

    move-result v6

    iget-boolean v11, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->isStaticFinal:Z

    iget-object v12, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->singleUserData:Lkotlin/Pair;

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V

    return-object v1
.end method

.method public enhance(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/Pair;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "*>;*>;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-nez p2, :cond_d

    const/16 v3, 0x13

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    :cond_d
    if-nez v2, :cond_14

    const/16 v3, 0x14

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    .line 109
    :cond_14
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1d

    move-object v13, v4

    goto :goto_22

    :cond_1d
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v3

    move-object v13, v3

    .line 110
    :goto_22
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    .line 111
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v6

    .line 112
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    .line 113
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v8

    .line 114
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v9

    .line 115
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->isVar()Z

    move-result v10

    .line 116
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v11

    .line 117
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-result-object v12

    .line 119
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v14

    move-object v5, v15

    iget-boolean v15, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->isStaticFinal:Z

    move-object/from16 v16, p4

    invoke-direct/range {v5 .. v16}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/Pair;)V

    move-object v15, v5

    .line 124
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 126
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 127
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v16

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v17

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v18

    .line 128
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->isDefault()Z

    move-result v19

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->isExternal()Z

    move-result v20

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->isInline()Z

    move-result v21

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v22

    if-nez v13, :cond_76

    move-object/from16 v23, v4

    goto :goto_7c

    .line 129
    :cond_76
    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;

    move-result-object v5

    move-object/from16 v23, v5

    .line 130
    :goto_7c
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-result-object v24

    invoke-direct/range {v14 .. v24}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 132
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    invoke-virtual {v14, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->setInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)V

    .line 133
    invoke-virtual {v14, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    move-object v3, v14

    goto :goto_90

    :cond_8f
    move-object v3, v4

    .line 137
    :goto_90
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    move-result-object v5

    if-eqz v5, :cond_dc

    .line 139
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 140
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v16

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v17

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v18

    .line 141
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->isDefault()Z

    move-result v19

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->isExternal()Z

    move-result v20

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->isInline()Z

    move-result v21

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v22

    if-nez v13, :cond_b9

    move-object/from16 v23, v4

    goto :goto_bf

    .line 142
    :cond_b9
    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;

    move-result-object v6

    move-object/from16 v23, v6

    .line 143
    :goto_bf
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    move-result-object v24

    invoke-direct/range {v14 .. v24}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 145
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v6

    invoke-virtual {v14, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->setInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)V

    .line 146
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    invoke-virtual {v14, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;)V

    goto :goto_dd

    :cond_dc
    move-object v14, v4

    .line 149
    :goto_dd
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getBackingField()Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    move-result-object v5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getDelegateField()Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;

    move-result-object v6

    invoke-virtual {v15, v3, v14, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;)V

    .line 150
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->isSetterProjectedOut()Z

    move-result v3

    invoke-virtual {v15, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->setSetterProjectedOut(Z)V

    .line 151
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->compileTimeInitializerFactory:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_fa

    .line 152
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->compileTimeInitializer:Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->compileTimeInitializerFactory:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v3, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue;Lkotlin/jvm/functions/Function0;)V

    .line 155
    :cond_fa
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v15, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->setOverriddenDescriptors(Ljava/util/Collection;)V

    if-nez v1, :cond_104

    goto :goto_10e

    .line 157
    :cond_104
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;

    .line 159
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->getEMPTY()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    .line 158
    invoke-static {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v4

    :goto_10e
    move-object v5, v4

    .line 164
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    .line 165
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v4

    .line 167
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v15

    .line 162
    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Ljava/util/List;)V

    return-object v15
.end method

.method public getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->singleUserData:Lkotlin/Pair;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 195
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->singleUserData:Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasSynthesizedParameterNames()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isConst()Z
    .registers 3

    .line 173
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 174
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->isStaticFinal:Z

    if-eqz v1, :cond_1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstUtil;->canBeUsedForConstVal(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 175
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->hasEnhancedNullability(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isString(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public setInType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->$$$reportNull$$$0(I)V

    .line 180
    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->inType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method
