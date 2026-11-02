###### Class com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder (com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder)
.class public final Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;
.super Ljava/lang/Object;
.source "AnimatedImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;,
        Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;,
        Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;
    }
.end annotation


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final imageHeaderParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->imageHeaderParsers:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method

.method public static byteBufferDecoder(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;)V

    return-object v0
.end method

.method private isHandled(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .registers 4

    .line 64
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq p1, v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_f

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public static streamDecoder(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;)V

    return-object v0
.end method


# virtual methods
.method decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;

    invoke-direct {v0, p2, p3, p4}, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;-><init>(IILcom/bumptech/glide/load/Options;)V

    .line 72
    invoke-static {p1, v0}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 74
    invoke-static {p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$2(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 78
    new-instance p2, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;

    invoke-static {p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-object p2

    .line 75
    :cond_19
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Received unexpected drawable type for animated image, failing: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method handles(Ljava/io/InputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->imageHeaderParsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, p1, v1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->isHandled(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1
.end method

.method handles(Ljava/nio/ByteBuffer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->imageHeaderParsers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->isHandled(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder.AnimatedImageDrawableResource (com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder$AnimatedImageDrawableResource)
.class final Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;
.super Ljava/lang/Object;
.source "AnimatedImageDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimatedImageDrawableResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final ESTIMATED_NUMBER_OF_FRAMES:I = 0x2


# instance fields
.field private final imageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;->imageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/drawable/AnimatedImageDrawable;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;->imageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;->get()Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 94
    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize()I
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;->imageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/AnimatedImageDrawable;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;->imageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 106
    invoke-static {v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/graphics/drawable/AnimatedImageDrawable;)I

    move-result v1

    mul-int v0, v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 107
    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public recycle()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;->imageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;->imageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder.ByteBufferAnimatedImageDecoder (com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder$ByteBufferAnimatedImageDecoder)
.class final Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;
.super Ljava/lang/Object;
.source "AnimatedImageDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferAnimatedImageDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;)V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;->decode(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-static {p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;->handles(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->handles(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder.StreamAnimatedImageDecoder (com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder$StreamAnimatedImageDecoder)
.class final Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;
.super Ljava/lang/Object;
.source "AnimatedImageDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamAnimatedImageDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lcom/bumptech/glide/util/ByteBufferUtil;->fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->delegate:Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->handles(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;->handles(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
