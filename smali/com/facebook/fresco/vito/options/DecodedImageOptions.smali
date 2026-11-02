###### Class com.facebook.fresco.vito.options.DecodedImageOptions (com.facebook.fresco.vito.options.DecodedImageOptions)
.class public Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.super Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.source "DecodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001BB\u0013\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u00107\u001a\u00020+J\u0013\u00108\u001a\u00020+2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0096\u0002J\u0010\u0010;\u001a\u00020+2\u0006\u00109\u001a\u00020\u0000H\u0004J\u0008\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020?H\u0016J\u0008\u0010@\u001a\u00020AH\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010.\u001a\u00020+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010-R\u0013\u00100\u001a\u0004\u0018\u000101\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0015\u00104\u001a\u0004\u0018\u00010+\u00a2\u0006\n\n\u0002\u00106\u001a\u0004\u00084\u00105\u00a8\u0006C"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions;",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions;",
        "builder",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "<init>",
        "(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "getResizeOptions",
        "()Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "downsampleOverride",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "getDownsampleOverride",
        "()Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "rotationOptions",
        "Lcom/facebook/imagepipeline/common/RotationOptions;",
        "getRotationOptions",
        "()Lcom/facebook/imagepipeline/common/RotationOptions;",
        "postprocessor",
        "Lcom/facebook/imagepipeline/request/Postprocessor;",
        "getPostprocessor",
        "()Lcom/facebook/imagepipeline/request/Postprocessor;",
        "imageDecodeOptions",
        "Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "getImageDecodeOptions",
        "()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "roundingOptions",
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "getRoundingOptions",
        "()Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "borderOptions",
        "Lcom/facebook/fresco/vito/options/BorderOptions;",
        "getBorderOptions",
        "()Lcom/facebook/fresco/vito/options/BorderOptions;",
        "actualImageScaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "getActualImageScaleType",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "actualImageFocusPoint",
        "Landroid/graphics/PointF;",
        "getActualImageFocusPoint",
        "()Landroid/graphics/PointF;",
        "mLocalThumbnailPreviewsEnabled",
        "",
        "getMLocalThumbnailPreviewsEnabled",
        "()Z",
        "loadThumbnailOnly",
        "getLoadThumbnailOnly",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "getBitmapConfig",
        "()Landroid/graphics/Bitmap$Config;",
        "isProgressiveDecodingEnabled",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "areLocalThumbnailPreviewsEnabled",
        "equals",
        "other",
        "",
        "equalDecodedOptions",
        "hashCode",
        "",
        "toString",
        "",
        "toStringHelper",
        "Lcom/facebook/common/internal/Objects$ToStringHelper;",
        "Builder",
        "options_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final actualImageFocusPoint:Landroid/graphics/PointF;

.field private final actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

.field private final downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private final imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private final isProgressiveDecodingEnabled:Ljava/lang/Boolean;

.field private final loadThumbnailOnly:Z

.field private final mLocalThumbnailPreviewsEnabled:Z

.field private final postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

.field private final resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

.field private final rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private final roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V

    .line 21
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getResizeOptions$options_release()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 22
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getDownsampleOverride$options_release()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getRotationOptions$options_release()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 24
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getPostprocessor$options_release()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 25
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getImageDecodeOptions$options_release()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getRoundingOptions$options_release()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 27
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getBorderOptions$options_release()Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 28
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getActualImageScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getActualFocusPoint$options_release()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    .line 30
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getLocalThumbnailPreviewsEnabled$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 31
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getLoadThumbnailOnly$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    .line 32
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getBitmapConfig$options_release()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 33
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getProgressiveDecodingEnabled$options_release()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final areLocalThumbnailPreviewsEnabled()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    return v0
.end method

.method protected final equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z
    .registers 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 47
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 48
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 49
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 50
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 51
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 52
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 53
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 54
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 55
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    iget-boolean v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    if-ne v0, v1, :cond_83

    .line 56
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    iget-boolean v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    if-ne v0, v1, :cond_83

    .line 57
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_83

    .line 58
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_83

    .line 60
    :cond_7c
    check-cast p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z

    move-result p1

    return p1

    :cond_83
    :goto_83
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1c

    .line 42
    :cond_15
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final getActualImageFocusPoint()Landroid/graphics/PointF;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getActualImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getBorderOptions()Lcom/facebook/fresco/vito/options/BorderOptions;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    return-object v0
.end method

.method public final getDownsampleOverride()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object v0
.end method

.method public final getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-object v0
.end method

.method public final getLoadThumbnailOnly()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    return v0
.end method

.method public final getMLocalThumbnailPreviewsEnabled()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    return v0
.end method

.method public final getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    return-object v0
.end method

.method public final getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-object v0
.end method

.method public final getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public final getRoundingOptions()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 64
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/ResizeOptions;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/DownsampleMode;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/RotationOptions;->hashCode()I

    move-result v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->hashCode()I

    move-result v1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/options/RoundingOptions;->hashCode()I

    move-result v1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/options/BorderOptions;->hashCode()I

    move-result v1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :goto_75
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_8c

    :cond_8b
    const/4 v1, 0x0

    :goto_8c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_97

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_97
    add-int/2addr v0, v2

    return v0
.end method

.method public final isProgressiveDecodingEnabled()Ljava/lang/Boolean;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 81
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DecodedImageOptions{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;
    .registers 4

    .line 84
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 85
    const-string v1, "resizeOptions"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 86
    const-string v1, "downsampleOverride"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 87
    const-string v1, "rotationOptions"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 88
    const-string v1, "postprocessor"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 89
    const-string v1, "imageDecodeOptions"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 90
    const-string v1, "roundingOptions"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 91
    const-string v1, "borderOptions"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 92
    const-string v1, "actualImageScaleType"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 93
    const-string v1, "actualImageFocusPoint"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 94
    const-string v1, "localThumbnailPreviewsEnabled"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 95
    const-string v1, "loadThumbnailOnly"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 96
    const-string v1, "bitmapConfig"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 97
    const-string v1, "progressiveRenderingEnabled"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "add(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.fresco.vito.options.DecodedImageOptions.Builder (com.facebook.fresco.vito.options.DecodedImageOptions$Builder)
.class public Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
.super Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
.source "DecodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
        "TT;>;>",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDecodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n1#1,205:1\n200#1,2:206\n200#1,2:208\n200#1,2:210\n200#1,2:212\n200#1,2:214\n200#1,2:216\n200#1,2:218\n200#1,2:220\n200#1,2:222\n200#1,2:224\n200#1,2:226\n200#1,2:228\n200#1,2:230\n*S KotlinDebug\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n134#1:206,2\n142#1:208,2\n146#1:210,2\n150#1:212,2\n154#1:214,2\n164#1:216,2\n168#1:218,2\n170#1:220,2\n175#1:222,2\n183#1:224,2\n187#1:226,2\n191#1:228,2\n193#1:230,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u0011\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0003\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0003\u0010\nJ\u0015\u0010V\u001a\u00028\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010WJ\u0015\u0010\u0011\u001a\u00028\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010XJ\u0015\u0010Y\u001a\u00028\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010ZJ\u0015\u0010[\u001a\u00028\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0002\u0010\\J\u0015\u0010#\u001a\u00028\u00002\u0008\u0010#\u001a\u0004\u0018\u00010$\u00a2\u0006\u0002\u0010]J\u0015\u0010^\u001a\u00028\u00002\u0008\u0010)\u001a\u0004\u0018\u00010*\u00a2\u0006\u0002\u0010_J\u0015\u0010`\u001a\u00028\u00002\u0008\u0010/\u001a\u0004\u0018\u000100\u00a2\u0006\u0002\u0010aJ\u0015\u0010b\u001a\u00028\u00002\u0008\u00105\u001a\u0004\u0018\u000106\u00a2\u0006\u0002\u0010cJ\u0015\u0010d\u001a\u00028\u00002\u0008\u0010d\u001a\u0004\u0018\u00010<\u00a2\u0006\u0002\u0010eJ\u0013\u0010A\u001a\u00028\u00002\u0006\u0010A\u001a\u00020B\u00a2\u0006\u0002\u0010fJ\u0013\u0010G\u001a\u00028\u00002\u0006\u0010G\u001a\u00020B\u00a2\u0006\u0002\u0010fJ\u0015\u0010J\u001a\u00028\u00002\u0008\u0010J\u001a\u0004\u0018\u00010K\u00a2\u0006\u0002\u0010gJ\u0015\u0010h\u001a\u00028\u00002\u0008\u0010P\u001a\u0004\u0018\u00010B\u00a2\u0006\u0002\u0010iJ\u0008\u0010j\u001a\u00020\u0006H\u0016J-\u0010k\u001a\u00028\u00002\u001d\u0010l\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020n0m\u00a2\u0006\u0002\u0008oH\u0082\u0008\u00a2\u0006\u0002\u0010pR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u00105\u001a\u000206X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001c\u0010;\u001a\u0004\u0018\u00010<X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001a\u0010A\u001a\u00020BX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001a\u0010G\u001a\u00020BX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010D\"\u0004\u0008I\u0010FR\u001c\u0010J\u001a\u0004\u0018\u00010KX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u001e\u0010P\u001a\u0004\u0018\u00010BX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010U\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010T\u00a8\u0006q"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "T",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "<init>",
        "()V",
        "decodedImageOptions",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions;",
        "(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)V",
        "defaultOptions",
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "(Lcom/facebook/fresco/vito/options/ImageOptions;)V",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "getResizeOptions$options_release",
        "()Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "setResizeOptions$options_release",
        "(Lcom/facebook/imagepipeline/common/ResizeOptions;)V",
        "downsampleOverride",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "getDownsampleOverride$options_release",
        "()Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "setDownsampleOverride$options_release",
        "(Lcom/facebook/imagepipeline/core/DownsampleMode;)V",
        "rotationOptions",
        "Lcom/facebook/imagepipeline/common/RotationOptions;",
        "getRotationOptions$options_release",
        "()Lcom/facebook/imagepipeline/common/RotationOptions;",
        "setRotationOptions$options_release",
        "(Lcom/facebook/imagepipeline/common/RotationOptions;)V",
        "postprocessor",
        "Lcom/facebook/imagepipeline/request/Postprocessor;",
        "getPostprocessor$options_release",
        "()Lcom/facebook/imagepipeline/request/Postprocessor;",
        "setPostprocessor$options_release",
        "(Lcom/facebook/imagepipeline/request/Postprocessor;)V",
        "imageDecodeOptions",
        "Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "getImageDecodeOptions$options_release",
        "()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "setImageDecodeOptions$options_release",
        "(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)V",
        "roundingOptions",
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "getRoundingOptions$options_release",
        "()Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "setRoundingOptions$options_release",
        "(Lcom/facebook/fresco/vito/options/RoundingOptions;)V",
        "borderOptions",
        "Lcom/facebook/fresco/vito/options/BorderOptions;",
        "getBorderOptions$options_release",
        "()Lcom/facebook/fresco/vito/options/BorderOptions;",
        "setBorderOptions$options_release",
        "(Lcom/facebook/fresco/vito/options/BorderOptions;)V",
        "actualImageScaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "getActualImageScaleType$options_release",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "setActualImageScaleType$options_release",
        "(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V",
        "actualFocusPoint",
        "Landroid/graphics/PointF;",
        "getActualFocusPoint$options_release",
        "()Landroid/graphics/PointF;",
        "setActualFocusPoint$options_release",
        "(Landroid/graphics/PointF;)V",
        "localThumbnailPreviewsEnabled",
        "",
        "getLocalThumbnailPreviewsEnabled$options_release",
        "()Z",
        "setLocalThumbnailPreviewsEnabled$options_release",
        "(Z)V",
        "loadThumbnailOnly",
        "getLoadThumbnailOnly$options_release",
        "setLoadThumbnailOnly$options_release",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "getBitmapConfig$options_release",
        "()Landroid/graphics/Bitmap$Config;",
        "setBitmapConfig$options_release",
        "(Landroid/graphics/Bitmap$Config;)V",
        "progressiveDecodingEnabled",
        "getProgressiveDecodingEnabled$options_release",
        "()Ljava/lang/Boolean;",
        "setProgressiveDecodingEnabled$options_release",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "resize",
        "(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "rotate",
        "(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "postprocess",
        "(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "round",
        "(Lcom/facebook/fresco/vito/options/RoundingOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "borders",
        "(Lcom/facebook/fresco/vito/options/BorderOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "scale",
        "(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "focusPoint",
        "(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "(Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "progressiveRendering",
        "(Ljava/lang/Boolean;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "build",
        "modify",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "options_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private actualFocusPoint:Landroid/graphics/PointF;

.field private actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

.field private downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private loadThumbnailOnly:Z

.field private localThumbnailPreviewsEnabled:Z

.field private postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

.field private progressiveDecodingEnabled:Ljava/lang/Boolean;

.field private resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

.field private rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 114
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;-><init>()V

    .line 107
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)V
    .registers 4

    const-string v0, "decodedImageOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V

    .line 107
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 117
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 118
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getDownsampleOverride()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 119
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 120
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 121
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 122
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getRoundingOptions()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 123
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getBorderOptions()Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 124
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getActualImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 125
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getActualImageFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 126
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->areLocalThumbnailPreviewsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 127
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getLoadThumbnailOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 128
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 129
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .registers 3

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)V

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .line 200
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method


# virtual methods
.method public final bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .line 228
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 191
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 229
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final borders(Lcom/facebook/fresco/vito/options/BorderOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/BorderOptions;",
            ")TT;"
        }
    .end annotation

    .line 218
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 168
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 219
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;
    .registers 2

    .line 197
    new-instance v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    return-object v0
.end method

.method public final downsampleOverride(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/DownsampleMode;",
            ")TT;"
        }
    .end annotation

    .line 208
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 143
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 209
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final focusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")TT;"
        }
    .end annotation

    .line 222
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 175
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 223
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final getActualFocusPoint$options_release()Landroid/graphics/PointF;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getActualImageScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final getBitmapConfig$options_release()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getBorderOptions$options_release()Lcom/facebook/fresco/vito/options/BorderOptions;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    return-object v0
.end method

.method public final getDownsampleOverride$options_release()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object v0
.end method

.method public final getImageDecodeOptions$options_release()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-object v0
.end method

.method public final getLoadThumbnailOnly$options_release()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    return v0
.end method

.method public final getLocalThumbnailPreviewsEnabled$options_release()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    return v0
.end method

.method public final getPostprocessor$options_release()Lcom/facebook/imagepipeline/request/Postprocessor;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    return-object v0
.end method

.method public final getProgressiveDecodingEnabled$options_release()Ljava/lang/Boolean;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getResizeOptions$options_release()Lcom/facebook/imagepipeline/common/ResizeOptions;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-object v0
.end method

.method public final getRotationOptions$options_release()Lcom/facebook/imagepipeline/common/RotationOptions;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public final getRoundingOptions$options_release()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-object v0
.end method

.method public final imageDecodeOptions(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
            ")TT;"
        }
    .end annotation

    .line 214
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 155
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 215
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final loadThumbnailOnly(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 226
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 188
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 227
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final localThumbnailPreviewsEnabled(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 224
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 184
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 225
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final postprocess(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/Postprocessor;",
            ")TT;"
        }
    .end annotation

    .line 212
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 151
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 213
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final progressiveRendering(Ljava/lang/Boolean;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TT;"
        }
    .end annotation

    .line 230
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 194
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 231
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final resize(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/ResizeOptions;",
            ")TT;"
        }
    .end annotation

    .line 206
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 134
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 207
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final rotate(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/RotationOptions;",
            ")TT;"
        }
    .end annotation

    .line 210
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 147
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 211
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final round(Lcom/facebook/fresco/vito/options/RoundingOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/RoundingOptions;",
            ")TT;"
        }
    .end annotation

    .line 216
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 165
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 217
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final scale(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
            ")TT;"
        }
    .end annotation

    .line 220
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    if-nez p1, :cond_f

    .line 172
    sget-object p1, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getActualImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object p1

    .line 171
    :cond_f
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 221
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final setActualFocusPoint$options_release(Landroid/graphics/PointF;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public final setActualImageScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final setBitmapConfig$options_release(Landroid/graphics/Bitmap$Config;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final setBorderOptions$options_release(Lcom/facebook/fresco/vito/options/BorderOptions;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    return-void
.end method

.method public final setDownsampleOverride$options_release(Lcom/facebook/imagepipeline/core/DownsampleMode;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-void
.end method

.method public final setImageDecodeOptions$options_release(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-void
.end method

.method public final setLoadThumbnailOnly$options_release(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    return-void
.end method

.method public final setLocalThumbnailPreviewsEnabled$options_release(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    return-void
.end method

.method public final setPostprocessor$options_release(Lcom/facebook/imagepipeline/request/Postprocessor;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    return-void
.end method

.method public final setProgressiveDecodingEnabled$options_release(Ljava/lang/Boolean;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setResizeOptions$options_release(Lcom/facebook/imagepipeline/common/ResizeOptions;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-void
.end method

.method public final setRotationOptions$options_release(Lcom/facebook/imagepipeline/common/RotationOptions;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-void
.end method

.method public final setRoundingOptions$options_release(Lcom/facebook/fresco/vito/options/RoundingOptions;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-void
.end method
