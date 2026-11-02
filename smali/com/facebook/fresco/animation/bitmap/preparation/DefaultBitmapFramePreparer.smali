###### Class com.facebook.fresco.animation.bitmap.preparation.DefaultBitmapFramePreparer (com.facebook.fresco.animation.bitmap.preparation.DefaultBitmapFramePreparer)
.class public final Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;
.super Ljava/lang/Object;
.source "DefaultBitmapFramePreparer.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001bB\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;",
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "bitmapFrameRenderer",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "<init>",
        "(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V",
        "TAG",
        "Ljava/lang/Class;",
        "pendingFrameDecodeJobs",
        "Landroid/util/SparseArray;",
        "Ljava/lang/Runnable;",
        "prepareFrame",
        "",
        "bitmapFrameCache",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "animationBackend",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        "frameNumber",
        "",
        "getUniqueId",
        "backend",
        "FrameDecodeRunnable",
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


# instance fields
.field private final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final pendingFrameDecodeJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    const-string v0, "platformBitmapFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 29
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 30
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 31
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 34
    const-class p1, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    .line 36
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    return-void
.end method

.method public static final synthetic access$getBitmapConfig$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/graphics/Bitmap$Config;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static final synthetic access$getBitmapFrameRenderer$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    return-object p0
.end method

.method public static final synthetic access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getPlatformBitmapFactory$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Ljava/lang/Class;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    return-object p0
.end method

.method private final getUniqueId(Lcom/facebook/fresco/animation/backend/AnimationBackend;I)I
    .registers 3

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public prepareFrame(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;I)Z
    .registers 13

    const-string v0, "bitmapFrameCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationBackend"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->getUniqueId(Lcom/facebook/fresco/animation/backend/AnimationBackend;I)I

    move-result v6

    .line 45
    iget-object v7, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    monitor-enter v7

    .line 48
    :try_start_11
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_59

    const/4 v8, 0x1

    if-eqz v0, :cond_2b

    .line 49
    :try_start_1a
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    const-string p2, "Already scheduled decode job for frame %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_27

    .line 50
    monitor-exit v7

    return v8

    :catchall_27
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_5c

    .line 54
    :cond_2b
    :try_start_2b
    invoke-interface {p1, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->contains(I)Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_59

    if-eqz v0, :cond_3e

    .line 55
    :try_start_31
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    const-string p2, "Frame %d is cached already."

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_27

    .line 56
    monitor-exit v7

    return v8

    .line 60
    :cond_3e
    :try_start_3e
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_59

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move v5, p3

    :try_start_44
    invoke-direct/range {v1 .. v6}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;II)V

    .line 61
    iget-object p1, v2, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object p1, v2, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->executorService:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_57

    .line 45
    monitor-exit v7

    return v8

    :catchall_57
    move-exception v0

    goto :goto_5b

    :catchall_59
    move-exception v0

    move-object v2, p0

    :goto_5b
    move-object p1, v0

    :goto_5c
    monitor-exit v7

    throw p1
.end method

###### Class com.facebook.fresco.animation.bitmap.preparation.DefaultBitmapFramePreparer.FrameDecodeRunnable (com.facebook.fresco.animation.bitmap.preparation.DefaultBitmapFramePreparer$FrameDecodeRunnable)
.class final Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;
.super Ljava/lang/Object;
.source "DefaultBitmapFramePreparer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDecodeRunnable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultBitmapFramePreparer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultBitmapFramePreparer.kt\ncom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J(\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;",
        "Ljava/lang/Runnable;",
        "animationBackend",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        "bitmapFrameCache",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "frameNumber",
        "",
        "frameId",
        "<init>",
        "(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;II)V",
        "run",
        "",
        "prepareFrameAndCache",
        "",
        "frameType",
        "renderFrameAndCache",
        "bitmapReference",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
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


# instance fields
.field private final animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

.field private final bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

.field private final frameId:I

.field private final frameNumber:I

.field final synthetic this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
            "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
            "II)V"
        }
    .end annotation

    const-string v0, "animationBackend"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 69
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 70
    iput p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameNumber:I

    .line 71
    iput p5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameId:I

    return-void
.end method

.method private final prepareFrameAndCache(II)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p2, v0, :cond_3d

    const/4 v0, 0x0

    if-eq p2, v2, :cond_d

    .line 124
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v0

    .line 107
    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPlatformBitmapFactory$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v2

    .line 108
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v4}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    move-result v4

    .line 109
    iget-object v5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v5}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    move-result v5

    .line 110
    iget-object v6, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v6}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getBitmapConfig$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 107
    invoke-virtual {v2, v4, v5, v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_29} :catch_2b
    .catchall {:try_start_d .. :try_end_29} :catchall_62

    const/4 v2, -0x1

    goto :goto_4f

    :catch_2b
    move-exception p1

    .line 114
    :try_start_2c
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {p2}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getTAG$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "Failed to create frame bitmap"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2, v1, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_62

    .line 124
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v0

    .line 100
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 101
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v4}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v5}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    move-result v5

    .line 100
    invoke-interface {v0, p1, v4, v5}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getBitmapToReuseForFrame(III)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    :goto_4f
    move-object v3, v0

    .line 122
    invoke-direct {p0, p1, v3, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->renderFrameAndCache(ILcom/facebook/common/references/CloseableReference;I)Z

    move-result p2
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_62

    .line 124
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    if-nez p2, :cond_61

    if-ne v2, v1, :cond_5c

    goto :goto_61

    .line 129
    :cond_5c
    invoke-direct {p0, p1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->prepareFrameAndCache(II)Z

    move-result p1

    return p1

    :cond_61
    :goto_61
    return p2

    :catchall_62
    move-exception p1

    .line 124
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p1
.end method

.method private final renderFrameAndCache(ILcom/facebook/common/references/CloseableReference;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;I)Z"
        }
    .end annotation

    .line 139
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p2, :cond_45

    .line 144
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getBitmapFrameRenderer$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_45

    .line 147
    :cond_22
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getTAG$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Frame %d ready."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 150
    :try_start_38
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v1, p1, p2, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->onFramePrepared(ILcom/facebook/common/references/CloseableReference;I)V

    .line 151
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_42

    .line 149
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_42
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_45
    :goto_45
    return v1
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameNumber:I

    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 77
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getTAG$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Frame %d is cached already."

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_7e

    .line 88
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    monitor-enter v0

    :try_start_24
    invoke-static {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_31

    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0

    throw v1

    .line 82
    :cond_34
    :try_start_34
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameNumber:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->prepareFrameAndCache(II)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 83
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getTAG$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Prepared frame %d."

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 85
    :cond_4f
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getTAG$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Could not prepare frame %d."

    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_34 .. :try_end_65} :catchall_7e

    .line 88
    :goto_65
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    monitor-enter v0

    :try_start_6e
    invoke-static {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_7b

    monitor-exit v0

    return-void

    :catchall_7b
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_7e
    move-exception v0

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    invoke-static {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    monitor-enter v1

    :try_start_88
    invoke-static {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;->frameId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_95

    monitor-exit v1

    throw v0

    :catchall_95
    move-exception v0

    monitor-exit v1

    throw v0
.end method
