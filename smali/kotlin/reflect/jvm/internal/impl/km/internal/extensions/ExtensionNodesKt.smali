###### Class kotlin.reflect.jvm.internal.impl.km.internal.extensions.ExtensionNodesKt (kotlin.reflect.jvm.internal.impl.km.internal.extensions.ExtensionNodesKt)
.class public final Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;
.super Ljava/lang/Object;
.source "ExtensionNodes.kt"


# direct methods
.method public static final getExtension(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmClassExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmClassExtension;

    return-object p0
.end method

.method public static final getExtension(Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmConstructorExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmConstructorExtension;

    return-object p0
.end method

.method public static final getExtension(Lkotlin/reflect/jvm/internal/impl/km/KmFunction;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmFunctionExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmFunctionExtension;

    return-object p0
.end method

.method public static final getExtension(Lkotlin/reflect/jvm/internal/impl/km/KmPackage;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPackageExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmPackage;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPackageExtension;

    return-object p0
.end method

.method public static final getExtension(Lkotlin/reflect/jvm/internal/impl/km/KmProperty;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPropertyExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPropertyExtension;

    return-object p0
.end method

.method public static final getExtension(Lkotlin/reflect/jvm/internal/impl/km/KmType;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeExtension;

    return-object p0
.end method

.method public static final getExtension(Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeParameterExtension;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeParameterExtension;

    return-object p0
.end method

.method private static final singleOfType(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N::",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;",
            ">(",
            "Ljava/util/Collection<",
            "+TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;",
            ")TN;"
        }
    .end annotation

    .line 94
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    .line 95
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;->getType()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_1f

    move-object v0, v1

    goto :goto_5

    .line 97
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Multiple extensions handle the same extension type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    if-eqz v0, :cond_36

    return-object v0

    .line 102
    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No extensions handle the extension type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
