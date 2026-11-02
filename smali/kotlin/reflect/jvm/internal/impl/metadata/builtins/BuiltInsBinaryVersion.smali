###### Class kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion (kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;
.super Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;
.source "BuiltInsBinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

.field public static final INVALID_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;

    .line 29
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    .line 32
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    new-array v1, v3, [I

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->INVALID_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .registers 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;-><init>([I)V

    return-void
.end method


# virtual methods
.method public isCompatibleWithCurrentCompilerVersion()Z
    .registers 2

    .line 25
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->isCompatibleTo(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;)Z

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion.Companion (kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;
.super Ljava/lang/Object;
.source "BuiltInsBinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuiltInsBinaryVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInsBinaryVersion.kt\norg/jetbrains/kotlin/metadata/builtins/BuiltInsBinaryVersion$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1563#2:41\n1634#2,3:42\n*S KotlinDebug\n*F\n+ 1 BuiltInsBinaryVersion.kt\norg/jetbrains/kotlin/metadata/builtins/BuiltInsBinaryVersion$Companion\n*L\n36#1:41\n36#1:42,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final readFrom(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;
    .registers 5

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    new-instance p1, Lkotlin/ranges/IntRange;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-direct {p1, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast p1, Ljava/lang/Iterable;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object v2, p1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 36
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 44
    :cond_3f
    check-cast v1, Ljava/util/List;

    .line 41
    check-cast v1, Ljava/util/Collection;

    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;-><init>([I)V

    return-object v0
.end method
