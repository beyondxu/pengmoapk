###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor)
.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;
    }
.end annotation


# instance fields
.field private final defaultType:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue<",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;"
        }
    .end annotation
.end field

.field private final index:I

.field private final reified:Z

.field private final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

.field private final typeConstructor:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;",
            ">;"
        }
    .end annotation
.end field

.field private final variance:Lkotlin/reflect/jvm/internal/impl/types/Variance;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 7

    packed-switch p0, :pswitch_data_88

    :pswitch_3
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_9c

    :pswitch_c
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e
    const/4 v2, 0x2

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_b0

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_1c
    const-string v5, "bounds"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_21
    aput-object v3, v2, v4

    goto :goto_41

    :pswitch_24
    const-string v5, "supertypeLoopChecker"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_29
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_2e
    const-string v5, "variance"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_33
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_38
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_3d
    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    :goto_41
    const-string v4, "processBoundsWithoutCycles"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_d0

    :pswitch_47
    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_4a
    const-string v3, "getStorageManager"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_4f
    aput-object v4, v2, v5

    goto :goto_6a

    :pswitch_52
    const-string v3, "getOriginal"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_57
    const-string v3, "getDefaultType"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_5c
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_61
    const-string v3, "getUpperBounds"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_66
    const-string v3, "getVariance"

    aput-object v3, v2, v5

    :goto_6a
    packed-switch p0, :pswitch_data_e4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_74

    :pswitch_72
    aput-object v4, v2, v1

    :goto_74
    :pswitch_74
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_f8

    :pswitch_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :pswitch_81
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_86
    throw p0

    nop

    :pswitch_data_88
    .packed-switch 0x7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x7
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_1c
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x7
        :pswitch_66
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_52
        :pswitch_47
        :pswitch_4f
        :pswitch_4a
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x7
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_72
        :pswitch_74
        :pswitch_74
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x7
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_7b
        :pswitch_81
        :pswitch_81
    .end packed-switch
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V
    .registers 11

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p4, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_18
    if-nez p5, :cond_1e

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_1e
    if-nez p8, :cond_24

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_24
    if-nez p9, :cond_2a

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    .line 61
    :cond_2a
    invoke-direct {p0, p2, p3, p4, p8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 62
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->variance:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 63
    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->reified:Z

    .line 64
    iput p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->index:I

    .line 66
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;

    invoke-direct {p2, p0, p1, p9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;->createLazyValue(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    .line 72
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;

    invoke-direct {p2, p0, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;->createLazyValue(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->defaultType:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    .line 89
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    return-void
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

    .line 149
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;->visitTypeParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 3

    .line 133
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->defaultType:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-nez v0, :cond_f

    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_f
    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 110
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->index:I

    return v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithSource;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .registers 3

    .line 139
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithSource;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v0, :cond_d

    const/16 v1, 0xb

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_d
    return-object v0
.end method

.method public getStorageManager()Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;
    .registers 3

    .line 155
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    if-nez v0, :cond_9

    const/16 v1, 0xe

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public final getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .registers 3

    .line 127
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-nez v0, :cond_f

    const/16 v1, 0x9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_f
    return-object v0
.end method

.method public getUpperBounds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->getSupertypes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_11
    return-object v0
.end method

.method public getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .registers 3

    .line 100
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->variance:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-nez v0, :cond_8

    const/4 v1, 0x7

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public isCapturedFromOuterDeclaration()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isReified()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->reified:Z

    return v0
.end method

.method protected processBoundsWithoutCycles(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xd

    .line 144
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->$$$reportNull$$$0(I)V

    :cond_e
    return-object p1
.end method

.method protected abstract reportSupertypeLoopError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
.end method

.method protected abstract resolveUpperBounds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor$1)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

.field final synthetic val$storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

.field final synthetic val$supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V
    .registers 4

    .line 66
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;->val$storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;->val$supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;->invoke()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .registers 5

    .line 69
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;->val$storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$1;->val$supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.AnonymousClass2 (kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor$2)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

.field final synthetic val$name:Lkotlin/reflect/jvm/internal/impl/name/Name;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;->val$name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;->invoke()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 6

    .line 75
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    .line 76
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    .line 77
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2$1;

    invoke-direct {v4, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;)V

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    .line 75
    invoke-static {v0, v1, v2, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.AnonymousClass2.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor$2$1)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2$1;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;->invoke()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2$1;->this$1:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2$1;->invoke()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope for type parameter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2$1;->this$1:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;->val$name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2$1;->this$1:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$2;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.TypeParameterTypeConstructor (kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor$TypeParameterTypeConstructor)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;
.source "AbstractTypeParameterDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeParameterTypeConstructor"
.end annotation


# instance fields
.field private final supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 12

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_16

    if-eq p0, v4, :cond_16

    if-eq p0, v3, :cond_16

    if-eq p0, v2, :cond_16

    if-eq p0, v1, :cond_16

    if-eq p0, v0, :cond_16

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_18

    :cond_16
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_18
    if-eq p0, v5, :cond_26

    if-eq p0, v4, :cond_26

    if-eq p0, v3, :cond_26

    if-eq p0, v2, :cond_26

    if-eq p0, v1, :cond_26

    if-eq p0, v0, :cond_26

    const/4 v7, 0x3

    goto :goto_27

    :cond_26
    const/4 v7, 0x2

    :goto_27
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_a2

    const-string v10, "storageManager"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_34
    const-string v10, "classifier"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_39
    const-string v10, "supertypes"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_3e
    const-string v10, "type"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_43
    aput-object v8, v7, v9

    :goto_45
    const-string v9, "processSupertypesWithoutCycles"

    if-eq p0, v5, :cond_6d

    if-eq p0, v4, :cond_68

    if-eq p0, v3, :cond_63

    if-eq p0, v2, :cond_5e

    if-eq p0, v1, :cond_59

    if-eq p0, v0, :cond_56

    aput-object v8, v7, v5

    goto :goto_71

    :cond_56
    aput-object v9, v7, v5

    goto :goto_71

    :cond_59
    const-string v8, "getSupertypeLoopChecker"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_5e
    const-string v8, "getBuiltIns"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_63
    const-string v8, "getDeclarationDescriptor"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_68
    const-string v8, "getParameters"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_6d
    const-string v8, "computeSupertypes"

    aput-object v8, v7, v5

    :goto_71
    packed-switch p0, :pswitch_data_b8

    const-string v8, "<init>"

    aput-object v8, v7, v4

    goto :goto_85

    :pswitch_79
    const-string v8, "isSameClassifier"

    aput-object v8, v7, v4

    goto :goto_85

    :pswitch_7e
    aput-object v9, v7, v4

    goto :goto_85

    :pswitch_81
    const-string v8, "reportSupertypeLoopError"

    aput-object v8, v7, v4

    :goto_85
    :pswitch_85
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_9b

    if-eq p0, v4, :cond_9b

    if-eq p0, v3, :cond_9b

    if-eq p0, v2, :cond_9b

    if-eq p0, v1, :cond_9b

    if-eq p0, v0, :cond_9b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a0

    :cond_9b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_a0
    throw p0

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_43
        :pswitch_34
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_81
        :pswitch_7e
        :pswitch_85
        :pswitch_79
    .end packed-switch
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;)V
    .registers 5

    if-nez p2, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    .line 162
    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    .line 163
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    .line 164
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

    return-void
.end method


# virtual methods
.method protected computeSupertypes()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->resolveUpperBounds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_c
    return-object v0
.end method

.method protected defaultSupertypeIfEmpty()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    .line 226
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CYCLIC_UPPER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    .line 198
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_c
    return-object v0
.end method

.method public getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .registers 3

    .line 192
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    if-nez v0, :cond_8

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 176
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez v0, :cond_8

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method protected getSupertypeLoopChecker()Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;
    .registers 3

    .line 209
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

    if-nez v0, :cond_8

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public isDenotable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected isSameClassifier(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Z
    .registers 5

    if-nez p1, :cond_7

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    .line 231
    :cond_7
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_19

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v2, 0x1

    .line 232
    invoke-virtual {v0, v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->areTypeParametersEquivalent(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Z)Z

    move-result p1

    if-eqz p1, :cond_19

    return v2

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected processSupertypesWithoutCycles(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    .line 220
    :cond_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->processBoundsWithoutCycles(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_13

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_13
    return-object p1
.end method

.method protected reportSupertypeLoopError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->$$$reportNull$$$0(I)V

    .line 214
    :cond_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->reportSupertypeLoopError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
