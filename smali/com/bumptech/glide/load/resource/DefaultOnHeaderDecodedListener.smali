###### Class com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener (com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener)
.class public final Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;
.super Ljava/lang/Object;
.source "DefaultOnHeaderDecodedListener.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageDecoder"


# instance fields
.field private final decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

.field private final isHardwareConfigAllowed:Z

.field private final preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

.field private final requestedHeight:I

.field private final requestedWidth:I

.field private final strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;


# direct methods
.method public constructor <init>(IILcom/bumptech/glide/load/Options;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 47
    iput p1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedWidth:I

    .line 48
    iput p2, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedHeight:I

    .line 49
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/DecodeFormat;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 50
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 51
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 52
    invoke-virtual {p3, p1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_39

    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 53
    invoke-virtual {p3, p1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->isHardwareConfigAllowed:Z

    .line 54
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/PreferredColorSpace;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 10

    .line 60
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    iget v0, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedWidth:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedHeight:I

    iget-boolean v2, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->isHardwareConfigAllowed:Z

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed(IIZZ)Z

    move-result p3

    if-eqz p3, :cond_14

    const/4 p3, 0x3

    .line 65
    invoke-static {p1, p3}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder;I)V

    goto :goto_18

    :cond_14
    const/4 p3, 0x1

    .line 67
    invoke-static {p1, p3}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder;I)V

    .line 70
    :goto_18
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne p3, v0, :cond_21

    .line 71
    invoke-static {p1, v3}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/graphics/ImageDecoder;I)V

    .line 74
    :cond_21
    new-instance p3, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener$1;

    invoke-direct {p3, p0}, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener$1;-><init>(Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;)V

    invoke-static {p1, p3}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 83
    invoke-static {p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    move-result-object p3

    .line 84
    iget v0, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_37

    .line 86
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 88
    :cond_37
    iget v2, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedHeight:I

    if-ne v2, v1, :cond_3f

    .line 90
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 93
    :cond_3f
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 94
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v0

    .line 96
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 97
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    .line 98
    const-string v4, "ImageDecoder"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Resizing from ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] to ["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] scaleFactor: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 99
    invoke-static {v4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_a4
    invoke-static {p1, v1, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder;II)V

    .line 117
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

    if-eqz p3, :cond_e9

    .line 118
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_d8

    .line 119
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    if-ne p3, v0, :cond_cc

    .line 121
    invoke-static {p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    move-result-object p3

    if-eqz p3, :cond_cc

    .line 122
    invoke-static {p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ColorSpace;)Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 124
    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    goto :goto_d0

    :cond_cc
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    :goto_d0
    invoke-static {p2}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    .line 123
    invoke-static {p1, p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    return-void

    .line 125
    :cond_d8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_e9

    .line 126
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p1, p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    :cond_e9
    return-void
.end method

###### Class com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener.AnonymousClass1 (com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener$1)
.class Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener$1;
.super Ljava/lang/Object;
.source "DefaultOnHeaderDecodedListener.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnPartialImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener$1;->this$0:Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
