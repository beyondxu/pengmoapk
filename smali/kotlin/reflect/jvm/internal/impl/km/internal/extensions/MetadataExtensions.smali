###### Class kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions (kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;
.super Ljava/lang/Object;
.source "MetadataExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->Companion:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

    return-void
.end method


# virtual methods
.method public abstract createClassExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmClassExtension;
.end method

.method public abstract createConstructorExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmConstructorExtension;
.end method

.method public abstract createEnumEntryExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmEnumEntryExtension;
.end method

.method public abstract createFunctionExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmFunctionExtension;
.end method

.method public abstract createPropertyExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPropertyExtension;
.end method

.method public abstract createTypeAliasExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeAliasExtension;
.end method

.method public abstract createTypeExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeExtension;
.end method

.method public abstract createTypeParameterExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeParameterExtension;
.end method

.method public abstract createValueParameterExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmValueParameterExtension;
.end method

.method public abstract readClassExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readConstructorExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readEnumEntryExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmEnumEntry;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readFunctionExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmFunction;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readPropertyExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmProperty;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readTypeAliasExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readTypeExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readTypeParameterExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract readValueParameterExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
.end method

.method public abstract writePropertyExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmProperty;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;Lkotlin/reflect/jvm/internal/impl/km/internal/WriteContext;)V
.end method

.method public abstract writeTypeExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;Lkotlin/reflect/jvm/internal/impl/km/internal/WriteContext;)V
.end method

.method public abstract writeTypeParameterExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Builder;Lkotlin/reflect/jvm/internal/impl/km/internal/WriteContext;)V
.end method

.method public abstract writeValueParameterExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter$Builder;Lkotlin/reflect/jvm/internal/impl/km/internal/WriteContext;)V
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions.Companion (kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;
.super Ljava/lang/Object;
.source "MetadataExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

.field private static final INSTANCES$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

    .line 92
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->INSTANCES$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final INSTANCES_delegate$lambda$1()Ljava/util/List;
    .registers 2

    .line 93
    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    const-string v1, "load(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    const-string v1, "No MetadataExtensions instances found in the classpath. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic accessor$MetadataExtensions$Companion$lambda0()Ljava/util/List;
    .registers 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->INSTANCES_delegate$lambda$1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getINSTANCES$kotlin_metadata()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->INSTANCES$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions$Companion$$Lambda$0 (kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions$Companion$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion$$Lambda$0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->accessor$MetadataExtensions$Companion$lambda0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
