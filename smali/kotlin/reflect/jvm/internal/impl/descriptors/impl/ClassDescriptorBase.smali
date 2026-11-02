###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase (kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase)
.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;
.source "ClassDescriptorBase.java"


# instance fields
.field private final containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

.field private final isExternal:Z

.field private final source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x4

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq p0, v7, :cond_36

    if-eq p0, v4, :cond_31

    if-eq p0, v3, :cond_2c

    if-eq p0, v1, :cond_29

    if-eq p0, v0, :cond_29

    const-string v3, "storageManager"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_29
    aput-object v6, v5, v8

    goto :goto_3a

    :cond_2c
    const-string v3, "source"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_31
    const-string v3, "name"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_36
    const-string v3, "containingDeclaration"

    aput-object v3, v5, v8

    :goto_3a
    if-eq p0, v1, :cond_46

    if-eq p0, v0, :cond_41

    aput-object v6, v5, v7

    goto :goto_4a

    :cond_41
    const-string v3, "getSource"

    aput-object v3, v5, v7

    goto :goto_4a

    :cond_46
    const-string v3, "getContainingDeclaration"

    aput-object v3, v5, v7

    :goto_4a
    if-eq p0, v1, :cond_52

    if-eq p0, v0, :cond_52

    const-string v3, "<init>"

    aput-object v3, v5, v4

    :cond_52
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_60

    if-eq p0, v0, :cond_60

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_65
    throw p0
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Z)V
    .registers 7

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p4, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->$$$reportNull$$$0(I)V

    .line 38
    :cond_18
    invoke-direct {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    .line 39
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 40
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 41
    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->isExternal:Z

    return-void
.end method


# virtual methods
.method public getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 3

    .line 52
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    if-nez v0, :cond_8

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;
    .registers 3

    .line 58
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    if-nez v0, :cond_8

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public isExternal()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->isExternal:Z

    return v0
.end method
