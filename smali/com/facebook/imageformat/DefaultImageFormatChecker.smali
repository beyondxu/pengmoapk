###### Class com.facebook.imageformat.DefaultImageFormatChecker (com.facebook.imageformat.DefaultImageFormatChecker)
.class public final Lcom/facebook/imageformat/DefaultImageFormatChecker;
.super Ljava/lang/Object;
.source "DefaultImageFormatChecker.kt"

# interfaces
.implements Lcom/facebook/imageformat/ImageFormat$FormatChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/imageformat/DefaultImageFormatChecker;",
        "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
        "<init>",
        "()V",
        "headerSize",
        "",
        "getHeaderSize",
        "()I",
        "determineFormat",
        "Lcom/facebook/imageformat/ImageFormat;",
        "headerBytes",
        "",
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
.field private static final BMP_HEADER:[B

.field private static final BMP_HEADER_LENGTH:I

.field public static final Companion:Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;

.field private static final DNG_HEADER_II:[B

.field private static final DNG_HEADER_LENGTH:I

.field private static final DNG_HEADER_MM:[B

.field private static final EXTENDED_WEBP_HEADER_LENGTH:I = 0x15

.field private static final GIF_HEADER_87A:[B

.field private static final GIF_HEADER_89A:[B

.field private static final GIF_HEADER_LENGTH:I = 0x6

.field private static final HEIF_HEADER_LENGTH:I = 0xc

.field private static final HEIF_HEADER_PREFIX:[B

.field private static final HEIF_HEADER_SUFFIXES:[[B

.field private static final ICO_HEADER:[B

.field private static final ICO_HEADER_LENGTH:I

.field private static final JPEG_HEADER:[B

.field private static final JPEG_HEADER_LENGTH:I

.field private static final PNG_HEADER:[B

.field private static final PNG_HEADER_LENGTH:I

.field private static final SIMPLE_WEBP_HEADER_LENGTH:I = 0x14


# instance fields
.field private final headerSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->Companion:Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;

    const/4 v0, 0x3

    .line 107
    new-array v1, v0, [B

    fill-array-data v1, :array_98

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->JPEG_HEADER:[B

    .line 108
    array-length v1, v1

    sput v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->JPEG_HEADER_LENGTH:I

    const/16 v1, 0x8

    .line 134
    new-array v1, v1, [B

    fill-array-data v1, :array_9e

    .line 126
    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->PNG_HEADER:[B

    .line 135
    array-length v1, v1

    sput v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->PNG_HEADER_LENGTH:I

    .line 153
    const-string v1, "GIF87a"

    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->GIF_HEADER_87A:[B

    .line 154
    const-string v1, "GIF89a"

    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->GIF_HEADER_89A:[B

    .line 175
    const-string v1, "BM"

    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->BMP_HEADER:[B

    .line 176
    array-length v1, v1

    sput v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->BMP_HEADER_LENGTH:I

    const/4 v1, 0x4

    .line 195
    new-array v2, v1, [B

    fill-array-data v2, :array_a6

    sput-object v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->ICO_HEADER:[B

    .line 196
    array-length v2, v2

    sput v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->ICO_HEADER_LENGTH:I

    .line 219
    const-string v2, "ftyp"

    invoke-static {v2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    sput-object v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->HEIF_HEADER_PREFIX:[B

    .line 222
    const-string v2, "heic"

    invoke-static {v2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 223
    const-string v3, "heix"

    invoke-static {v3}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 224
    const-string v4, "hevc"

    invoke-static {v4}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 225
    const-string v5, "hevx"

    invoke-static {v5}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 226
    const-string v6, "mif1"

    invoke-static {v6}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 227
    const-string v7, "msf1"

    invoke-static {v7}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [[B

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v2, 0x2

    aput-object v4, v8, v2

    aput-object v5, v8, v0

    aput-object v6, v8, v1

    const/4 v0, 0x5

    aput-object v7, v8, v0

    .line 221
    sput-object v8, Lcom/facebook/imageformat/DefaultImageFormatChecker;->HEIF_HEADER_SUFFIXES:[[B

    .line 261
    new-array v0, v1, [B

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->DNG_HEADER_II:[B

    .line 263
    new-array v1, v1, [B

    fill-array-data v1, :array_b2

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->DNG_HEADER_MM:[B

    .line 264
    array-length v0, v0

    sput v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->DNG_HEADER_LENGTH:I

    return-void

    :array_98
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_9e
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_a6
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_ac
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
    .end array-data

    :array_b2
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
    .end array-data
.end method

.method public constructor <init>()V
    .registers 12

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x14

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 26
    sget v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->JPEG_HEADER_LENGTH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 27
    sget v3, Lcom/facebook/imageformat/DefaultImageFormatChecker;->PNG_HEADER_LENGTH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 29
    sget v6, Lcom/facebook/imageformat/DefaultImageFormatChecker;->BMP_HEADER_LENGTH:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 30
    sget v7, Lcom/facebook/imageformat/DefaultImageFormatChecker;->ICO_HEADER_LENGTH:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xc

    .line 31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v5, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    aput-object v7, v9, v4

    const/4 v0, 0x7

    aput-object v8, v9, v0

    .line 24
    check-cast v9, [Ljava/lang/Comparable;

    .line 32
    invoke-static {v9}, Lkotlin/collections/ArraysKt;->maxOrNull([Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 22
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->headerSize:I

    return-void

    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getBMP_HEADER$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->BMP_HEADER:[B

    return-object v0
.end method

.method public static final synthetic access$getDNG_HEADER_II$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->DNG_HEADER_II:[B

    return-object v0
.end method

.method public static final synthetic access$getDNG_HEADER_LENGTH$cp()I
    .registers 1

    .line 14
    sget v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->DNG_HEADER_LENGTH:I

    return v0
.end method

.method public static final synthetic access$getDNG_HEADER_MM$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->DNG_HEADER_MM:[B

    return-object v0
.end method

.method public static final synthetic access$getGIF_HEADER_87A$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->GIF_HEADER_87A:[B

    return-object v0
.end method

.method public static final synthetic access$getGIF_HEADER_89A$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->GIF_HEADER_89A:[B

    return-object v0
.end method

.method public static final synthetic access$getHEIF_HEADER_PREFIX$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->HEIF_HEADER_PREFIX:[B

    return-object v0
.end method

.method public static final synthetic access$getHEIF_HEADER_SUFFIXES$cp()[[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->HEIF_HEADER_SUFFIXES:[[B

    return-object v0
.end method

.method public static final synthetic access$getICO_HEADER$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->ICO_HEADER:[B

    return-object v0
.end method

.method public static final synthetic access$getJPEG_HEADER$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->JPEG_HEADER:[B

    return-object v0
.end method

.method public static final synthetic access$getPNG_HEADER$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->PNG_HEADER:[B

    return-object v0
.end method


# virtual methods
.method public determineFormat([BI)Lcom/facebook/imageformat/ImageFormat;
    .registers 5

    const-string v0, "headerBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-static {p1, v0, p2}, Lcom/facebook/common/webp/WebpSupportStatus;->isWebpHeader([BII)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 44
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->Companion:Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;

    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$getWebpFormat(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p1

    return-object p1

    .line 46
    :cond_13
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->Companion:Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;

    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$isJpegHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 47
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 49
    :cond_1e
    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$isPngHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 50
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->PNG:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 52
    :cond_27
    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$isGifHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 53
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->GIF:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 55
    :cond_30
    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$isBmpHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 56
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->BMP:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 58
    :cond_39
    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$isIcoHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 59
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->ICO:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 61
    :cond_42
    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$isHeifHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 62
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->HEIF:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 64
    :cond_4b
    invoke-static {v0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->access$isDngHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 65
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->DNG:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 67
    :cond_54
    sget-object p1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    return-object p1
.end method

.method public getHeaderSize()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->headerSize:I

    return v0
.end method

###### Class com.facebook.imageformat.DefaultImageFormatChecker.Companion (com.facebook.imageformat.DefaultImageFormatChecker$Companion)
.class public final Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;
.super Ljava/lang/Object;
.source "DefaultImageFormatChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imageformat/DefaultImageFormatChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultImageFormatChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultImageFormatChecker.kt\ncom/facebook/imageformat/DefaultImageFormatChecker$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,282:1\n12511#2,2:283\n*S KotlinDebug\n*F\n+ 1 DefaultImageFormatChecker.kt\ncom/facebook/imageformat/DefaultImageFormatChecker$Companion\n*L\n250#1:283,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0011\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010 R\u000e\u0010!\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;",
        "",
        "<init>",
        "()V",
        "SIMPLE_WEBP_HEADER_LENGTH",
        "",
        "EXTENDED_WEBP_HEADER_LENGTH",
        "getWebpFormat",
        "Lcom/facebook/imageformat/ImageFormat;",
        "imageHeaderBytes",
        "",
        "headerSize",
        "JPEG_HEADER",
        "JPEG_HEADER_LENGTH",
        "isJpegHeader",
        "",
        "PNG_HEADER",
        "PNG_HEADER_LENGTH",
        "isPngHeader",
        "GIF_HEADER_87A",
        "GIF_HEADER_89A",
        "GIF_HEADER_LENGTH",
        "isGifHeader",
        "BMP_HEADER",
        "BMP_HEADER_LENGTH",
        "isBmpHeader",
        "ICO_HEADER",
        "ICO_HEADER_LENGTH",
        "isIcoHeader",
        "HEIF_HEADER_PREFIX",
        "HEIF_HEADER_SUFFIXES",
        "",
        "[[B",
        "HEIF_HEADER_LENGTH",
        "isHeifHeader",
        "DNG_HEADER_II",
        "DNG_HEADER_MM",
        "DNG_HEADER_LENGTH",
        "isDngHeader",
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWebpFormat(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Lcom/facebook/imageformat/ImageFormat;
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->getWebpFormat([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isBmpHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->isBmpHeader([BI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDngHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->isDngHeader([BI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isGifHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->isGifHeader([BI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isHeifHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->isHeifHeader([BI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isIcoHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->isIcoHeader([BI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isJpegHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->isJpegHeader([BI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPngHeader(Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;[BI)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker$Companion;->isPngHeader([BI)Z

    move-result p0

    return p0
.end method

.method private final getWebpFormat([BI)Lcom/facebook/imageformat/ImageFormat;
    .registers 5

    const/4 v0, 0x0

    .line 83
    invoke-static {p1, v0, p2}, Lcom/facebook/common/webp/WebpSupportStatus;->isWebpHeader([BII)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 84
    invoke-static {p1, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isSimpleWebpHeader([BI)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 85
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 87
    :cond_10
    invoke-static {p1, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isLosslessWebpHeader([BI)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 88
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 90
    :cond_19
    invoke-static {p1, v0, p2}, Lcom/facebook/common/webp/WebpSupportStatus;->isExtendedWebpHeader([BII)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 91
    invoke-static {p1, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isAnimatedWebpHeader([BI)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 92
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 94
    :cond_28
    invoke-static {p1, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isExtendedWebpHeaderWithAlpha([BI)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 95
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 97
    :cond_31
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 100
    :cond_34
    sget-object p1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 83
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isBmpHeader([BI)Z
    .registers 4

    .line 188
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getBMP_HEADER$cp()[B

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 191
    :cond_9
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getBMP_HEADER$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p1

    return p1
.end method

.method private final isDngHeader([BI)Z
    .registers 4

    .line 277
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getDNG_HEADER_LENGTH$cp()I

    move-result v0

    if-lt p2, v0, :cond_1c

    .line 278
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getDNG_HEADER_II$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 279
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getDNG_HEADER_MM$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private final isGifHeader([BI)Z
    .registers 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ge p2, v0, :cond_5

    return v1

    .line 170
    :cond_5
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getGIF_HEADER_87A$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 171
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getGIF_HEADER_89A$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    return v1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method private final isHeifHeader([BI)Z
    .registers 8

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-ge p2, v0, :cond_6

    return v1

    :cond_6
    const/4 p2, 0x3

    .line 243
    aget-byte p2, p1, p2

    const/16 v0, 0x8

    if-ge p2, v0, :cond_e

    return v1

    .line 247
    :cond_e
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getHEIF_HEADER_PREFIX$cp()[B

    move-result-object p2

    const/4 v2, 0x4

    invoke-static {p1, p2, v2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->hasPatternAt([B[BI)Z

    move-result p2

    if-nez p2, :cond_1a

    return v1

    .line 250
    :cond_1a
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getHEIF_HEADER_SUFFIXES$cp()[[B

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 283
    array-length v2, p2

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_33

    aget-object v4, p2, v3

    check-cast v4, [B

    .line 251
    invoke-static {p1, v4, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->hasPatternAt([B[BI)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 p1, 0x1

    return p1

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_33
    return v1
.end method

.method private final isIcoHeader([BI)Z
    .registers 4

    .line 208
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getICO_HEADER$cp()[B

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 211
    :cond_9
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getICO_HEADER$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p1

    return p1
.end method

.method private final isJpegHeader([BI)Z
    .registers 4

    .line 121
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getJPEG_HEADER$cp()[B

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_13

    .line 122
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getJPEG_HEADER$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private final isPngHeader([BI)Z
    .registers 4

    .line 147
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getPNG_HEADER$cp()[B

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_13

    .line 148
    invoke-static {}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->access$getPNG_HEADER$cp()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->startsWithPattern([B[B)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
