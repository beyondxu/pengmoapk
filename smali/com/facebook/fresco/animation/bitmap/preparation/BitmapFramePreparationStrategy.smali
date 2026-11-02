###### Class com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy (com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy)
.class public interface abstract Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;
.super Ljava/lang/Object;
.source "BitmapFramePreparationStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J:\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u0016J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016J(\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;",
        "",
        "prepareFrames",
        "",
        "bitmapFramePreparer",
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
        "bitmapFrameCache",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "animationBackend",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        "lastDrawnFrameNumber",
        "",
        "onAnimationLoaded",
        "Lkotlin/Function0;",
        "canvasWidth",
        "canvasHeight",
        "onStop",
        "clearFrames",
        "getBitmapFrame",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "frameNumber",
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


# virtual methods
.method public abstract clearFrames()V
.end method

.method public abstract getBitmapFrame(III)Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onStop()V
.end method

.method public abstract prepareFrames(IILkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
            "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
            "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy.DefaultImpls (com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy$DefaultImpls)
.class public final Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;
.super Ljava/lang/Object;
.source "BitmapFramePreparationStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static clearFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;)V
    .registers 1

    return-void
.end method

.method public static getBitmapFrame(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;III)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;",
            "III)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static onStop(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;)V
    .registers 1

    return-void
.end method

.method public static prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;IILkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;",
            "II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;",
            "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
            "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
            "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "bitmapFramePreparer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmapFrameCache"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "animationBackend"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic prepareFrames$default(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 14

    if-nez p7, :cond_11

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_7

    const/4 p5, 0x0

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 25
    invoke-interface/range {v0 .. v5}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: prepareFrames"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
