###### Class com.facebook.imagepipeline.platform.DefaultDecoder (com.facebook.imagepipeline.platform.DefaultDecoder)
.class public abstract Lcom/facebook/imagepipeline/platform/DefaultDecoder;
.super Ljava/lang/Object;
.source "DefaultDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/platform/PlatformDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;
    }
.end annotation


# static fields
.field private static final EOI_TAIL:[B

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAvoidPoolGet:Z

.field private mAvoidPoolRelease:Z

.field private final mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

.field final mDecodeBuffers:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreverificationHelper:Lcom/facebook/imagepipeline/platform/PreverificationHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;

    sput-object v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->TAG:Ljava/lang/Class;

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->EOI_TAIL:[B

    return-void

    nop

    :array_e
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/BitmapPool;Landroidx/core/util/Pools$Pool;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/BitmapPool;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    new-instance v0, Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/platform/PreverificationHelper;-><init>()V

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mPreverificationHelper:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    .line 69
    iput-object p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    .line 70
    instance-of p1, p1, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;

    if-eqz p1, :cond_24

    .line 71
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;->getAvoidPoolGet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    .line 72
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;->getAvoidPoolRelease()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolRelease:Z

    .line 74
    :cond_24
    iput-object p2, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;
    .registers 13
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/ColorSpace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 209
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 211
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz p3, :cond_17

    .line 213
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, v1

    .line 214
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v2

    .line 218
    :cond_17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_2d

    .line 219
    iget-object v2, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mPreverificationHelper:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    if-eqz v2, :cond_2d

    iget-object v6, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 221
    invoke-virtual {v2, v6}, Lcom/facebook/imagepipeline/platform/PreverificationHelper;->shouldUseHardwareBitmapConfig(Landroid/graphics/Bitmap$Config;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    const/4 v6, 0x0

    if-nez p3, :cond_36

    if-eqz v2, :cond_36

    .line 225
    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_59

    :cond_36
    if-eqz p3, :cond_3e

    if-eqz v2, :cond_3e

    .line 229
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 231
    :cond_3e
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    if-nez v2, :cond_59

    .line 232
    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->getBitmapSize(IILandroid/graphics/BitmapFactory$Options;)I

    move-result v2

    .line 233
    iget-object v7, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {v7, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_51

    goto :goto_5a

    .line 235
    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BitmapPool.get returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    :goto_59
    move-object v2, v6

    .line 241
    :goto_5a
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 244
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_6d

    if-nez p4, :cond_6a

    .line 246
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object p4

    invoke-static {p4}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p4

    :cond_6a
    invoke-static {p2, p4}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 250
    :cond_6d
    iget-object p4, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {p4}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/nio/ByteBuffer;

    if-nez p4, :cond_7f

    .line 252
    invoke-static {}, Lcom/facebook/common/memory/DecodeBufferHelper;->getRecommendedDecodeBufferSize()I

    move-result p4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 255
    :cond_7f
    :try_start_7f
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    if-eqz p3, :cond_c0

    if-eqz v2, :cond_c0

    .line 256
    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_8b} :catch_ff
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_8b} :catch_f6
    .catchall {:try_start_7f .. :try_end_8b} :catchall_f4

    if-eqz v3, :cond_c0

    .line 262
    :try_start_8d
    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 263
    invoke-static {p1, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_96} :catch_a6
    .catchall {:try_start_8d .. :try_end_96} :catchall_a4

    if-eqz v0, :cond_9d

    .line 265
    :try_start_98
    invoke-virtual {v0, p3, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9c} :catch_a7
    .catchall {:try_start_98 .. :try_end_9c} :catchall_b8

    goto :goto_9e

    :cond_9d
    move-object p3, v6

    :goto_9e
    if-eqz v0, :cond_c1

    .line 271
    :try_start_a0
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_a3} :catch_ff
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a3} :catch_f6
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_f4

    goto :goto_c1

    :catchall_a4
    move-exception p2

    goto :goto_ba

    :catch_a6
    move-object v0, v6

    .line 268
    :catch_a7
    :try_start_a7
    sget-object v1, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->TAG:Ljava/lang/Class;

    const-string v3, "Could not decode region %s, decoding full bitmap instead."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_b8

    if-eqz v0, :cond_c0

    .line 271
    :try_start_b4
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_c0

    :catchall_b8
    move-exception p2

    move-object v6, v0

    :goto_ba
    if-eqz v6, :cond_bf

    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 273
    :cond_bf
    throw p2

    :cond_c0
    :goto_c0
    move-object p3, v6

    :cond_c1
    :goto_c1
    if-nez p3, :cond_c7

    .line 276
    invoke-static {p1, v6, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b4 .. :try_end_c7} :catch_ff
    .catch Ljava/lang/RuntimeException; {:try_start_b4 .. :try_end_c7} :catch_f6
    .catchall {:try_start_b4 .. :try_end_c7} :catchall_f4

    .line 304
    :cond_c7
    iget-object p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, p4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    if-eqz v2, :cond_e0

    if-eq v2, p3, :cond_e0

    .line 310
    iget-object p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {p1, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V

    if-eqz p3, :cond_da

    .line 312
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    :cond_da
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 317
    :cond_e0
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolRelease:Z

    if-eqz p1, :cond_ed

    .line 318
    invoke-static {}, Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;->-$$Nest$sfgetINSTANCE()Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1

    .line 320
    :cond_ed
    iget-object p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-static {p3, p1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1

    :catchall_f4
    move-exception p1

    goto :goto_120

    :catch_f6
    move-exception p1

    if-eqz v2, :cond_fe

    .line 300
    :try_start_f9
    iget-object p2, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {p2, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V

    .line 302
    :cond_fe
    throw p1

    :catch_ff
    move-exception p2

    if-eqz v2, :cond_107

    .line 280
    iget-object p3, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {p3, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V
    :try_end_107
    .catchall {:try_start_f9 .. :try_end_107} :catchall_f4

    .line 286
    :cond_107
    :try_start_107
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 288
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_11e

    .line 292
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->getInstance()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_118} :catch_11f
    .catchall {:try_start_107 .. :try_end_118} :catchall_f4

    .line 304
    iget-object p2, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2, p4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    .line 290
    :cond_11e
    :try_start_11e
    throw p2
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_11f} :catch_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_f4

    .line 296
    :catch_11f
    :try_start_11f
    throw p2
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_f4

    .line 304
    :goto_120
    iget-object p2, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2, p4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 305
    throw p1
.end method

.method private static getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/BitmapFactory$Options;
    .registers 8

    .line 329
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    .line 332
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 333
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 334
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1f

    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-ne p1, v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-nez v2, :cond_24

    .line 337
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 339
    :cond_24
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-nez p2, :cond_40

    .line 342
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 343
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 p2, -0x1

    if-eq p0, p2, :cond_3a

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p0, p2, :cond_3a

    goto :goto_40

    .line 344
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_40
    :goto_40
    if-eqz v2, :cond_44

    .line 348
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 350
    :cond_44
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-object v0
.end method


# virtual methods
.method public decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;
    .registers 5
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public decodeFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;
    .registers 7
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/ColorSpace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    .line 113
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    .line 114
    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 116
    :goto_f
    :try_start_f
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 117
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    move-exception p2

    if-eqz v0, :cond_28

    .line 120
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1

    .line 123
    :cond_28
    throw p2
.end method

.method public decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;I)Lcom/facebook/common/references/CloseableReference;
    .registers 11
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeJPEGFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public decodeJPEGFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;
    .registers 15
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/ColorSpace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "I",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 148
    invoke-virtual {p1, p4}, Lcom/facebook/imagepipeline/image/EncodedImage;->isCompleteAt(I)Z

    move-result v0

    .line 149
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    .line 150
    invoke-static {p1, p2, v1}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    .line 151
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 155
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v2

    if-le v2, p4, :cond_1d

    .line 157
    new-instance v2, Lcom/facebook/common/streams/LimitedInputStream;

    invoke-direct {v2, v1, p4}, Lcom/facebook/common/streams/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v2

    :cond_1d
    if-nez v0, :cond_27

    .line 160
    new-instance v0, Lcom/facebook/common/streams/TailAppendingInputStream;

    sget-object v2, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->EOI_TAIL:[B

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/streams/TailAppendingInputStream;-><init>(Ljava/io/InputStream;[B)V

    move-object v1, v0

    .line 162
    :cond_27
    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_30

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 164
    :goto_32
    :try_start_32
    invoke-direct {p0, v1, p2, p3, p5}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_36} :catch_43
    .catchall {:try_start_32 .. :try_end_36} :catchall_40

    .line 173
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    return-object p1

    :catch_3a
    move-exception v0

    move-object p2, v0

    .line 175
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    :catchall_40
    move-exception v0

    move-object p1, v0

    goto :goto_5d

    :catch_43
    move-exception v0

    move-object p2, v0

    if-eqz v2, :cond_5c

    .line 167
    :try_start_47
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeJPEGFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_40

    .line 173
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5b

    :catch_56
    move-exception v0

    move-object p2, v0

    .line 175
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5b
    return-object p1

    .line 170
    :cond_5c
    :try_start_5c
    throw p2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_40

    .line 173
    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    move-exception v0

    move-object p2, v0

    .line 175
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    :goto_66
    throw p1
.end method

.method protected decodeStaticImageFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;
    .registers 5
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBitmapSize(IILandroid/graphics/BitmapFactory$Options;)I
.end method

###### Class com.facebook.imagepipeline.platform.DefaultDecoder.NoOpResourceReleaser (com.facebook.imagepipeline.platform.DefaultDecoder$NoOpResourceReleaser)
.class final Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;
.super Ljava/lang/Object;
.source "DefaultDecoder.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/platform/DefaultDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpResourceReleaser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;
    .registers 1

    sget-object v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;->INSTANCE:Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 358
    new-instance v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;->INSTANCE:Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .registers 2

    .line 357
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;->release(Landroid/graphics/Bitmap;)V

    return-void
.end method
