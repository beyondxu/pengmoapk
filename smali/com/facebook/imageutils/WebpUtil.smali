###### Class com.facebook.imageutils.WebpUtil (com.facebook.imageutils.WebpUtil)
.class public final Lcom/facebook/imageutils/WebpUtil;
.super Ljava/lang/Object;
.source "WebpUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebpUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebpUtil.kt\ncom/facebook/imageutils/WebpUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n2632#2,3:183\n*S KotlinDebug\n*F\n+ 1 WebpUtil.kt\ncom/facebook/imageutils/WebpUtil\n*L\n144#1:183,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u001e\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u001e\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u000c\u0010\u001a\u001a\u00020\n*\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/facebook/imageutils/WebpUtil;",
        "",
        "<init>",
        "()V",
        "VP8_HEADER",
        "",
        "VP8L_HEADER",
        "VP8X_HEADER",
        "getSize",
        "Lkotlin/Pair;",
        "",
        "stream",
        "Ljava/io/InputStream;",
        "getVP8Dimension",
        "getVP8LDimension",
        "getVP8XDimension",
        "compare",
        "",
        "what",
        "",
        "with",
        "getHeader",
        "header",
        "getInt",
        "get2BytesAsInt",
        "read3Bytes",
        "getNextByteAsInt",
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
.field public static final INSTANCE:Lcom/facebook/imageutils/WebpUtil;

.field private static final VP8L_HEADER:Ljava/lang/String; = "VP8L"

.field private static final VP8X_HEADER:Ljava/lang/String; = "VP8X"

.field private static final VP8_HEADER:Ljava/lang/String; = "VP8 "


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/WebpUtil;-><init>()V

    sput-object v0, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final compare([BLjava/lang/String;)Z
    .registers 8

    .line 141
    array-length v0, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    return v2

    .line 144
    :cond_9
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 183
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    return v3

    .line 184
    :cond_1e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aget-byte v1, p1, v1

    if-eq v4, v1, :cond_22

    return v2

    :cond_39
    return v3
.end method

.method public static final get2BytesAsInt(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    invoke-direct {v0, p0}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 168
    invoke-direct {v0, p0}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    return p0
.end method

.method private final getHeader([B)Ljava/lang/String;
    .registers 7

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    .line 150
    aget-byte v3, p1, v2

    int-to-short v3, v3

    invoke-static {v3}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 152
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getInt(Ljava/io/InputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 158
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 159
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v2

    .line 160
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method

.method private final getNextByteAsInt(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public static final getSize(Ljava/io/InputStream;)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 36
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 38
    sget-object v2, Lcom/facebook/imageutils/WebpUtil;->INSTANCE:Lcom/facebook/imageutils/WebpUtil;

    const-string v3, "RIFF"

    invoke-direct {v2, v0, v3}, Lcom/facebook/imageutils/WebpUtil;->compare([BLjava/lang/String;)Z

    move-result v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_86
    .catchall {:try_start_a .. :try_end_15} :catchall_84

    if-nez v3, :cond_20

    .line 59
    :goto_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    .line 42
    :cond_20
    :try_start_20
    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getInt(Ljava/io/InputStream;)I

    .line 44
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 45
    const-string v3, "WEBP"

    invoke-direct {v2, v0, v3}, Lcom/facebook/imageutils/WebpUtil;->compare([BLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_17

    .line 49
    :cond_2f
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 50
    invoke-direct {v2, v0}, Lcom/facebook/imageutils/WebpUtil;->getHeader([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x284b22

    if-eq v3, v4, :cond_6e

    const v4, 0x284b4e

    if-eq v3, v4, :cond_60

    const v4, 0x284b5a

    if-eq v3, v4, :cond_4a

    goto :goto_7b

    :cond_4a
    const-string v3, "VP8X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_7b

    .line 53
    :cond_53
    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8XDimension(Ljava/io/InputStream;)Lkotlin/Pair;

    move-result-object v0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_57} :catch_86
    .catchall {:try_start_20 .. :try_end_57} :catchall_84

    .line 59
    :goto_57
    :try_start_57
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    return-object v0

    :catch_5b
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    .line 50
    :cond_60
    :try_start_60
    const-string v3, "VP8L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_7b

    .line 52
    :cond_69
    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8LDimension(Ljava/io/InputStream;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_57

    .line 50
    :cond_6e
    const-string v3, "VP8 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 51
    invoke-direct {v2, p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8Dimension(Ljava/io/InputStream;)Lkotlin/Pair;

    move-result-object v0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_7a} :catch_86
    .catchall {:try_start_60 .. :try_end_7a} :catchall_84

    goto :goto_57

    .line 59
    :cond_7b
    :goto_7b
    :try_start_7b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_8b

    :catch_7f
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8b

    :catchall_84
    move-exception v0

    goto :goto_8c

    :catch_86
    move-exception v0

    .line 56
    :try_start_87
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_84

    goto :goto_7b

    :goto_8b
    return-object v1

    .line 59
    :goto_8c
    :try_start_8c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_94
    throw v0
.end method

.method private final getVP8Dimension(Ljava/io/InputStream;)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v2

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_33

    const/4 v0, 0x1

    if-ne v1, v0, :cond_33

    const/16 v0, 0x2a

    if-eq v2, v0, :cond_1d

    goto :goto_33

    .line 88
    :cond_1d
    new-instance v0, Lkotlin/Pair;

    invoke-static {p1}, Lcom/facebook/imageutils/WebpUtil;->get2BytesAsInt(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/imageutils/WebpUtil;->get2BytesAsInt(Ljava/io/InputStream;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getVP8LDimension(Ljava/io/InputStream;)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getInt(Ljava/io/InputStream;)I

    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_d
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 109
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 110
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    and-int/lit8 v3, v1, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xa

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr p1, v2

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 115
    new-instance v1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getVP8XDimension(Ljava/io/InputStream;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 128
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 130
    new-instance v0, Lkotlin/Pair;

    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->read3Bytes(Ljava/io/InputStream;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->read3Bytes(Ljava/io/InputStream;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final read3Bytes(Ljava/io/InputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v0

    .line 175
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result v1

    .line 176
    invoke-direct {p0, p1}, Lcom/facebook/imageutils/WebpUtil;->getNextByteAsInt(Ljava/io/InputStream;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method
