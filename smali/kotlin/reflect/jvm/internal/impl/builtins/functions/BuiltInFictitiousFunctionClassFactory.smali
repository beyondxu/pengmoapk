###### Class kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory (kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;
.super Ljava/lang/Object;
.source "BuiltInFictitiousFunctionClassFactory.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuiltInFictitiousFunctionClassFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInFictitiousFunctionClassFactory.kt\norg/jetbrains/kotlin/builtins/functions/BuiltInFictitiousFunctionClassFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n808#2,11:71\n808#2,11:82\n*S KotlinDebug\n*F\n+ 1 BuiltInFictitiousFunctionClassFactory.kt\norg/jetbrains/kotlin/builtins/functions/BuiltInFictitiousFunctionClassFactory\n*L\n55#1:71,11\n59#1:82,11\n*E\n"
.end annotation


# instance fields
.field private final module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

.field private final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V
    .registers 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 34
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    return-void
.end method


# virtual methods
.method public createClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .registers 8

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_ad

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isNestedClass()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_ad

    .line 48
    :cond_14
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v0

    .line 49
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "Function"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return-object v1

    .line 51
    :cond_2c
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    .line 52
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->getFunctionalClassKindWithArity(Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;

    move-result-object v0

    if-nez v0, :cond_3d

    return-object v1

    :cond_3d
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->component1()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->component2()I

    move-result v0

    .line 55
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->getFragments()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5c
    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsPackageFragment;

    if-eqz v4, :cond_5c

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 81
    :cond_6e
    check-cast v2, Ljava/util/List;

    .line 59
    move-object p1, v2

    check-cast p1, Ljava/lang/Iterable;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 91
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/builtins/FunctionInterfacePackageFragment;

    if-eqz v5, :cond_7e

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 92
    :cond_90
    check-cast v3, Ljava/util/List;

    .line 59
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/builtins/FunctionInterfacePackageFragment;

    if-eqz p1, :cond_9b

    goto :goto_9f

    :cond_9b
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    :goto_9f
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsPackageFragment;

    .line 61
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    invoke-direct {v2, v3, p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;I)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-object v2

    :cond_ad
    :goto_ad
    return-object v1
.end method

.method public getAllContributedClassesIfPossible(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public shouldCreateClass(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)Z
    .registers 7

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "asString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v0, "Function"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "KFunction"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 40
    const-string v0, "SuspendFunction"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "KSuspendFunction"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 41
    :cond_36
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->getFunctionalClassKindWithArity(Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;

    move-result-object p1

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    return p1

    :cond_44
    return v1
.end method
