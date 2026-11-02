###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder (com.bumptech.glide.load.resource.bitmap.VideoDecoder)
.class public Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;,
        Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;,
        Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;,
        Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;,
        Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;,
        Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

.field public static final DEFAULT_FRAME:J = -0x1L

.field static final DEFAULT_FRAME_OPTION:I = 0x2

.field public static final FRAME_OPTION:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIXEL_T_BUILD_ID_PREFIXES_REQUIRING_HDR_180_ROTATION_FIX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VideoDecoder"

.field public static final TARGET_FRAME:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEBM_MIME_TYPE:Ljava/lang/String; = "video/webm"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final factory:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

.field private final initializer:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;-><init>()V

    .line 64
    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/Option;->disk(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    const/4 v0, 0x2

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;-><init>()V

    .line 94
    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/Option;->disk(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->FRAME_OPTION:Lcom/bumptech/glide/load/Option;

    .line 117
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    .line 126
    const-string v0, "TP1A"

    const-string v1, "TD1A.220804.031"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->PIXEL_T_BUILD_ID_PREFIXES_REQUIRING_HDR_180_ROTATION_FIX:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer<",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 159
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->initializer:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;

    .line 160
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->factory:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    return-void
.end method

.method public static asset(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;)V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V

    return-object v0
.end method

.method public static byteBuffer(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V

    return-object v0
.end method

.method private static correctHdr180DegVideoFrameOrientation(Landroid/media/MediaMetadataRetriever;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    .line 279
    const-string v0, "VideoDecoder"

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->isHdr180RotationFixRequired()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    move-object p0, p1

    goto :goto_66

    :cond_a
    const/4 v1, 0x3

    .line 284
    :try_start_b
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->isHDR(Landroid/media/MediaMetadataRetriever;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x18

    .line 286
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 289
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1f} :catch_59

    const/16 v2, 0xb4

    if-ne p0, v2, :cond_57

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 302
    const-string p0, "Applying HDR 180 deg thumbnail correction"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2e
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v0, 0x43340000    # 180.0f

    .line 305
    invoke-virtual {v6, v0, p0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 307
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_57
    move-object p0, p1

    return-object p0

    :catch_59
    move-object p0, p1

    nop

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 293
    const-string p1, "Exception trying to extract HDR transfer function or rotation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-object p0
.end method

.method private decodeFrame(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/media/MediaMetadataRetriever;",
            "JIII",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->isUnsupportedFormat(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 233
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_1b

    const/high16 p1, -0x80000000

    if-eq p6, p1, :cond_1b

    if-eq p7, p1, :cond_1b

    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->NONE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    if-eq p8, p1, :cond_1b

    .line 238
    invoke-static/range {p2 .. p8}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->decodeScaledFrame(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-nez p1, :cond_22

    .line 243
    invoke-static {p2, p3, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->decodeOriginalFrame(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 249
    :cond_22
    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->correctHdr180DegVideoFrameOrientation(Landroid/media/MediaMetadataRetriever;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_29

    return-object p1

    .line 256
    :cond_29
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;-><init>()V

    throw p1

    .line 223
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot decode VP8 video on CrOS."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static decodeOriginalFrame(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .registers 4

    .line 413
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeScaledFrame(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .registers 16

    const/16 v0, 0x12

    .line 369
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    .line 373
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    .line 377
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_26

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_29

    :cond_26
    move v8, v1

    move v1, v0

    move v0, v8

    .line 388
    :cond_29
    invoke-virtual {p6, v0, v1, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float p5, p5, p4

    .line 390
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float p4, p4, p5

    .line 391
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    .line 393
    invoke-static/range {v2 .. v7}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_43

    return-object p0

    :catchall_43
    move-exception v0

    move-object p0, v0

    const/4 p1, 0x3

    .line 400
    const-string p2, "VideoDecoder"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 401
    const-string p1, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isHDR(Landroid/media/MediaMetadataRetriever;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x24

    .line 321
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    .line 323
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 325
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eq v0, v1, :cond_1a

    if-ne v0, v2, :cond_1e

    :cond_1a
    if-ne p0, v2, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method static isHdr180RotationFixRequired()Z
    .registers 3

    .line 337
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Pixel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_15

    .line 338
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->isTBuildRequiringRotationFix()Z

    move-result v0

    return v0

    .line 340
    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private static isTBuildRequiringRotationFix()Z
    .registers 3

    .line 349
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->PIXEL_T_BUILD_ID_PREFIXES_REQUIRING_HDR_180_ROTATION_FIX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private isUnsupportedFormat(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/media/MediaMetadataRetriever;",
            ")Z"
        }
    .end annotation

    .line 420
    const-string v0, "VideoDecoder"

    .line 425
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6f

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, ".+_cheets|cheets_.+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const/16 v1, 0xc

    const/4 v3, 0x0

    .line 434
    :try_start_14
    invoke-virtual {p2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    .line 435
    const-string/jumbo v1, "video/webm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    return v2

    .line 440
    :cond_22
    new-instance p2, Landroid/media/MediaExtractor;

    invoke-direct {p2}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_55

    .line 441
    :try_start_27
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->initializer:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;

    invoke-interface {v1, p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;->initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_31
    if-ge v1, p1, :cond_4e

    .line 444
    invoke-virtual {p2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 445
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    const-string/jumbo v4, "video/x-vnd.on2.vp8"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_52

    if-eqz v3, :cond_4b

    .line 457
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    const/4 p1, 0x1

    return p1

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_4e
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_67

    :catchall_52
    move-exception p1

    move-object v3, p2

    goto :goto_56

    :catchall_55
    move-exception p1

    :goto_56
    const/4 p2, 0x3

    .line 452
    :try_start_57
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 453
    const-string p2, "Exception trying to extract track info for a webm video on CrOS."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_68

    :cond_62
    if-eqz v3, :cond_67

    .line 457
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    :cond_67
    :goto_67
    return v2

    :catchall_68
    move-exception p1

    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 459
    :cond_6e
    throw p1

    :cond_6f
    return v2
.end method

.method public static parcel(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gez v2, :cond_2d

    const-wide/16 v0, -0x1

    cmp-long v2, v4, v0

    if-nez v2, :cond_19

    goto :goto_2d

    .line 177
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_2d
    :goto_2d
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->FRAME_OPTION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3c

    const/4 v0, 0x2

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    :cond_3c
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    if-nez p4, :cond_48

    .line 186
    sget-object p4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    :cond_48
    move-object v9, p4

    .line 190
    iget-object p4, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->factory:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    invoke-virtual {p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;->build()Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    const/16 p4, 0x1d

    .line 192
    :try_start_51
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->initializer:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;

    invoke-interface {v1, v3, p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;->initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_76

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    .line 194
    :try_start_5e
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->decodeFrame(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_74

    .line 203
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_6a

    .line 204
    invoke-static {v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    goto :goto_6d

    .line 206
    :cond_6a
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 210
    :goto_6d
    iget-object p2, v1, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object p1

    return-object p1

    :catchall_74
    move-exception v0

    goto :goto_78

    :catchall_76
    move-exception v0

    move-object v1, p0

    :goto_78
    move-object p1, v0

    .line 203
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_81

    .line 204
    invoke-static {v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    goto :goto_84

    .line 206
    :cond_81
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 208
    :goto_84
    throw p1
.end method

.method public handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/load/Options;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.AnonymousClass1 (com.bumptech.glide.load.resource.bitmap.VideoDecoder$1)
.class Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Option$CacheKeyUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public update([BLjava/lang/Long;Ljava/security/MessageDigest;)V
    .registers 7

    .line 75
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter p1

    .line 77
    :try_start_6
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 79
    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p2

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw p2
.end method

.method public bridge synthetic update([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 4

    .line 67
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;->update([BLjava/lang/Long;Ljava/security/MessageDigest;)V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.AnonymousClass2 (com.bumptech.glide.load.resource.bitmap.VideoDecoder$2)
.class Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Option$CacheKeyUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 98
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public update([BLjava/lang/Integer;Ljava/security/MessageDigest;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 109
    :cond_3
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter p1

    .line 111
    :try_start_9
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    monitor-exit p1

    return-void

    :catchall_22
    move-exception p2

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw p2
.end method

.method public bridge synthetic update([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 4

    .line 97
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->update([BLjava/lang/Integer;Ljava/security/MessageDigest;)V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.AssetFileDescriptorInitializer (com.bumptech.glide.load.resource.bitmap.VideoDecoder$AssetFileDescriptorInitializer)
.class final Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssetFileDescriptorInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$1;)V
    .registers 2

    .line 480
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeExtractor(Landroid/media/MediaExtractor;Landroid/content/res/AssetFileDescriptor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public bridge synthetic initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;->initializeExtractor(Landroid/media/MediaExtractor;Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public initializeRetriever(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;)V
    .registers 9

    .line 485
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public bridge synthetic initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .registers 3

    .line 479
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;->initializeRetriever(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.ByteBufferInitializer (com.bumptech.glide.load.resource.bitmap.VideoDecoder$ByteBufferInitializer)
.class final Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByteBufferInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;
    .registers 3

    .line 527
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->initializeExtractor(Landroid/media/MediaExtractor;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public initializeExtractor(Landroid/media/MediaExtractor;Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;

    move-result-object p2

    invoke-static {p1, p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;Landroid/media/MediaDataSource;)V

    return-void
.end method

.method public bridge synthetic initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .registers 3

    .line 512
    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 517
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;

    move-result-object p2

    invoke-static {p1, p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.ByteBufferInitializer.AnonymousClass1 (com.bumptech.glide.load.resource.bitmap.VideoDecoder$ByteBufferInitializer$1)
.class Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;
.super Landroid/media/MediaDataSource;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;

.field final synthetic val$data:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 527
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->this$0:Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public getSize()J
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 9

    .line 530
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    const/4 p1, -0x1

    return p1

    .line 533
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 535
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3, p4, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p1
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer (com.bumptech.glide.load.resource.bitmap.VideoDecoder$MediaInitializer)
.class interface abstract Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaExtractor;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaMetadataRetriever;",
            "TT;)V"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaMetadataRetrieverFactory (com.bumptech.glide.load.resource.bitmap.VideoDecoder$MediaMetadataRetrieverFactory)
.class Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaMetadataRetrieverFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaMetadataRetriever;
    .registers 2

    .line 467
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    return-object v0
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.ParcelFileDescriptorInitializer (com.bumptech.glide.load.resource.bitmap.VideoDecoder$ParcelFileDescriptorInitializer)
.class final Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParcelFileDescriptorInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeExtractor(Landroid/media/MediaExtractor;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bridge synthetic initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;->initializeExtractor(Landroid/media/MediaExtractor;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public initializeRetriever(Landroid/media/MediaMetadataRetriever;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 501
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bridge synthetic initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .registers 3

    .line 496
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;->initializeRetriever(Landroid/media/MediaMetadataRetriever;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.VideoDecoder.VideoDecoderException (com.bumptech.glide.load.resource.bitmap.VideoDecoder$VideoDecoderException)
.class final Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;
.super Ljava/lang/RuntimeException;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoDecoderException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237a185c41ac03a7L


# direct methods
.method constructor <init>()V
    .registers 2

    .line 555
    const-string v0, "MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
