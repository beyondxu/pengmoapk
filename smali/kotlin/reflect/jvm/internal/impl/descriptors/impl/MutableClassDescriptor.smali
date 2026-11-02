###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.MutableClassDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.impl.MutableClassDescriptor)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;
.source "MutableClassDescriptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final isInner:Z

.field private final kind:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

.field private modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

.field private final supertypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end field

.field private typeConstructor:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

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
    .registers 7

    packed-switch p0, :pswitch_data_b4

    :pswitch_3
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_d6

    :pswitch_c
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e
    const/4 v2, 0x2

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_f8

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_1c
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_21
    const-string v5, "typeParameters"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_26
    const-string v5, "supertype"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_2b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_30
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_35
    aput-object v3, v2, v4

    goto :goto_4b

    :pswitch_38
    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_3d
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_42
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_47
    const-string v5, "kind"

    aput-object v5, v2, v4

    :goto_4b
    const-string v4, "getUnsubstitutedMemberScope"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_122

    :pswitch_51
    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_54
    const-string v3, "getSealedSubclasses"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_59
    const-string v3, "getStaticScope"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_5e
    aput-object v4, v2, v5

    goto :goto_83

    :pswitch_61
    const-string v3, "getDeclaredTypeParameters"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_66
    const-string v3, "getConstructors"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_6b
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_70
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_75
    const-string v3, "getKind"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_7a
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_7f
    const-string v3, "getAnnotations"

    aput-object v3, v2, v5

    :goto_83
    packed-switch p0, :pswitch_data_144

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_8b
    aput-object v4, v2, v1

    goto :goto_a1

    :pswitch_8e
    const-string v3, "setTypeParameterDescriptors"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_93
    const-string v3, "addSupertype"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_98
    const-string v3, "setVisibility"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_9d
    const-string v3, "setModality"

    aput-object v3, v2, v1

    :goto_a1
    :pswitch_a1
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_166

    :pswitch_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b3

    :pswitch_ae
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_b3
    throw p0

    :pswitch_data_b4
    .packed-switch 0x5
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x5
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_35
        :pswitch_30
        :pswitch_35
        :pswitch_35
        :pswitch_2b
        :pswitch_35
        :pswitch_35
        :pswitch_26
        :pswitch_35
        :pswitch_21
        :pswitch_35
        :pswitch_1c
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x5
        :pswitch_7f
        :pswitch_51
        :pswitch_7a
        :pswitch_75
        :pswitch_51
        :pswitch_70
        :pswitch_6b
        :pswitch_51
        :pswitch_66
        :pswitch_51
        :pswitch_61
        :pswitch_51
        :pswitch_5e
        :pswitch_59
        :pswitch_54
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x5
        :pswitch_a1
        :pswitch_9d
        :pswitch_a1
        :pswitch_a1
        :pswitch_98
        :pswitch_a1
        :pswitch_a1
        :pswitch_93
        :pswitch_a1
        :pswitch_8e
        :pswitch_a1
        :pswitch_8b
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x5
        :pswitch_ae
        :pswitch_a8
        :pswitch_ae
        :pswitch_ae
        :pswitch_a8
        :pswitch_ae
        :pswitch_ae
        :pswitch_a8
        :pswitch_ae
        :pswitch_a8
        :pswitch_ae
        :pswitch_a8
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;ZZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V
    .registers 15

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p5, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p6, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_18
    if-nez p7, :cond_1e

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_1e
    move-object v1, p0

    move-object v3, p1

    move v6, p4

    move-object v4, p5

    move-object v5, p6

    move-object v2, p7

    .line 40
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Z)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->supertypes:Ljava/util/Collection;

    .line 41
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 44
    iput-object p2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 45
    iput-boolean p3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->isInner:Z

    return-void
.end method


# virtual methods
.method public createTypeConstructor()V
    .registers 5

    .line 168
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->typeParameters:Ljava/util/List;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->supertypes:Ljava/util/Collection;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/List;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 169
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->getConstructors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 170
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_15

    :cond_2b
    return-void
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 3

    .line 57
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->getEMPTY()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_c
    return-object v0
.end method

.method public getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getConstructors()Ljava/util/Collection;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->getConstructors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-nez v0, :cond_9

    const/16 v1, 0xd

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getDeclaredTypeParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->typeParameters:Ljava/util/List;

    if-nez v0, :cond_9

    const/16 v1, 0xf

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
    .registers 3

    .line 74
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-nez v0, :cond_9

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 3

    .line 68
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez v0, :cond_8

    const/4 v1, 0x7

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 3

    .line 183
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    if-nez v0, :cond_9

    const/16 v1, 0x12

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .registers 3

    .line 130
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-nez v0, :cond_9

    const/16 v1, 0xb

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 3

    if-nez p1, :cond_7

    const/16 p1, 0x10

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    .line 177
    :cond_7
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    if-nez p1, :cond_10

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_10
    return-object p1
.end method

.method public getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueClassRepresentation()Lkotlin/reflect/jvm/internal/impl/descriptors/ValueClassRepresentation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueClassRepresentation<",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
    .registers 3

    .line 84
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    if-nez v0, :cond_9

    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public isActual()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCompanionObject()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isData()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isExpect()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFun()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInline()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInner()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->isInner:Z

    return v0
.end method

.method public isValue()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    .line 62
    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->modality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-void
.end method

.method public setTypeParameterDescriptors(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    .line 154
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->typeParameters:Ljava/util/List;

    if-nez v0, :cond_13

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->typeParameters:Ljava/util/List;

    return-void

    .line 155
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type parameters are already set for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->$$$reportNull$$$0(I)V

    .line 78
    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->visibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 200
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->toString(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
