###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava (kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;
.super Ljava/lang/Object;
.source "DeserializationComponentsForJava.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;


# instance fields
.field private final components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;->Companion:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaClassDataFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/extensions/TypeAttributeTranslators;)V
    .registers 34

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const-string v4, "storageManager"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "moduleDescriptor"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "configuration"

    move-object/from16 v6, p3

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "classDataFinder"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "annotationAndConstantLoader"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "packageFragmentProvider"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notFoundClasses"

    move-object/from16 v12, p7

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "errorReporter"

    move-object/from16 v8, p8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "lookupTracker"

    move-object/from16 v9, p9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contractDeserializer"

    move-object/from16 v13, p10

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "kotlinTypeChecker"

    move-object/from16 v7, p11

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "typeAttributeTranslators"

    move-object/from16 v10, p12

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v4

    instance-of v11, v4, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    if-eqz v11, :cond_62

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    goto :goto_63

    :cond_62
    const/4 v4, 0x0

    .line 73
    :goto_63
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 74
    move-object/from16 v11, p4

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;

    .line 75
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaFlexibleTypeDeserializer;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaFlexibleTypeDeserializer;

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/lang/Iterable;

    if-eqz v4, :cond_84

    .line 77
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v17

    if-eqz v17, :cond_84

    goto :goto_86

    :cond_84
    sget-object v17, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    :goto_86
    check-cast v17, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;

    if-eqz v4, :cond_91

    .line 78
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v4

    if-eqz v4, :cond_91

    goto :goto_93

    :cond_91
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter$NoPlatformDependent;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter$NoPlatformDependent;

    :goto_93
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;

    .line 79
    sget-object v18, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;

    invoke-virtual/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getEXTENSION_REGISTRY()Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    move-result-object v18

    move-object/from16 v19, v0

    .line 80
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    move-object/from16 p4, v2

    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Ljava/lang/Iterable;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolver;

    .line 81
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/types/extensions/TypeAttributeTranslators;->getTranslators()Ljava/util/List;

    move-result-object v2

    .line 82
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/JvmEnumEntriesDeserializationSupport;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/JvmEnumEntriesDeserializationSupport;

    move-object/from16 v20, v10

    check-cast v20, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport;

    move-object v10, v6

    move-object v6, v3

    move-object v3, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v7

    move-object v7, v14

    move-object v14, v10

    move-object v10, v15

    move-object v15, v4

    move-object v4, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v2

    move-object v2, v5

    move-object/from16 v5, p4

    .line 73
    invoke-direct/range {v0 .. v20}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolver;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport;)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    return-void
.end method


# virtual methods
.method public final getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;
    .registers 2

    .line 68
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava.Companion (kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;
.super Ljava/lang/Object;
.source "DeserializationComponentsForJava.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createModuleData(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;
    .registers 32

    move-object/from16 v0, p4

    const-string v1, "kotlinClassFinder"

    move-object/from16 v6, p1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jvmBuiltInsKotlinClassFinder"

    move-object/from16 v14, p2

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javaClassFinder"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "moduleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorReporter"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javaSourceElementFactory"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v3, "DeserializationComponentsForJava.ModuleData"

    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;->FROM_DEPENDENCIES:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;

    invoke-direct {v15, v3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;)V

    .line 104
    new-instance v16, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const-string v1, "special(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v15

    check-cast v19, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    const/16 v23, 0x38

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v24}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;Lkotlin/reflect/jvm/internal/impl/platform/TargetPlatform;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    .line 105
    invoke-virtual {v15, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->setBuiltInsModule(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    .line 107
    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    const/4 v1, 0x1

    invoke-virtual {v15, v5, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Z)V

    .line 109
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-direct {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;-><init>()V

    .line 110
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;

    invoke-direct {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;-><init>()V

    .line 111
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    invoke-direct {v10, v3, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V

    move-object/from16 v16, v5

    move-object v5, v10

    .line 117
    move-object v10, v4

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ModuleClassResolver;

    const/16 v12, 0x200

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v1, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 114
    invoke-static/range {v2 .. v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJavaKt;->makeLazyJavaPackageFragmentProvider$default(Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ModuleClassResolver;Lkotlin/reflect/jvm/internal/impl/load/kotlin/PackagePartProvider;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-result-object v2

    move-object v3, v4

    .line 123
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    move-object v4, v5

    move-object v5, v2

    move-object/from16 v2, v16

    .line 121
    invoke-static/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJavaKt;->makeDeserializationComponentsForJava(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;

    move-result-object v12

    move-object v2, v5

    move-object v13, v7

    move-object v5, v4

    .line 126
    invoke-virtual {v13, v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->setComponents(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;)V

    .line 128
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JavaDescriptorResolver;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;->EMPTY:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;

    const-string v7, "EMPTY"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JavaDescriptorResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;)V

    .line 129
    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;->setResolver(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JavaDescriptorResolver;)V

    .line 131
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;

    .line 132
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;

    .line 133
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    move-object v9, v1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-direct {v1, v3, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Ljava/lang/Iterable;)V

    move-object v11, v1

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolver;

    move-object v1, v4

    move-object v6, v5

    move-object v4, v14

    move-object/from16 v5, v16

    .line 131
    invoke-direct/range {v2 .. v11}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolver;)V

    const/4 v3, 0x1

    .line 136
    new-array v4, v3, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->setDependencies([Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    .line 138
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;

    const/4 v6, 0x2

    .line 139
    new-array v6, v6, [Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JavaDescriptorResolver;->getPackageFragmentProvider()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-result-object v1

    aput-object v1, v6, v5

    aput-object v2, v6, v3

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CompositeProvider@RuntimeModuleData for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-direct {v4, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;-><init>(Ljava/util/List;Ljava/lang/String;)V

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;

    .line 137
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;)V

    .line 144
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;

    invoke-direct {v0, v12, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)V

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava.Companion.ModuleData (kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava$Companion$ModuleData)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;
.super Ljava/lang/Object;
.source "DeserializationComponentsForJava.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleData"
.end annotation


# instance fields
.field private final deserializationComponentsForJava:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;

.field private final deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)V
    .registers 4

    const-string v0, "deserializationComponentsForJava"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;->deserializationComponentsForJava:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;

    .line 91
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    return-void
.end method


# virtual methods
.method public final getDeserializationComponentsForJava()Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;
    .registers 2

    .line 90
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;->deserializationComponentsForJava:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;

    return-object v0
.end method

.method public final getDeserializedDescriptorResolver()Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;
    .registers 2

    .line 91
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava$Companion$ModuleData;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    return-object v0
.end method
