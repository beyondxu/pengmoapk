###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl (kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl)
.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;
.source "DeclarationDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;


# instance fields
.field private final name:Lkotlin/reflect/jvm/internal/impl/name/Name;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 10

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_11

    :cond_f
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_11
    if-eq p0, v3, :cond_1b

    if-eq p0, v2, :cond_1b

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    const/4 v5, 0x3

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x2

    :goto_1c
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_7a

    const-string v8, "annotations"

    aput-object v8, v5, v7

    goto :goto_35

    :pswitch_29
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_35

    :pswitch_2e
    aput-object v6, v5, v7

    goto :goto_35

    :pswitch_31
    const-string v8, "name"

    aput-object v8, v5, v7

    :goto_35
    const-string v7, "toString"

    const/4 v8, 0x1

    if-eq p0, v3, :cond_4b

    if-eq p0, v2, :cond_46

    if-eq p0, v1, :cond_43

    if-eq p0, v0, :cond_43

    aput-object v6, v5, v8

    goto :goto_4f

    :cond_43
    aput-object v7, v5, v8

    goto :goto_4f

    :cond_46
    const-string v6, "getOriginal"

    aput-object v6, v5, v8

    goto :goto_4f

    :cond_4b
    const-string v6, "getName"

    aput-object v6, v5, v8

    :goto_4f
    if-eq p0, v3, :cond_61

    if-eq p0, v2, :cond_61

    const/4 v6, 0x4

    if-eq p0, v6, :cond_5f

    if-eq p0, v1, :cond_61

    if-eq p0, v0, :cond_61

    const-string v6, "<init>"

    aput-object v6, v5, v3

    goto :goto_61

    :cond_5f
    aput-object v7, v5, v3

    :cond_61
    :goto_61
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_73

    if-eq p0, v2, :cond_73

    if-eq p0, v1, :cond_73

    if-eq p0, v0, :cond_73

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :cond_73
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_78
    throw p0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2e
        :pswitch_29
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 33
    :cond_c
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 34
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method

.method public static toString(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 62
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->DEBUG_TEXT:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-virtual {v1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->render(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_44

    if-nez p0, :cond_43

    const/4 v0, 0x5

    .line 62
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_43
    return-object p0

    :catchall_44
    nop

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6b

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6b
    return-object p0
.end method


# virtual methods
.method public getName()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .registers 3

    .line 40
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    if-nez v0, :cond_8

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 56
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->toString(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
