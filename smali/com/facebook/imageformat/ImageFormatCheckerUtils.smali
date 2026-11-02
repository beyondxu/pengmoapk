###### Class com.facebook.imageformat.ImageFormatCheckerUtils (com.facebook.imageformat.ImageFormatCheckerUtils)
.class public final Lcom/facebook/imageformat/ImageFormatCheckerUtils;
.super Ljava/lang/Object;
.source "ImageFormatCheckerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageFormatCheckerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageFormatCheckerUtils.kt\ncom/facebook/imageformat/ImageFormatCheckerUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n2632#2,3:109\n*S KotlinDebug\n*F\n+ 1 ImageFormatCheckerUtils.kt\ncom/facebook/imageformat/ImageFormatCheckerUtils\n*L\n57#1:109,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0007J \u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0007J(\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000eH\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormatCheckerUtils;",
        "",
        "<init>",
        "()V",
        "asciiBytes",
        "",
        "value",
        "",
        "startsWithPattern",
        "",
        "byteArray",
        "pattern",
        "hasPatternAt",
        "offset",
        "",
        "indexOfPattern",
        "byteArrayLen",
        "patternLen",
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
.field public static final INSTANCE:Lcom/facebook/imageformat/ImageFormatCheckerUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imageformat/ImageFormatCheckerUtils;

    invoke-direct {v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;-><init>()V

    sput-object v0, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->INSTANCE:Lcom/facebook/imageformat/ImageFormatCheckerUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asciiBytes(Ljava/lang/String;)[B
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_6
    const-string v0, "ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "getBytes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final hasPatternAt([B[BI)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_11

    return v2

    .line 57
    :cond_11
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 109
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    return v3

    .line 110
    :cond_26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    add-int v4, p2, v1

    .line 57
    aget-byte v4, p0, v4

    aget-byte v1, p1, v1

    if-eq v4, v1, :cond_2a

    return v2

    :cond_40
    return v3
.end method

.method public static final indexOfPattern([BI[BI)I
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-le p3, p1, :cond_e

    return v0

    :cond_e
    const/4 v1, 0x0

    .line 79
    aget-byte v2, p2, v1

    sub-int/2addr p1, p3

    :goto_12
    if-gt v1, p1, :cond_3a

    .line 85
    aget-byte v3, p0, v1

    const/4 v4, 0x1

    if-eq v3, v2, :cond_20

    :cond_19
    add-int/2addr v1, v4

    if-gt v1, p1, :cond_20

    .line 86
    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_19

    :cond_20
    if-gt v1, p1, :cond_37

    add-int/lit8 v3, v1, 0x1

    add-int v5, v3, p3

    sub-int/2addr v5, v4

    :goto_27
    if-ge v3, v5, :cond_34

    .line 94
    aget-byte v6, p0, v3

    aget-byte v7, p2, v4

    if-ne v6, v7, :cond_34

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_34
    if-ne v3, v5, :cond_37

    return v1

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3a
    return v0
.end method

.method public static final startsWithPattern([B[B)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, p1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->hasPatternAt([B[BI)Z

    move-result p0

    return p0
.end method
