###### Class com.facebook.fresco.animation.bitmap.cache.FrescoFrameCache (com.facebook.fresco.animation.bitmap.cache.FrescoFrameCache)
.class public final Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;
.super Ljava/lang/Object;
.source "FrescoFrameCache.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u0000 )2\u00020\u0001:\u0001)B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J(\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0010H\u0016J\u0011\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J&\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\n2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016J&\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\n2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016J\u0012\u0010\u001f\u001a\u00020\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\"\u0010%\u001a\u00020\u00052\u0018\u0010&\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\n0\'H\u0016J\u0008\u0010(\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\t8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\"\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0018\u00a8\u0006*"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "animatedFrameCache",
        "Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;",
        "enableBitmapReusing",
        "",
        "<init>",
        "(Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;Z)V",
        "preparedPendingFrames",
        "Landroid/util/SparseArray;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "lastRenderedItem",
        "getCachedFrame",
        "Landroid/graphics/Bitmap;",
        "frameNumber",
        "",
        "getFallbackFrame",
        "getBitmapToReuseForFrame",
        "width",
        "height",
        "contains",
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
        "frameCacheListener",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;",
        "preparedPendingFramesSizeBytes",
        "getPreparedPendingFramesSizeBytes",
        "removePreparedReference",
        "onAnimationPrepared",
        "frameBitmaps",
        "",
        "isAnimationReady",
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
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final animatedFrameCache:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

.field private final enableBitmapReusing:Z

.field private lastRenderedItem:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final preparedPendingFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 166
    const-class v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;Z)V
    .registers 4

    const-string v0, "animatedFrameCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    .line 30
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->enableBitmapReusing:Z

    .line 34
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    return-void
.end method

.method public static final convertToBitmapReferenceAndClose(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized getPreparedPendingFramesSizeBytes()I
    .registers 6

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    .line 141
    sget-object v3, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/references/CloseableReference;

    invoke-static {v3, v4}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$getBitmapSizeBytes(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lcom/facebook/common/references/CloseableReference;)I

    move-result v3
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 143
    :cond_1d
    monitor-exit p0

    return v2

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private final declared-synchronized removePreparedReference(I)V
    .registers 5

    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_20

    .line 150
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 151
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 153
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->TAG:Ljava/lang/Class;

    .line 154
    const-string v1, "removePreparedReference(%d) removed. Pending frames: %s"

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 156
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 152
    invoke-static {v0, v1, p1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 158
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 4

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lcom/facebook/common/references/CloseableReference;

    .line 70
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 71
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/references/CloseableReference;

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 73
    :cond_20
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 75
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public declared-synchronized contains(I)Z
    .registers 3

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->contains(I)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

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

    .line 52
    :try_start_1
    iget-boolean p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->enableBitmapReusing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez p1, :cond_8

    .line 53
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_8
    :try_start_8
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->getForReuse()Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized getCachedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->get(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

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

    .line 44
    :try_start_1
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

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

.method public declared-synchronized getSizeInBytes()I
    .registers 3

    monitor-enter p0

    .line 64
    :try_start_1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$getBitmapSizeBytes(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lcom/facebook/common/references/CloseableReference;)I

    move-result v0

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->getPreparedPendingFramesSizeBytes()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isAnimationReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationPrepared(Ljava/util/Map;)Z
    .registers 3
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

    const-string v0, "frameBitmaps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized onFramePrepared(ILcom/facebook/common/references/CloseableReference;I)V
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
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_47

    const/4 p3, 0x0

    .line 110
    :try_start_7
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    invoke-static {v0, p2}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$createImageReference(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_42

    if-nez p3, :cond_14

    .line 128
    :try_start_f
    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_47

    .line 112
    monitor-exit p0

    return-void

    .line 114
    :cond_14
    :try_start_14
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    invoke-virtual {p2, p1, p3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->cache(ILcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    .line 115
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 116
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 117
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->TAG:Ljava/lang/Class;

    .line 123
    const-string v0, "cachePreparedFrame(%d) cached. Pending frames: %s"

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 125
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 121
    invoke-static {p2, v0, p1, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_42

    .line 128
    :cond_3d
    :try_start_3d
    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_47

    .line 130
    monitor-exit p0

    return-void

    :catchall_42
    move-exception p1

    .line 128
    :try_start_43
    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p1

    :catchall_47
    move-exception p1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public declared-synchronized onFrameRendered(ILcom/facebook/common/references/CloseableReference;I)V
    .registers 5
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

    .line 86
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->removePreparedReference(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    const/4 p3, 0x0

    .line 91
    :try_start_a
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    invoke-static {v0, p2}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$createImageReference(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p3

    if-eqz p3, :cond_1f

    .line 93
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lcom/facebook/common/references/CloseableReference;

    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 94
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    invoke-virtual {p2, p1, p3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->cache(ILcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lcom/facebook/common/references/CloseableReference;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_24

    .line 97
    :cond_1f
    :try_start_1f
    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    .line 99
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    .line 97
    :try_start_25
    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p1

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public setFrameCacheListener(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;)V
    .registers 2

    return-void
.end method

###### Class com.facebook.fresco.animation.bitmap.cache.FrescoFrameCache.Companion (com.facebook.fresco.animation.bitmap.cache.FrescoFrameCache$Companion)
.class public final Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;
.super Ljava/lang/Object;
.source "FrescoFrameCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007H\u0007J\u0018\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007H\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0002J \u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002R\u0012\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "Ljava/lang/Class;",
        "convertToBitmapReferenceAndClose",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "closeableImage",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "getBitmapSizeBytes",
        "",
        "imageReference",
        "image",
        "createImageReference",
        "bitmapReference",
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

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createImageReference(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->createImageReference(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBitmapSizeBytes(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lcom/facebook/common/references/CloseableReference;)I
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->getBitmapSizeBytes(Lcom/facebook/common/references/CloseableReference;)I

    move-result p0

    return p0
.end method

.method private final createImageReference(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap$-CC;->of(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    const-string v0, "of(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method private final getBitmapSizeBytes(Lcom/facebook/common/references/CloseableReference;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)I"
        }
    .end annotation

    .line 199
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_8
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->getBitmapSizeBytes(Lcom/facebook/imagepipeline/image/CloseableImage;)I

    move-result p1

    return p1
.end method

.method private final getBitmapSizeBytes(Lcom/facebook/imagepipeline/image/CloseableImage;)I
    .registers 3

    .line 206
    instance-of v0, p1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 209
    :cond_6
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final convertToBitmapReferenceAndClose(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 182
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v0, :cond_24

    .line 183
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.imagepipeline.image.CloseableStaticBitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 188
    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->cloneUnderlyingBitmapReference()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_29

    .line 194
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object v0

    :cond_24
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    const/4 p1, 0x0

    return-object p1

    :catchall_29
    move-exception v0

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v0
.end method
