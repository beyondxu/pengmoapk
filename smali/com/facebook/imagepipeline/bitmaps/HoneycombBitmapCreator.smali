###### Class com.facebook.imagepipeline.bitmaps.HoneycombBitmapCreator (com.facebook.imagepipeline.bitmaps.HoneycombBitmapCreator)
.class public final Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.kt"

# interfaces
.implements Lcom/facebook/common/webp/BitmapCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;",
        "Lcom/facebook/common/webp/BitmapCreator;",
        "poolFactory",
        "Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "<init>",
        "(Lcom/facebook/imagepipeline/memory/PoolFactory;)V",
        "jpegGenerator",
        "Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;",
        "flexByteArrayPool",
        "Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;",
        "createNakedBitmap",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "Companion",
        "imagepipeline_release"
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
.field public static final Companion:Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;


# instance fields
.field private final flexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

.field private final jpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->Companion:Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/PoolFactory;)V
    .registers 4

    const-string v0, "poolFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;-><init>(Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->jpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getFlexByteArrayPool()Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    move-result-object p1

    const-string v0, "getFlexByteArrayPool(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->flexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    return-void
.end method


# virtual methods
.method public createNakedBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10

    const-string v0, "get(...)"

    const-string v1, "bitmapConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->jpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    int-to-short p1, p1

    int-to-short p2, p2

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;->generate(SS)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    const-string p2, "generate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 33
    :try_start_15
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_76

    .line 34
    :try_start_1a
    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;->setImageFormat(Lcom/facebook/imageformat/ImageFormat;)V

    .line 35
    sget-object v2, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->Companion:Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v3

    invoke-static {v2, v3, p3}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;->access$getBitmapFactoryOptions(Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p3

    .line 36
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v2}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v2

    .line 37
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 38
    iget-object v4, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->flexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->get(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [B

    const/4 v0, 0x0

    .line 40
    invoke-interface {v3, v0, v4, v0, v2}, Lcom/facebook/common/memory/PooledByteBuffer;->read(I[BII)I

    .line 42
    invoke-static {v4, v0, v2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_68

    const/4 v2, 0x1

    .line 43
    invoke-virtual {p3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 44
    invoke-virtual {p3, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_5e
    .catchall {:try_start_1a .. :try_end_5e} :catchall_74

    .line 47
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 48
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 49
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object p3

    .line 42
    :cond_68
    :try_start_68
    const-string p3, "Required value was null."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p3

    goto :goto_78

    :catchall_76
    move-exception p3

    move-object v1, p2

    .line 47
    :goto_78
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 48
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 49
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p3
.end method

###### Class com.facebook.imagepipeline.bitmaps.HoneycombBitmapCreator.Companion (com.facebook.imagepipeline.bitmaps.HoneycombBitmapCreator$Companion)
.class public final Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;",
        "",
        "<init>",
        "()V",
        "getBitmapFactoryOptions",
        "Landroid/graphics/BitmapFactory$Options;",
        "sampleSize",
        "",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "imagepipeline_release"
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBitmapFactoryOptions(Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;->getBitmapFactoryOptions(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    return-object p0
.end method

.method private final getBitmapFactoryOptions(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .registers 5

    .line 55
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 57
    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 59
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 61
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 63
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 64
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-object v0
.end method
