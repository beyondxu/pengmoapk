###### Class com.facebook.imagepipeline.decoder.DefaultImageDecoder (com.facebook.imagepipeline.decoder.DefaultImageDecoder)
.class public Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/ImageDecoder;


# instance fields
.field private final mAnimatedGifDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mAnimatedWebPDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCustomDecoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/ImageFormat;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private final mEnableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnableEncodedImageColorSpaceUsage(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)Lcom/facebook/common/internal/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mEnableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/platform/PlatformDecoder;)V
    .registers 5
    .param p1    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;-><init>(Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/platform/PlatformDecoder;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/platform/PlatformDecoder;Ljava/util/Map;)V
    .registers 6
    .param p1    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/platform/PlatformDecoder;",
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/ImageFormat;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;-><init>(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mDefaultDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 100
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mAnimatedGifDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 101
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mAnimatedWebPDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 102
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    .line 103
    iput-object p4, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mCustomDecoders:Ljava/util/Map;

    .line 104
    sget-object p1, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;

    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mEnableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/platform/PlatformDecoder;Ljava/util/Map;Lcom/facebook/common/internal/Supplier;)V
    .registers 7
    .param p1    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/platform/PlatformDecoder;",
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/ImageFormat;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;-><init>(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mDefaultDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 113
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mAnimatedGifDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 114
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mAnimatedWebPDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 115
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    .line 116
    iput-object p4, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mCustomDecoders:Ljava/util/Map;

    .line 117
    iput-object p5, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mEnableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method public decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    iget-object v0, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->customImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    if-eqz v0, :cond_b

    .line 136
    iget-object v0, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->customImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 138
    :cond_b
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 139
    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_22

    .line 140
    :cond_15
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 142
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatChecker;->getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->setImageFormat(Lcom/facebook/imageformat/ImageFormat;)V

    .line 146
    :cond_22
    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mCustomDecoders:Ljava/util/Map;

    if-eqz v1, :cond_33

    .line 147
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    if-eqz v0, :cond_33

    .line 149
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 152
    :cond_33
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mDefaultDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1
.end method

.method public decodeAnimatedWebp(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 262
    iget-boolean v0, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mAnimatedWebPDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    if-eqz v0, :cond_d

    .line 263
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 265
    :cond_d
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    return-object p1
.end method

.method public decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 166
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 167
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_1f

    .line 170
    iget-boolean v0, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mAnimatedGifDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    if-eqz v0, :cond_1a

    .line 171
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 173
    :cond_1a
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    return-object p1

    .line 168
    :cond_1f
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "image width or height is incorrect"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw p2
.end method

.method public decodeJpeg(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/ColorSpace;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    .registers 12
    .param p5    # Landroid/graphics/ColorSpace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    iget-object v2, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move-object v5, p5

    .line 223
    invoke-interface/range {v0 .. v5}, Lcom/facebook/imagepipeline/platform/PlatformDecoder;->decodeJPEGFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 226
    :try_start_c
    iget-object p2, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;

    .line 227
    invoke-static {p2, p1}, Lcom/facebook/imagepipeline/transformation/TransformationUtils;->maybeApplyTransformation(Lcom/facebook/imagepipeline/transformation/BitmapTransformation;Lcom/facebook/common/references/CloseableReference;)Z

    move-result p2

    .line 230
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result p5

    .line 236
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getExifOrientation()I

    move-result v0

    .line 232
    invoke-static {p1, p3, p5, v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap$-CC;->of(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p3

    .line 238
    const-string p5, "is_rounded"

    if-eqz p2, :cond_2d

    iget-object p2, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;

    instance-of p2, p2, Lcom/facebook/imagepipeline/transformation/CircularTransformation;

    if-eqz p2, :cond_2d

    const/4 p2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    .line 240
    :goto_2e
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 238
    invoke-interface {p3, p5, p2}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_39

    .line 244
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object p3

    :catchall_39
    move-exception v0

    move-object p2, v0

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 245
    throw p2
.end method

.method public decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    iget-object v1, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->colorSpace:Landroid/graphics/ColorSpace;

    .line 183
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/facebook/imagepipeline/platform/PlatformDecoder;->decodeFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 186
    :try_start_b
    iget-object v1, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;

    .line 187
    invoke-static {v1, v0}, Lcom/facebook/imagepipeline/transformation/TransformationUtils;->maybeApplyTransformation(Lcom/facebook/imagepipeline/transformation/BitmapTransformation;Lcom/facebook/common/references/CloseableReference;)Z

    move-result v1

    .line 190
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 195
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v3

    .line 196
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getExifOrientation()I

    move-result p1

    .line 192
    invoke-static {v0, v2, v3, p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap$-CC;->of(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    .line 198
    const-string v2, "is_rounded"

    if-eqz v1, :cond_2e

    iget-object p2, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;

    instance-of p2, p2, Lcom/facebook/imagepipeline/transformation/CircularTransformation;

    if-eqz p2, :cond_2e

    const/4 p2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    .line 200
    :goto_2f
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 198
    invoke-interface {p1, v2, p2}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3a

    .line 204
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object p1

    :catchall_3a
    move-exception p1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 205
    throw p1
.end method

###### Class com.facebook.imagepipeline.decoder.DefaultImageDecoder.AnonymousClass1 (com.facebook.imagepipeline.decoder.DefaultImageDecoder$1)
.class Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 13
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-static {v1}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->-$$Nest$fgetmEnableEncodedImageColorSpaceUsage(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 69
    iget-object v1, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->colorSpace:Landroid/graphics/ColorSpace;

    if-nez v1, :cond_1f

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_24

    :cond_1f
    iget-object v1, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->colorSpace:Landroid/graphics/ColorSpace;

    goto :goto_24

    .line 71
    :cond_22
    iget-object v1, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->colorSpace:Landroid/graphics/ColorSpace;

    :goto_24
    move-object v7, v1

    .line 73
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_34

    .line 74
    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeJpeg(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/ColorSpace;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    return-object p1

    :cond_34
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 75
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->GIF:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, p1, :cond_43

    .line 76
    iget-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 77
    :cond_43
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, p1, :cond_4e

    .line 78
    iget-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeAnimatedWebp(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 79
    :cond_4e
    sget-object p1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, p1, :cond_59

    .line 82
    iget-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual {p1, v3, v6}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    return-object p1

    .line 80
    :cond_59
    new-instance p1, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string/jumbo p2, "unknown image format"

    invoke-direct {p1, p2, v3}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw p1
.end method
