###### Class com.facebook.imageformat.ImageFormatChecker (com.facebook.imageformat.ImageFormatChecker)
.class public final Lcom/facebook/imageformat/ImageFormatChecker;
.super Ljava/lang/Object;
.source "ImageFormatChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageformat/ImageFormatChecker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageFormatChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageFormatChecker.kt\ncom/facebook/imageformat/ImageFormatChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1863#2,2:153\n*S KotlinDebug\n*F\n+ 1 ImageFormatChecker.kt\ncom/facebook/imageformat/ImageFormatChecker\n*L\n42#1:153,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormatChecker;",
        "",
        "<init>",
        "()V",
        "maxHeaderLength",
        "",
        "customImageFormatCheckers",
        "",
        "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
        "defaultFormatChecker",
        "Lcom/facebook/imageformat/DefaultImageFormatChecker;",
        "setCustomImageFormatCheckers",
        "",
        "determineImageFormat",
        "Lcom/facebook/imageformat/ImageFormat;",
        "is",
        "Ljava/io/InputStream;",
        "updateMaxHeaderLength",
        "Companion",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imageformat/ImageFormatChecker$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/facebook/imageformat/ImageFormatChecker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private customImageFormatCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultFormatChecker:Lcom/facebook/imageformat/DefaultImageFormatChecker;

.field private maxHeaderLength:I


# direct methods
.method public static synthetic $r8$lambda$urmLMDdujaHjHYYP4YGrh18nf1Q()Lcom/facebook/imageformat/ImageFormatChecker;
    .registers 1

    invoke-static {}, Lcom/facebook/imageformat/ImageFormatChecker;->instance_delegate$lambda$1()Lcom/facebook/imageformat/ImageFormatChecker;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imageformat/ImageFormatChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->Companion:Lcom/facebook/imageformat/ImageFormatChecker$Companion;

    .line 101
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/facebook/imageformat/ImageFormatChecker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/facebook/imageformat/ImageFormatChecker$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;

    invoke-direct {v0}, Lcom/facebook/imageformat/DefaultImageFormatChecker;-><init>()V

    iput-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->defaultFormatChecker:Lcom/facebook/imageformat/DefaultImageFormatChecker;

    .line 26
    invoke-direct {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->updateMaxHeaderLength()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 19
    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->Companion:Lcom/facebook/imageformat/ImageFormatChecker$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getImageFormat(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->Companion:Lcom/facebook/imageformat/ImageFormatChecker$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getImageFormat(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->Companion:Lcom/facebook/imageformat/ImageFormatChecker$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/facebook/imageformat/ImageFormatChecker;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->Companion:Lcom/facebook/imageformat/ImageFormatChecker$Companion;

    invoke-virtual {v0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getInstance()Lcom/facebook/imageformat/ImageFormatChecker;

    move-result-object v0

    return-object v0
.end method

.method private static final instance_delegate$lambda$1()Lcom/facebook/imageformat/ImageFormatChecker;
    .registers 1

    .line 101
    new-instance v0, Lcom/facebook/imageformat/ImageFormatChecker;

    invoke-direct {v0}, Lcom/facebook/imageformat/ImageFormatChecker;-><init>()V

    return-object v0
.end method

.method private final updateMaxHeaderLength()V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->defaultFormatChecker:Lcom/facebook/imageformat/DefaultImageFormatChecker;

    invoke-virtual {v0}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->getHeaderSize()I

    move-result v0

    iput v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->maxHeaderLength:I

    .line 53
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->customImageFormatCheckers:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    .line 55
    iget v2, p0, Lcom/facebook/imageformat/ImageFormatChecker;->maxHeaderLength:I

    invoke-interface {v1}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->getHeaderSize()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/imageformat/ImageFormatChecker;->maxHeaderLength:I

    goto :goto_13

    :cond_2c
    return-void
.end method


# virtual methods
.method public final determineImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "is"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->maxHeaderLength:I

    new-array v1, v0, [B

    .line 37
    sget-object v2, Lcom/facebook/imageformat/ImageFormatChecker;->Companion:Lcom/facebook/imageformat/ImageFormatChecker$Companion;

    invoke-static {v2, v0, p1, v1}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->access$readHeaderFromStream(Lcom/facebook/imageformat/ImageFormatChecker$Companion;ILjava/io/InputStream;[B)I

    move-result p1

    .line 38
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->defaultFormatChecker:Lcom/facebook/imageformat/DefaultImageFormatChecker;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->determineFormat([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 39
    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v2, :cond_1a

    return-object v0

    .line 42
    :cond_1a
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->customImageFormatCheckers:Ljava/util/List;

    if-eqz v0, :cond_39

    check-cast v0, Ljava/lang/Iterable;

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    .line 43
    invoke-interface {v2, v1, p1}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->determineFormat([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v2

    .line 44
    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-eq v2, v3, :cond_24

    return-object v2

    .line 48
    :cond_39
    sget-object p1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    return-object p1
.end method

.method public final setCustomImageFormatCheckers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/facebook/imageformat/ImageFormatChecker;->customImageFormatCheckers:Ljava/util/List;

    .line 31
    invoke-direct {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->updateMaxHeaderLength()V

    return-void
.end method

###### Class com.facebook.imageformat.ImageFormatChecker.Companion (com.facebook.imageformat.ImageFormatChecker$Companion)
.class public final Lcom/facebook/imageformat/ImageFormatChecker$Companion;
.super Ljava/lang/Object;
.source "ImageFormatChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imageformat/ImageFormatChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007R\u001b\u0010\u000b\u001a\u00020\u000c8GX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormatChecker$Companion;",
        "",
        "<init>",
        "()V",
        "readHeaderFromStream",
        "",
        "maxHeaderLength",
        "is",
        "Ljava/io/InputStream;",
        "imageHeaderBytes",
        "",
        "instance",
        "Lcom/facebook/imageformat/ImageFormatChecker;",
        "getInstance",
        "()Lcom/facebook/imageformat/ImageFormatChecker;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "getImageFormat",
        "Lcom/facebook/imageformat/ImageFormat;",
        "getImageFormat_WrapIOException",
        "filename",
        "",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$readHeaderFromStream(Lcom/facebook/imageformat/ImageFormatChecker$Companion;ILjava/io/InputStream;[B)I
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->readHeaderFromStream(ILjava/io/InputStream;[B)I

    move-result p0

    return p0
.end method

.method private final readHeaderFromStream(ILjava/io/InputStream;[B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    array-length v0, p3

    if-lt v0, p1, :cond_1f

    .line 82
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 84
    :try_start_a
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->mark(I)V

    .line 85
    invoke-static {p2, p3, v1, p1}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result p1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 87
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    return p1

    :catchall_15
    move-exception p1

    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    throw p1

    .line 90
    :cond_1a
    invoke-static {p2, p3, v1, p1}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result p1

    return p1

    .line 78
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "is"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getInstance()Lcom/facebook/imageformat/ImageFormatChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->determineImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p1

    return-object p1
.end method

.method public final getImageFormat(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 142
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1a
    .catchall {:try_start_1 .. :try_end_6} :catchall_18

    .line 143
    :try_start_6
    move-object p1, v1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_16
    .catchall {:try_start_6 .. :try_end_d} :catchall_13

    .line 147
    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_13
    move-exception p1

    move-object v0, v1

    goto :goto_22

    :catch_16
    move-object v0, v1

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_22

    .line 145
    :catch_1a
    :goto_1a
    :try_start_1a
    sget-object p1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_18

    .line 147
    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :goto_22
    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method

.method public final getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "is"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker$Companion;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 127
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getInstance()Lcom/facebook/imageformat/ImageFormatChecker;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 101
    invoke-static {}, Lcom/facebook/imageformat/ImageFormatChecker;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imageformat/ImageFormatChecker;

    return-object v0
.end method

###### Class com.facebook.imageformat.ImageFormatChecker$$ExternalSyntheticLambda0 (com.facebook.imageformat.ImageFormatChecker$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/facebook/imageformat/ImageFormatChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/facebook/imageformat/ImageFormatChecker;->$r8$lambda$urmLMDdujaHjHYYP4YGrh18nf1Q()Lcom/facebook/imageformat/ImageFormatChecker;

    move-result-object v0

    return-object v0
.end method
