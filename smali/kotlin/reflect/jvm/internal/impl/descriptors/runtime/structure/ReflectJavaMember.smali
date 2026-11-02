###### Class kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember)
.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaElement;
.source "ReflectJavaMember.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationOwner;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaModifierListOwner;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMember;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReflectJavaMember.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaMember.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaMember\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaElement;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 65
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationOwner;->getElement()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationOwnerKt;->findAnnotation([Ljava/lang/annotation/Annotation;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;
    .registers 2

    .line 23
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationOwner;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;

    return-object p1
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .registers 2

    .line 23
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationOwner;->getAnnotations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationOwner;->getElement()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationOwnerKt;->getAnnotations([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    return-object v0

    :cond_14
    :goto_14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainingClass()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;
    .registers 4

    .line 41
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDeclaringClass(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic getContainingClass()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getContainingClass()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    return-object v0
.end method

.method public getElement()Ljava/lang/reflect/AnnotatedElement;
    .registers 3

    .line 33
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method

.method public abstract getMember()Ljava/lang/reflect/Member;
.end method

.method public getModifiers()I
    .registers 2

    .line 35
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->NO_NAME_PROVIDED:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object v0
.end method

.method protected final getValueParameters([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaValueParameter;",
            ">;"
        }
    .end annotation

    const-string v0, "parameterTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterAnnotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->loadParameterNames(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    array-length v4, p1

    sub-int/2addr v3, v4

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 54
    :goto_25
    array-length v4, p1

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_93

    .line 55
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;->Factory:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType$Factory;

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType$Factory;->create(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v6

    if-eqz v1, :cond_7a

    add-int v7, v5, v3

    .line 57
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3e

    goto :goto_7b

    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No parameter with index "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2b

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    const/4 v7, 0x0

    :goto_7b
    if-eqz p3, :cond_85

    .line 59
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v8

    if-ne v5, v8, :cond_85

    const/4 v8, 0x1

    goto :goto_86

    :cond_85
    const/4 v8, 0x0

    .line 60
    :goto_86
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;

    aget-object v10, p2, v5

    invoke-direct {v9, v6, v10, v7, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 62
    :cond_93
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
    .registers 3

    .line 38
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaModifierListOwner;->getModifiers()I

    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-object v0

    .line 41
    :cond_f
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-object v0

    .line 42
    :cond_1a
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 43
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedStaticVisibility;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedStaticVisibility;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-object v0

    .line 44
    :cond_2b
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedAndPackage;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedAndPackage;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-object v0

    .line 45
    :cond_30
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$PackageVisibility;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$PackageVisibility;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 67
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .registers 2

    .line 29
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaModifierListOwner;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public isDeprecatedInJavaDoc()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .registers 2

    .line 35
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaModifierListOwner;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .registers 2

    .line 32
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaModifierListOwner;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
