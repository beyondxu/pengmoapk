###### Class com.facebook.webpsupport.WebPImageDecoder (com.facebook.webpsupport.WebPImageDecoder)
.class public Lcom/facebook/webpsupport/WebPImageDecoder;
.super Ljava/lang/Object;
.source "WebPImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/ImageDecoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitmapToCloseableImage(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->getInstance()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    .line 79
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap$-CC;->of(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeByteBuffer(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 p4, 0x0

    invoke-static {p0, p4, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 57
    invoke-static {p0, p1, p3}, Lcom/facebook/webpsupport/WebPImageDecoder;->bitmapToCloseableImage(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p0

    return-object p0
.end method

.method private static decodeInputStream(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStreamOrThrow()Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_1f

    const/4 p3, 0x0

    .line 64
    :try_start_5
    invoke-static {p1, p3, p3}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 65
    invoke-static {p3, p0, p2}, Lcom/facebook/webpsupport/WebPImageDecoder;->bitmapToCloseableImage(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    if-eqz p1, :cond_12

    .line 66
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1f

    :cond_12
    return-object p0

    :catchall_13
    move-exception p0

    if-eqz p1, :cond_1e

    .line 63
    :try_start_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    :try_start_1b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    throw p0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p0

    .line 67
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error while decoding WebP"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :try_start_7
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 38
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 40
    invoke-static {v1, p1, p2, p3, p4}, Lcom/facebook/webpsupport/WebPImageDecoder;->decodeByteBuffer(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_23

    .line 43
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object p1

    :cond_1b
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 46
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/webpsupport/WebPImageDecoder;->decodeInputStream(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    :catchall_23
    move-exception p1

    .line 43
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 44
    throw p1
.end method
