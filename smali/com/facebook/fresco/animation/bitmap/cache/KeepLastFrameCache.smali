###### Class com.facebook.fresco.animation.bitmap.cache.KeepLastFrameCache (com.facebook.fresco.animation.bitmap.cache.KeepLastFrameCache)
.class public final Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;
.super Ljava/lang/Object;
.source "KeepLastFrameCache.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J(\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0005H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J&\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J&\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J\u0012\u0010\u001c\u001a\u00020\u00172\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "<init>",
        "()V",
        "lastFrameNumber",
        "",
        "frameCacheListener",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;",
        "lastBitmapReference",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "getCachedFrame",
        "frameNumber",
        "getFallbackFrame",
        "getBitmapToReuseForFrame",
        "width",
        "height",
        "contains",
        "",
        "sizeInBytes",
        "getSizeInBytes",
        "()I",
        "clear",
        "",
        "onFrameRendered",
        "bitmapReference",
        "frameType",
        "onFramePrepared",
        "setFrameCacheListener",
        "closeAndResetLastBitmapReference",
        "Companion",
        "animated-drawable_release"
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
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;

.field private static final FRAME_NUMBER_UNSET:I = -0x1


# instance fields
.field private frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

.field private lastBitmapReference:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private lastFrameNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    return-void
.end method

.method private final declared-synchronized closeAndResetLastBitmapReference()V
    .registers 5

    monitor-enter p0

    .line 95
    :try_start_1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 96
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    if-eqz v2, :cond_10

    move-object v3, p0

    check-cast v3, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v2, v3, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;->onFrameEvicted(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;I)V

    .line 98
    :cond_10
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    .line 100
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 101
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 62
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->closeAndResetLastBitmapReference()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 63
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized contains(I)Z
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return p1

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public declared-synchronized getBitmapToReuseForFrame(III)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_1
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    .line 47
    :try_start_7
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->closeAndResetLastBitmapReference()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_11

    .line 48
    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    .line 47
    :try_start_d
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->closeAndResetLastBitmapReference()V

    throw p1

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw p1
.end method

.method public declared-synchronized getCachedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    if-ne v0, p1, :cond_c

    .line 29
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 32
    :goto_d
    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized getFallbackFrame(I)Lcom/facebook/common/references/CloseableReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized getSizeInBytes()I
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_14

    .line 58
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public isAnimationReady()Z
    .registers 2

    .line 19
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;->isAnimationReady(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;)Z

    move-result v0

    return v0
.end method

.method public onAnimationPrepared(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation

    .line 19
    invoke-static {p0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;->onAnimationPrepared(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public onFramePrepared(ILcom/facebook/common/references/CloseableReference;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    const-string p1, "bitmapReference"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onFrameRendered(ILcom/facebook/common/references/CloseableReference;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string p3, "bitmapReference"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    if-eqz p3, :cond_22

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_4a

    if-eqz p3, :cond_22

    .line 72
    monitor-exit p0

    return-void

    .line 74
    :cond_22
    :try_start_22
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 75
    iget p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_36

    .line 76
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    if-eqz v0, :cond_36

    move-object v1, p0

    check-cast v1, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v0, v1, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;->onFrameEvicted(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;I)V

    .line 78
    :cond_36
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lcom/facebook/common/references/CloseableReference;

    .line 79
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    if-eqz p2, :cond_46

    move-object p3, p0

    check-cast p3, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {p2, p3, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;->onFrameCached(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;I)V

    .line 80
    :cond_46
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_4a

    .line 81
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public setFrameCacheListener(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    return-void
.end method

###### Class com.facebook.fresco.animation.bitmap.cache.KeepLastFrameCache.Companion (com.facebook.fresco.animation.bitmap.cache.KeepLastFrameCache$Companion)
.class public final Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;
.super Ljava/lang/Object;
.source "KeepLastFrameCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;",
        "",
        "<init>",
        "()V",
        "FRAME_NUMBER_UNSET",
        "",
        "animated-drawable_release"
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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;-><init>()V

    return-void
.end method
