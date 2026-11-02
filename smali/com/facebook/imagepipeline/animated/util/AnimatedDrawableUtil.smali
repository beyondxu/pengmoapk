###### Class com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil (com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil)
.class public final Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J\u0018\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tJ\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;",
        "",
        "<init>",
        "()V",
        "fixFrameDurations",
        "",
        "frameDurationMs",
        "",
        "getTotalDurationFromFrameDurations",
        "",
        "getFrameTimeStampsFromDurations",
        "frameDurationsMs",
        "getFrameForTimestampMs",
        "frameTimestampsMs",
        "timestampMs",
        "getSizeOfBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "Companion",
        "animated-base_release"
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
.field public static final Companion:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

.field private static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field private static final MIN_FRAME_DURATION_MS:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->Companion:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isOutsideRange(III)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->Companion:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;->isOutsideRange(III)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final fixFrameDurations([I)V
    .registers 6

    const-string v0, "frameDurationMs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_16

    .line 30
    aget v2, p1, v1

    const/16 v3, 0xb

    if-ge v2, v3, :cond_13

    const/16 v2, 0x64

    .line 31
    aput v2, p1, v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public final getFrameForTimestampMs([II)I
    .registers 3

    .line 76
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_9

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :cond_9
    return p1
.end method

.method public final getFrameTimeStampsFromDurations([I)[I
    .registers 7

    const-string v0, "frameDurationsMs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    array-length v0, p1

    new-array v0, v0, [I

    .line 60
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v1, :cond_15

    .line 61
    aput v3, v0, v2

    .line 62
    aget v4, p1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    return-object v0
.end method

.method public final getSizeOfBitmap(Landroid/graphics/Bitmap;)I
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1
.end method

.method public final getTotalDurationFromFrameDurations([I)I
    .registers 6

    const-string v0, "frameDurationMs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_10

    .line 45
    aget v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    return v2
.end method

###### Class com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil.Companion (com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil$Companion)
.class public final Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;",
        "",
        "<init>",
        "()V",
        "MIN_FRAME_DURATION_MS",
        "",
        "FRAME_DURATION_MS_FOR_MIN",
        "isOutsideRange",
        "",
        "startFrame",
        "endFrame",
        "frameNumber",
        "animated-base_release"
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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isOutsideRange(III)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_17

    if-ne p2, v1, :cond_7

    goto :goto_17

    :cond_7
    const/4 v1, 0x0

    if-gt p1, p2, :cond_11

    if-lt p3, p1, :cond_10

    if-le p3, p2, :cond_f

    goto :goto_10

    :cond_f
    return v1

    :cond_10
    :goto_10
    return v0

    :cond_11
    if-ge p3, p1, :cond_16

    if-le p3, p2, :cond_16

    return v0

    :cond_16
    return v1

    :cond_17
    :goto_17
    return v0
.end method
