###### Class kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptorImpl (kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptorImpl)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;
.super Ljava/lang/Object;
.source "AnnotationDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;


# instance fields
.field private final annotationType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

.field private final valueArguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 11

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_e

    :cond_c
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_e
    const/4 v4, 0x2

    if-eq p0, v2, :cond_17

    if-eq p0, v1, :cond_17

    if-eq p0, v0, :cond_17

    const/4 v5, 0x3

    goto :goto_18

    :cond_17
    const/4 v5, 0x2

    :goto_18
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p0, v8, :cond_35

    if-eq p0, v4, :cond_30

    if-eq p0, v2, :cond_2d

    if-eq p0, v1, :cond_2d

    if-eq p0, v0, :cond_2d

    const-string v9, "annotationType"

    aput-object v9, v5, v7

    goto :goto_39

    :cond_2d
    aput-object v6, v5, v7

    goto :goto_39

    :cond_30
    const-string v9, "source"

    aput-object v9, v5, v7

    goto :goto_39

    :cond_35
    const-string v9, "valueArguments"

    aput-object v9, v5, v7

    :goto_39
    if-eq p0, v2, :cond_4c

    if-eq p0, v1, :cond_47

    if-eq p0, v0, :cond_42

    aput-object v6, v5, v8

    goto :goto_50

    :cond_42
    const-string v6, "getSource"

    aput-object v6, v5, v8

    goto :goto_50

    :cond_47
    const-string v6, "getAllValueArguments"

    aput-object v6, v5, v8

    goto :goto_50

    :cond_4c
    const-string v6, "getType"

    aput-object v6, v5, v8

    :goto_50
    if-eq p0, v2, :cond_5a

    if-eq p0, v1, :cond_5a

    if-eq p0, v0, :cond_5a

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_5a
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6a

    if-eq p0, v1, :cond_6a

    if-eq p0, v0, :cond_6a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_6f
    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue<",
            "*>;>;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 40
    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->annotationType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 42
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->valueArguments:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    return-void
.end method


# virtual methods
.method public getAllValueArguments()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue<",
            "*>;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->valueArguments:Ljava/util/Map;

    if-nez v0, :cond_8

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 2

    .line 55
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor$DefaultImpls;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;
    .registers 3

    .line 67
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    if-nez v0, :cond_8

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    .line 49
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->annotationType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v0, :cond_8

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 72
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->FQ_NAMES_IN_TYPES:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->renderAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
