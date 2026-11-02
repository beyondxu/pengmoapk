###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;
.super Ljava/lang/Object;
.source "KotlinClassFinder.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/KotlinMetadataFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
    }
.end annotation


# virtual methods
.method public abstract findKotlinClassOrContent(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
.end method

.method public abstract findKotlinClassOrContent(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder.Result (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder$Result)
.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
.super Ljava/lang/Object;
.source "KotlinClassFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$ClassFileContent;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public final toKotlinJvmBinaryClass()Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
    .registers 3

    .line 30
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;->getKotlinJvmBinaryClass()Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    move-result-object v0

    return-object v0

    :cond_11
    return-object v1
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder.Result.ClassFileContent (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder$Result$ClassFileContent)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$ClassFileContent;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
.source "KotlinClassFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassFileContent"
.end annotation


# instance fields
.field private final content:[B


# virtual methods
.method public final getContent()[B
    .registers 2

    .line 37
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$ClassFileContent;->content:[B

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder.Result.KotlinClass (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder$Result$KotlinClass)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
.source "KotlinClassFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KotlinClass"
.end annotation


# instance fields
.field private final byteContent:[B

.field private final kotlinJvmBinaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;[B)V
    .registers 4

    const-string v0, "kotlinJvmBinaryClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;->kotlinJvmBinaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;->byteContent:[B

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 32
    :cond_5
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;[B)V

    return-void
.end method


# virtual methods
.method public final getKotlinJvmBinaryClass()Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
    .registers 2

    .line 32
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;->kotlinJvmBinaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    return-object v0
.end method
