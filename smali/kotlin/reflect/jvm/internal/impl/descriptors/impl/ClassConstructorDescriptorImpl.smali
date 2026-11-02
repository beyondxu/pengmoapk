###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl (kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
.source "ClassConstructorDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final isPrimary:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 9

    const/16 v0, 0x1b

    const/16 v1, 0x15

    if-eq p0, v1, :cond_e

    if-eq p0, v0, :cond_e

    packed-switch p0, :pswitch_data_bc

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_10

    :cond_e
    :pswitch_e
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_10
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_1a

    packed-switch p0, :pswitch_data_ca

    const/4 v4, 0x3

    goto :goto_1b

    :cond_1a
    :pswitch_1a
    const/4 v4, 0x2

    :goto_1b
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_d8

    :pswitch_23
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_28
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_2d
    const-string v7, "overriddenDescriptors"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_32
    const-string v7, "originalSubstitutor"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_37
    aput-object v5, v4, v6

    goto :goto_57

    :pswitch_3a
    const-string v7, "typeParameterDescriptors"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_3f
    const-string v7, "visibility"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_44
    const-string v7, "unsubstitutedValueParameters"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_49
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_4e
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_53
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_57
    const/4 v6, 0x1

    if-eq p0, v1, :cond_7b

    if-eq p0, v0, :cond_76

    packed-switch p0, :pswitch_data_112

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_62
    const-string v5, "getOriginal"

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_67
    const-string v5, "getConstructedClass"

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_6c
    const-string v5, "getContainingDeclaration"

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_71
    const-string v5, "calculateContextReceiverParameters"

    aput-object v5, v4, v6

    goto :goto_7f

    :cond_76
    const-string v5, "copy"

    aput-object v5, v4, v6

    goto :goto_7f

    :cond_7b
    const-string v5, "getOverriddenDescriptors"

    aput-object v5, v4, v6

    :goto_7f
    packed-switch p0, :pswitch_data_120

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_87
    const-string v5, "createSubstitutedCopy"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_8c
    const-string v5, "setOverriddenDescriptors"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_91
    const-string v5, "substitute"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_96
    const-string v5, "initialize"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_9b
    const-string v5, "createSynthesized"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_a0
    const-string v5, "create"

    aput-object v5, v4, v3

    :goto_a4
    :pswitch_a4
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_b5

    if-eq p0, v0, :cond_b5

    packed-switch p0, :pswitch_data_154

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ba

    :cond_b5
    :pswitch_b5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_ba
    throw p0

    nop

    :pswitch_data_bc
    .packed-switch 0xf
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0xf
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_23
        :pswitch_53
        :pswitch_49
        :pswitch_23
        :pswitch_53
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_44
        :pswitch_3f
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_32
        :pswitch_37
        :pswitch_2d
        :pswitch_28
        :pswitch_4e
        :pswitch_53
        :pswitch_49
        :pswitch_37
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0xf
        :pswitch_71
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x4
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_91
        :pswitch_a4
        :pswitch_8c
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_a4
    .end packed-switch

    :pswitch_data_154
    .packed-switch 0xf
        :pswitch_b5
        :pswitch_b5
        :pswitch_b5
        :pswitch_b5
        :pswitch_b5
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V
    .registers 15

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p5, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p6, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 43
    :cond_18
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->INIT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 44
    iput-boolean p4, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->isPrimary:Z

    return-void
.end method

.method private calculateContextReceiverParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getContextReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 104
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getContextReceivers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_19

    const/16 v1, 0xf

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_19
    return-object v0

    .line 106
    :cond_1a
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez v0, :cond_23

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_23
    return-object v0
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;
    .registers 12

    if-nez p0, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 54
    :cond_12
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    const/4 v3, 0x0

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    return-object v1
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

    .line 135
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;->visitConstructorDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public calculateDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
    .registers 3

    .line 90
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isInner()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 92
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    .line 93
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v1, :cond_19

    .line 94
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 6

    .line 31
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;
    .registers 6

    .line 190
    invoke-super/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    if-nez p1, :cond_d

    const/16 p2, 0x1b

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_d
    return-object p1
.end method

.method public bridge synthetic copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .registers 6

    .line 31
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->copy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;
    .registers 14

    if-nez p1, :cond_7

    const/16 p2, 0x17

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p3, :cond_e

    const/16 p2, 0x18

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p5, :cond_15

    const/16 p2, 0x19

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_15
    if-nez p6, :cond_1c

    const/16 p2, 0x1a

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 164
    :cond_1c
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-eq p3, p2, :cond_49

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne p3, p2, :cond_25

    goto :goto_49

    .line 165
    :cond_25
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "\nnewOwner: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nkind: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 171
    :cond_49
    :goto_49
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    iget-boolean v4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->isPrimary:Z

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-object v2, p0

    move-object v3, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    return-object v0
.end method

.method protected bridge synthetic createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .registers 7

    .line 31
    invoke-virtual/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    move-result-object p1

    return-object p1
.end method

.method public getConstructedClass()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .registers 3

    .line 118
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0x12

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_b
    return-object v0
.end method

.method public getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .registers 3

    .line 112
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v0, :cond_d

    const/16 v1, 0x11

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_d
    return-object v0
.end method

.method public bridge synthetic getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;
    .registers 3

    .line 124
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    if-nez v0, :cond_d

    const/16 v1, 0x13

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_d
    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithSource;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

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
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
            ">;"
        }
    .end annotation

    .line 146
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-nez v0, :cond_9

    const/16 v1, 0x15

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 84
    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    return-object p0
.end method

.method public initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p3, :cond_15

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 73
    :cond_15
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->calculateDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v3

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->calculateContextReceiverParameters()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v9, p2

    move-object v5, p3

    .line 72
    invoke-super/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    return-object v1
.end method

.method public isPrimary()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->isPrimary:Z

    return v0
.end method

.method public setOverriddenDescriptors(Ljava/util/Collection;)V
    .registers 2
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

    const/16 p1, 0x16

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_7
    return-void
.end method

.method public substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 130
    :cond_7
    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    return-object p1
.end method

.method public bridge synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object p1

    return-object p1
.end method
