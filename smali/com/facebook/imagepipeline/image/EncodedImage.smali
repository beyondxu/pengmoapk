###### Class com.facebook.imagepipeline.image.EncodedImage (com.facebook.imagepipeline.image.EncodedImage)
.class public Lcom/facebook/imagepipeline/image/EncodedImage;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field public static final UNKNOWN_HEIGHT:I = -0x1

.field public static final UNKNOWN_ROTATION_ANGLE:I = -0x1

.field public static final UNKNOWN_STREAM_SIZE:I = -0x1

.field public static final UNKNOWN_WIDTH:I = -0x1

.field private static sUseCachedMetadata:Z


# instance fields
.field private mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mColorSpace:Landroid/graphics/ColorSpace;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExifOrientation:I

.field private mHasParsedMetadata:Z

.field private mHeight:I

.field private mImageFormat:Lcom/facebook/imageformat/ImageFormat;

.field private final mInputStreamSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRotationAngle:I

.field private mSampleSize:I

.field private mSource:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStreamSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mExifOrientation:I

    .line 70
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    .line 71
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    const/4 v1, 0x1

    .line 72
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mSampleSize:I

    .line 73
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mStreamSize:I

    .line 86
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    .line 88
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mInputStreamSupplier:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/internal/Supplier;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/internal/Supplier;)V

    .line 93
    iput p2, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mStreamSize:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mExifOrientation:I

    .line 70
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    .line 71
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    const/4 v1, 0x1

    .line 72
    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mSampleSize:I

    .line 73
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mStreamSize:I

    .line 80
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 81
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mInputStreamSupplier:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method public static cloneOrNull(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .registers 1
    .param p0    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_7

    .line 102
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->cloneOrNull()Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .registers 1
    .param p0    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_5

    .line 471
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    :cond_5
    return-void
.end method

.method private internalParseMetaData()V
    .registers 5

    .line 372
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageformat/ImageFormatChecker;->getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 373
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    .line 377
    invoke-static {v0}, Lcom/facebook/imageformat/DefaultImageFormats;->isWebpFormat(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 378
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->readWebPImageSize()Lkotlin/Pair;

    move-result-object v1

    goto :goto_1d

    .line 380
    :cond_15
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->readImageMetaData()Lcom/facebook/imageutils/ImageMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imageutils/ImageMetaData;->getDimensions()Lkotlin/Pair;

    move-result-object v1

    .line 382
    :goto_1d
    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_39

    iget v2, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    if-ne v2, v3, :cond_39

    if-eqz v1, :cond_59

    .line 386
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/JfifUtil;->getOrientation(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mExifOrientation:I

    .line 387
    invoke-static {v0}, Lcom/facebook/imageutils/JfifUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    return-void

    .line 389
    :cond_39
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->HEIF:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_52

    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    if-ne v0, v3, :cond_52

    .line 391
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/HeifExifUtil;->getOrientation(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mExifOrientation:I

    .line 392
    invoke-static {v0}, Lcom/facebook/imageutils/JfifUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    return-void

    .line 393
    :cond_52
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    if-ne v0, v3, :cond_59

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    :cond_59
    return-void
.end method

.method public static isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .registers 2

    .line 459
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    if-ltz v0, :cond_e

    iget p0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .registers 1
    .param p0    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_a

    .line 482
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private parseMetadataIfNeeded()V
    .registers 2

    .line 350
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    if-gez v0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 351
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetaData()V

    return-void
.end method

.method private readImageMetaData()Lcom/facebook/imageutils/ImageMetaData;
    .registers 5

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_34

    .line 420
    :try_start_4
    invoke-static {v0}, Lcom/facebook/imageutils/BitmapUtil;->decodeDimensionsAndColorSpace(Ljava/io/InputStream;)Lcom/facebook/imageutils/ImageMetaData;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Lcom/facebook/imageutils/ImageMetaData;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 422
    invoke-virtual {v1}, Lcom/facebook/imageutils/ImageMetaData;->getDimensions()Lkotlin/Pair;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 424
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    .line 425
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_32

    :cond_2c
    if-eqz v0, :cond_31

    .line 430
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    return-object v1

    :catchall_32
    move-exception v1

    goto :goto_36

    :catchall_34
    move-exception v1

    const/4 v0, 0x0

    :goto_36
    if-eqz v0, :cond_3b

    :try_start_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 435
    :catch_3b
    :cond_3b
    throw v1
.end method

.method private readWebPImageSize()Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_8
    invoke-static {v0}, Lcom/facebook/imageutils/WebpUtil;->getSize(Ljava/io/InputStream;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 408
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    .line 409
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    :cond_26
    return-object v0
.end method

.method public static setUseCachedMetadata(Z)V
    .registers 1

    .line 498
    sput-boolean p0, Lcom/facebook/imagepipeline/image/EncodedImage;->sUseCachedMetadata:Z

    return-void
.end method


# virtual methods
.method public cloneOrNull()Lcom/facebook/imagepipeline/image/EncodedImage;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mInputStreamSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_c

    .line 108
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    iget v2, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mStreamSize:I

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/internal/Supplier;I)V

    goto :goto_1e

    .line 110
    :cond_c
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    .line 111
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v1, 0x0

    goto :goto_1b

    .line 113
    :cond_16
    :try_start_16
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    .line 116
    :goto_1b
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    :goto_1e
    if-eqz v1, :cond_23

    .line 120
    invoke-virtual {v1, p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->copyMetaDataFrom(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    :cond_23
    return-object v1

    :catchall_24
    move-exception v1

    .line 116
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 117
    throw v1
.end method

.method public close()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method public copyMetaDataFrom(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .registers 3

    .line 445
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    .line 446
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    .line 447
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    .line 448
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    .line 449
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getExifOrientation()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mExifOrientation:I

    .line 450
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mSampleSize:I

    .line 451
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mStreamSize:I

    .line 452
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 453
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 454
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->hasParsedMetaData()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHasParsedMetadata:Z

    return-void
.end method

.method public getByteBufferRef()Lcom/facebook/common/references/CloseableReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    return-object v0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetadataIfNeeded()V

    .line 267
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getExifOrientation()I
    .registers 2

    .line 244
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetadataIfNeeded()V

    .line 245
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mExifOrientation:I

    return v0
.end method

.method public getFirstBytesAsHexString(I)Ljava/lang/String;
    .registers 8

    .line 325
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 326
    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    .line 329
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v2

    .line 330
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 331
    new-array v2, p1, [B

    .line 333
    :try_start_13
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/memory/PooledByteBuffer;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_4c

    if-nez v3, :cond_1f

    .line 339
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object v1

    :cond_1f
    const/4 v1, 0x0

    .line 337
    :try_start_20
    invoke-interface {v3, v1, v2, v1, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->read(I[BII)I
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_4c

    .line 339
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p1, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, p1, :cond_47

    .line 342
    aget-byte v4, v2, v3

    .line 343
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 345
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_4c
    move-exception p1

    .line 339
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 340
    throw p1
.end method

.method public getHeight()I
    .registers 2

    .line 256
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetadataIfNeeded()V

    .line 257
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    return v0
.end method

.method public getImageFormat()Lcom/facebook/imageformat/ImageFormat;
    .registers 2

    .line 229
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetadataIfNeeded()V

    .line 230
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mInputStreamSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_b

    .line 157
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 159
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    .line 160
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 163
    :try_start_13
    new-instance v1, Lcom/facebook/common/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v1, v2}, Lcom/facebook/common/memory/PooledByteBufferInputStream;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    .line 165
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object v1

    :catchall_22
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 166
    throw v1

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStreamOrThrow()Ljava/io/InputStream;
    .registers 2

    .line 172
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getRotationAngle()I
    .registers 2

    .line 238
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetadataIfNeeded()V

    .line 239
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    return v0
.end method

.method public getSampleSize()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mSampleSize:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 314
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v0

    return v0

    .line 316
    :cond_17
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mStreamSize:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingReferenceTestOnly()Lcom/facebook/common/references/SharedReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/SharedReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_a

    .line 493
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->getUnderlyingReferenceTestOnly()Lcom/facebook/common/references/SharedReference;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 492
    :goto_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getWidth()I
    .registers 2

    .line 250
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetadataIfNeeded()V

    .line 251
    iget v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    return v0
.end method

.method protected hasParsedMetaData()Z
    .registers 2

    .line 502
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHasParsedMetadata:Z

    return v0
.end method

.method public isCompleteAt(I)Z
    .registers 7

    .line 289
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->DNG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_e

    return v2

    .line 293
    :cond_e
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mInputStreamSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_13

    return v2

    .line 297
    :cond_13
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ge p1, v3, :cond_25

    return v1

    :cond_25
    add-int/lit8 v3, p1, -0x2

    .line 302
    invoke-interface {v0, v3}, Lcom/facebook/common/memory/PooledByteBuffer;->read(I)B

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_38

    sub-int/2addr p1, v2

    .line 303
    invoke-interface {v0, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->read(I)B

    move-result p1

    const/16 v0, -0x27

    if-ne p1, v0, :cond_38

    return v2

    :cond_38
    return v1
.end method

.method public declared-synchronized isValid()Z
    .registers 2

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mPooledByteBufferRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mInputStreamSupplier:Lcom/facebook/common/internal/Supplier;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public parseMetaData()V
    .registers 2

    .line 356
    sget-boolean v0, Lcom/facebook/imagepipeline/image/EncodedImage;->sUseCachedMetadata:Z

    if-nez v0, :cond_8

    .line 357
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->internalParseMetaData()V

    return-void

    .line 361
    :cond_8
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHasParsedMetadata:Z

    if-eqz v0, :cond_d

    return-void

    .line 364
    :cond_d
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->internalParseMetaData()V

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHasParsedMetadata:Z

    return-void
.end method

.method public setBytesRange(Lcom/facebook/imagepipeline/common/BytesRange;)V
    .registers 2
    .param p1    # Lcom/facebook/imagepipeline/common/BytesRange;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    return-void
.end method

.method public setExifOrientation(I)V
    .registers 2

    .line 197
    iput p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mExifOrientation:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 182
    iput p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mHeight:I

    return-void
.end method

.method public setImageFormat(Lcom/facebook/imageformat/ImageFormat;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mImageFormat:Lcom/facebook/imageformat/ImageFormat;

    return-void
.end method

.method public setRotationAngle(I)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mRotationAngle:I

    return-void
.end method

.method public setSampleSize(I)V
    .registers 2

    .line 202
    iput p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mSampleSize:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mSource:Ljava/lang/String;

    return-void
.end method

.method public setStreamSize(I)V
    .registers 2

    .line 211
    iput p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mStreamSize:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 187
    iput p1, p0, Lcom/facebook/imagepipeline/image/EncodedImage;->mWidth:I

    return-void
.end method
