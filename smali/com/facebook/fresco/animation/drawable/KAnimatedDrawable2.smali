###### Class com.facebook.fresco.animation.drawable.KAnimatedDrawable2 (com.facebook.fresco.animation.drawable.KAnimatedDrawable2)
.class public final Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "KAnimatedDrawable2.kt"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/facebook/drawable/base/DrawableWithCaches;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKAnimatedDrawable2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KAnimatedDrawable2.kt\ncom/facebook/fresco/animation/drawable/KAnimatedDrawable2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n1#2:223\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0013\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00014B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0018H\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0016J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\"H\u0014J\u0008\u0010#\u001a\u00020\u0018H\u0016J\u0008\u0010$\u001a\u00020\u0018H\u0016J\u0006\u0010%\u001a\u00020\u0018J\u0006\u0010&\u001a\u00020\u0018J\u0006\u0010\'\u001a\u00020\u0018J\u000e\u0010(\u001a\u00020\u00162\u0006\u0010)\u001a\u00020*J\u000e\u0010+\u001a\u00020\u00162\u0006\u0010,\u001a\u00020*J\u0010\u0010-\u001a\u00020\u00162\u0008\u0010.\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010/\u001a\u00020\u00162\u0008\u0010.\u001a\u0004\u0018\u00010\rJ\u0010\u00100\u001a\u00020\u00162\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u000203H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00a8\u00065"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Animatable;",
        "Lcom/facebook/drawable/base/DrawableWithCaches;",
        "animationBackend",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        "<init>",
        "(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V",
        "animatedFrameScheduler",
        "Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;",
        "animationListener",
        "Lcom/facebook/fresco/animation/drawable/AnimationListener;",
        "drawListener",
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;",
        "drawableProperties",
        "Lcom/facebook/drawee/drawable/DrawableProperties;",
        "isRunning",
        "",
        "invalidateRunnable",
        "com/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1",
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;",
        "setAlpha",
        "",
        "alpha",
        "",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "getOpacity",
        "start",
        "stop",
        "dropCaches",
        "onBoundsChange",
        "bounds",
        "Landroid/graphics/Rect;",
        "getIntrinsicWidth",
        "getIntrinsicHeight",
        "loopDurationMs",
        "getFrameCount",
        "loopCount",
        "setFrameSchedulingDelayMs",
        "delayMs",
        "",
        "setFrameSchedulingOffsetMs",
        "offsetMs",
        "setAnimationListener",
        "listener",
        "setDrawListener",
        "setAnimationBackend",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "DrawListener",
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
.field private final animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

.field private animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

.field private animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

.field private drawListener:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;

.field private final drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

.field private final invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

.field private volatile isRunning:Z


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .registers 4

    const-string v0, "animationBackend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 26
    new-instance p1, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    new-instance v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;

    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    check-cast v1, Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;-><init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V

    check-cast v0, Lcom/facebook/fresco/animation/frame/FrameScheduler;

    invoke-direct {p1, v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;-><init>(Lcom/facebook/fresco/animation/frame/FrameScheduler;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 27
    new-instance p1, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;-><init>()V

    check-cast p1, Lcom/facebook/fresco/animation/drawable/AnimationListener;

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 29
    new-instance p1, Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-direct {p1}, Lcom/facebook/drawee/drawable/DrawableProperties;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/drawable/DrawableProperties;->applyTo(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    .line 38
    new-instance p1, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;-><init>(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameToDraw()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    .line 179
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 180
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v1, v2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setRunning(Z)V

    .line 181
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    goto :goto_37

    :cond_25
    if-nez v0, :cond_37

    .line 182
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->shouldRepeatAnimation()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 183
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationRepeat(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3, p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 190
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {p1, v3, v0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 191
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {p1, v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setLastDrawnFrameNumber(I)V

    goto :goto_52

    .line 193
    :cond_4d
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {p1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->onFrameDropped()V

    .line 196
    :goto_52
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {p1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->nextRenderTime()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long p1, v0, v4

    if-eqz p1, :cond_66

    .line 198
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 200
    :cond_66
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {p1, v3}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {p1, v2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setRunning(Z)V

    return-void
.end method

.method public dropCaches()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->clear()V

    return-void
.end method

.method public final getFrameCount()I
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->getRunning()Z

    move-result v0

    return v0
.end method

.method public final loopCount()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public final loopDurationMs()I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getLoopDurationMs()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setAlpha(I)V

    .line 50
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAlpha(I)V

    return-void
.end method

.method public final setAnimationBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->stop()V

    .line 170
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/DrawableProperties;->applyTo(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    return-void
.end method

.method public final setAnimationListener(Lcom/facebook/fresco/animation/drawable/AnimationListener;)V
    .registers 2

    if-nez p1, :cond_4

    .line 149
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    :cond_4
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setDrawListener(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawListener:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;

    return-void
.end method

.method public final setFrameSchedulingDelayMs(J)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setFrameSchedulingDelayMs(J)V

    return-void
.end method

.method public final setFrameSchedulingOffsetMs(J)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setFrameSchedulingOffsetMs(J)V

    return-void
.end method

.method public start()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 66
    :cond_9
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->start()V

    .line 67
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->stop()V

    .line 74
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.facebook.fresco.animation.drawable.KAnimatedDrawable2.DrawListener (com.facebook.fresco.animation.drawable.KAnimatedDrawable2$DrawListener)
.class public interface abstract Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;
.super Ljava/lang/Object;
.source "KAnimatedDrawable2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001Jh\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;",
        "",
        "onDraw",
        "",
        "animatedDrawable",
        "Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;",
        "frameScheduler",
        "Lcom/facebook/fresco/animation/frame/FrameScheduler;",
        "frameNumberToDraw",
        "",
        "frameDrawn",
        "",
        "isAnimationRunning",
        "animationStartTimeMs",
        "",
        "animationTimeMs",
        "lastFrameAnimationTimeMs",
        "actualRenderTimeStartMs",
        "actualRenderTimeEndMs",
        "startRenderTimeForNextFrameMs",
        "scheduledRenderTimeForNextFrameMs",
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
.method public abstract onDraw(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;Lcom/facebook/fresco/animation/frame/FrameScheduler;IZZJJJJJJJ)V
.end method

###### Class com.facebook.fresco.animation.drawable.KAnimatedDrawable2$invalidateRunnable$1 (com.facebook.fresco.animation.drawable.KAnimatedDrawable2$invalidateRunnable$1)
.class public final Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;
.super Ljava/lang/Object;
.source "KAnimatedDrawable2.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
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


# instance fields
.field final synthetic this$0:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;->this$0:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;->this$0:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 44
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;->this$0:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateSelf()V

    return-void
.end method
