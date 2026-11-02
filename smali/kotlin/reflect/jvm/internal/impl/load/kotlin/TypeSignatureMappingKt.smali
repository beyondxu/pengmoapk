###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.TypeSignatureMappingKt (kotlin.reflect.jvm.internal.impl.load.kotlin.TypeSignatureMappingKt)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeSignatureMappingKt;
.super Ljava/lang/Object;
.source "typeSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ntypeSignatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 typeSignatureMapping.kt\norg/jetbrains/kotlin/load/kotlin/TypeSignatureMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1#2:104\n1761#3,3:105\n*S KotlinDebug\n*F\n+ 1 typeSignatureMapping.kt\norg/jetbrains/kotlin/load/kotlin/TypeSignatureMappingKt\n*L\n55#1:105,3\n*E\n"
.end annotation


# direct methods
.method public static final boxTypeIfNeeded(Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory<",
            "TT;>;TT;Z)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "possiblyPrimitiveType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    .line 28
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory;->boxType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    return-object p1
.end method

.method public static final mapBuiltInType(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory<",
            "TT;>;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v0

    .line 38
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_20

    return-object v2

    .line 40
    :cond_20
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 42
    invoke-interface {p2, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory;->createPrimitiveType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Ljava/lang/Object;

    move-result-object p3

    .line 43
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementUtilsKt;->hasEnhancedNullability(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, 0x1

    .line 44
    :goto_3a
    invoke-static {p2, p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeSignatureMappingKt;->boxTypeIfNeeded(Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 47
    :cond_3f
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getPrimitiveArrayType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 52
    :cond_60
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isUnderKotlinPackage(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 53
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getClassFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    if-eqz p0, :cond_73

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapKotlinToJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p0

    goto :goto_74

    :cond_73
    move-object p0, v2

    :goto_74
    if-eqz p0, :cond_bb

    .line 55
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->getKotlinCollectionsToJavaCollections()Z

    move-result p1

    if-nez p1, :cond_ad

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->getMutabilityMappings()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 105
    instance-of p3, p1, Ljava/util/Collection;

    if-eqz p3, :cond_92

    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_92

    goto :goto_ad

    .line 106
    :cond_92
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap$PlatformMutabilityMapping;

    .line 55
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap$PlatformMutabilityMapping;->getJavaClass()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p3

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_96

    return-object v2

    .line 58
    :cond_ad
    :goto_ad
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalNameByClassId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "internalNameByClassId(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactory;->createObjectType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_bb
    return-object v2
.end method
