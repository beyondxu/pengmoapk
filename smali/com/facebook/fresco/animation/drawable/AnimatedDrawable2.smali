###### Class com.facebook.fresco.animation.drawable.AnimatedDrawable2 (com.facebook.fresco.animation.drawable.AnimatedDrawable2)
.class public Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedDrawable2.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/facebook/drawable/base/DrawableWithCaches;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAME_SCHEDULING_DELAY_MS:I = 0x8

.field private static final DEFAULT_FRAME_SCHEDULING_OFFSET_MS:I

.field private static final NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final animationBackendListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

.field private mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

.field private volatile mDrawListener:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDroppedFrames:I

.field private mExpectedRenderTimeMs:J

.field private mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFrameSchedulingDelayMs:J

.field private mFrameSchedulingOffsetMs:J

.field private final mInvalidateRunnable:Ljava/lang/Runnable;

.field private volatile mIsRunning:Z

.field private mLastDrawnFrameNumber:I

.field private mLastFrameAnimationTimeMs:J

.field private mPausedLastDrawnFrameNumber:I

.field private mPausedLastFrameAnimationTimeMsDifference:J

.field private mPausedStartTimeMsDifference:J

.field private mStartTimeMs:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmInvalidateRunnable(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mInvalidateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->TAG:Ljava/lang/Class;

    .line 52
    new-instance v0, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .registers 4
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x8

    .line 72
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameSchedulingDelayMs:J

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameSchedulingOffsetMs:J

    .line 79
    sget-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawListener:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;

    .line 81
    new-instance v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationBackendListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 92
    new-instance v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$1;

    invoke-direct {v1, p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$1;-><init>(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V

    iput-object v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 110
    invoke-static {p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    if-eqz p1, :cond_2d

    .line 113
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V

    :cond_2d
    return-void
.end method

.method private static createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;
    .registers 2
    .param p0    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 488
    :cond_4
    new-instance v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;-><init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V

    return-object v0
.end method

.method private now()J
    .registers 3

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private onFrameDropped()V
    .registers 4

    .line 466
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDroppedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDroppedFrames:I

    const/4 v0, 0x2

    .line 468
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 469
    sget-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->TAG:Ljava/lang/Class;

    iget v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDroppedFrames:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dropped a frame. Count: %s"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private scheduleNextFrame(J)V
    .registers 5

    .line 461
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mExpectedRenderTimeMs:J

    .line 462
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v1, p0

    .line 190
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_a9

    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    if-nez v0, :cond_c

    goto/16 :goto_a9

    .line 194
    :cond_c
    invoke-direct {v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    move-result-wide v12

    .line 196
    iget-boolean v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    if-eqz v0, :cond_1c

    .line 197
    iget-wide v2, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    sub-long v2, v12, v2

    iget-wide v4, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameSchedulingOffsetMs:J

    add-long/2addr v2, v4

    goto :goto_24

    .line 198
    :cond_1c
    iget-wide v2, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_24
    move-wide v8, v2

    .line 202
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    iget-wide v2, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    .line 203
    invoke-interface {v0, v8, v9, v2, v3}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getFrameNumberToRender(JJ)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_41

    .line 208
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 209
    iget-object v3, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {v3, v1}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iput-boolean v2, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    goto :goto_52

    :cond_41
    if-nez v0, :cond_52

    .line 212
    iget v4, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastDrawnFrameNumber:I

    if-eq v4, v3, :cond_52

    iget-wide v3, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mExpectedRenderTimeMs:J

    cmp-long v5, v12, v3

    if-ltz v5, :cond_52

    .line 213
    iget-object v3, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {v3, v1}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationRepeat(Landroid/graphics/drawable/Drawable;)V

    :cond_52
    :goto_52
    move v3, v0

    .line 218
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-object/from16 v4, p1

    invoke-interface {v0, v1, v4, v3}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 222
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {v0, v1, v3}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 223
    iput v3, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastDrawnFrameNumber:I

    :cond_64
    if-nez v4, :cond_69

    .line 228
    invoke-direct {v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->onFrameDropped()V

    .line 233
    :cond_69
    invoke-direct {v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    move-result-wide v14

    .line 234
    iget-boolean v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    const-wide/16 v5, -0x1

    if-eqz v0, :cond_94

    .line 236
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    iget-wide v10, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    sub-long v10, v14, v10

    .line 237
    invoke-interface {v0, v10, v11}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getTargetRenderTimeForNextFrameMs(J)J

    move-result-wide v10

    cmp-long v0, v10, v5

    if-eqz v0, :cond_88

    .line 239
    iget-wide v5, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameSchedulingDelayMs:J

    add-long/2addr v5, v10

    .line 241
    invoke-direct {v1, v5, v6}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->scheduleNextFrame(J)V

    goto :goto_8f

    .line 243
    :cond_88
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iput-boolean v2, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    :goto_8f
    move-wide/from16 v18, v5

    move-wide/from16 v16, v10

    goto :goto_98

    :cond_94
    move-wide/from16 v16, v5

    move-wide/from16 v18, v16

    .line 248
    :goto_98
    iget-object v0, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawListener:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;

    if-eqz v0, :cond_a7

    .line 250
    iget-object v2, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    iget-boolean v5, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    iget-wide v6, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    iget-wide v10, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    invoke-interface/range {v0 .. v19}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;->onDraw(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;Lcom/facebook/fresco/animation/frame/FrameScheduler;IZZJJJJJJJ)V

    .line 264
    :cond_a7
    iput-wide v8, v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    :cond_a9
    :goto_a9
    return-void
.end method

.method public dropCaches()V
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 520
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->clear()V

    :cond_7
    return-void
.end method

.method public getAnimationBackend()Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    return-object v0
.end method

.method public getDroppedFrames()J
    .registers 3

    .line 331
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDroppedFrames:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFrameCount()I
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameDurationMs(I)I
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameDurationMs(I)I

    move-result p1

    return p1
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_9

    .line 128
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 130
    :cond_9
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_9

    .line 120
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 122
    :cond_9
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getLoopDurationMs()J
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 374
    :cond_7
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    if-eqz v0, :cond_10

    .line 375
    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getLoopDurationMs()J

    move-result-wide v0

    return-wide v0

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 378
    :goto_12
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 379
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-interface {v2, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameDurationMs(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_24
    int-to-long v0, v1

    return-wide v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getStartTimeMs()J
    .registers 3

    .line 335
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    return-wide v0
.end method

.method public isInfiniteAnimation()Z
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->isInfiniteAnimation()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    return v0
.end method

.method public jumpToFrame(I)V
    .registers 6

    .line 349
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    if-nez v0, :cond_9

    goto :goto_25

    .line 353
    :cond_9
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getTargetRenderTimeMs(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    .line 356
    iput p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedLastDrawnFrameNumber:I

    const-wide/16 v0, 0x0

    .line 357
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedStartTimeMsDifference:J

    .line 358
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedLastFrameAnimationTimeMsDifference:J

    .line 360
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    .line 361
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mExpectedRenderTimeMs:J

    .line 362
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->invalidateSelf()V

    :cond_25
    :goto_25
    return-void
.end method

.method synthetic lambda$new$0$com-facebook-fresco-animation-drawable-AnimatedDrawable2()V
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationLoaded()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 182
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_a

    .line 184
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    :cond_a
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 8

    .line 504
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 509
    :cond_6
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_14

    .line 510
    iput-wide v4, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    .line 511
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_14
    return v1
.end method

.method public preloadAnimation()V
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 296
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->preloadAnimation()V

    :cond_7
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    if-nez v0, :cond_b

    .line 270
    new-instance v0, Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/DrawableProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    .line 272
    :cond_b
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setAlpha(I)V

    .line 273
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_17

    .line 274
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAlpha(I)V

    :cond_17
    return-void
.end method

.method public setAnimationBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .registers 4
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 307
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 308
    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V

    .line 311
    :cond_8
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz p1, :cond_2c

    .line 313
    new-instance p1, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-direct {p1, v0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;-><init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 314
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationBackendListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V

    .line 315
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 316
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    if-eqz p1, :cond_2c

    .line 318
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/drawable/DrawableProperties;->applyTo(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :cond_2c
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-static {p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 322
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->stop()V

    return-void
.end method

.method public setAnimationListener(Lcom/facebook/fresco/animation/drawable/AnimationListener;)V
    .registers 2
    .param p1    # Lcom/facebook/fresco/animation/drawable/AnimationListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    goto :goto_5

    .line 443
    :cond_3
    sget-object p1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    :goto_5
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 280
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    if-nez v0, :cond_b

    .line 281
    new-instance v0, Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/DrawableProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    .line 283
    :cond_b
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawableProperties:Lcom/facebook/drawee/drawable/DrawableProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/DrawableProperties;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 284
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_17

    .line 285
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_17
    return-void
.end method

.method public setDrawListener(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;)V
    .registers 2
    .param p1    # Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 452
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mDrawListener:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;

    return-void
.end method

.method public setFrameSchedulingDelayMs(J)V
    .registers 3

    .line 423
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameSchedulingDelayMs:J

    return-void
.end method

.method public setFrameSchedulingOffsetMs(J)V
    .registers 3

    .line 434
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mFrameSchedulingOffsetMs:J

    return-void
.end method

.method public start()V
    .registers 5

    .line 136
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_10

    goto :goto_2f

    .line 139
    :cond_10
    iput-boolean v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    .line 141
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    move-result-wide v0

    .line 142
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedStartTimeMsDifference:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    .line 143
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mExpectedRenderTimeMs:J

    .line 144
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedLastFrameAnimationTimeMsDifference:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    .line 145
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedLastDrawnFrameNumber:I

    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastDrawnFrameNumber:I

    .line 146
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->invalidateSelf()V

    .line 147
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public stop()V
    .registers 5

    .line 153
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 156
    :cond_5
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    move-result-wide v0

    .line 157
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedStartTimeMsDifference:J

    .line 158
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedLastFrameAnimationTimeMsDifference:J

    .line 159
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastDrawnFrameNumber:I

    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mPausedLastDrawnFrameNumber:I

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mIsRunning:Z

    const-wide/16 v0, 0x0

    .line 162
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mStartTimeMs:J

    .line 163
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mExpectedRenderTimeMs:J

    const-wide/16 v0, -0x1

    .line 164
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastFrameAnimationTimeMs:J

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mLastDrawnFrameNumber:I

    .line 166
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->mAnimationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class com.facebook.fresco.animation.drawable.AnimatedDrawable2.AnonymousClass1 (com.facebook.fresco.animation.drawable.AnimatedDrawable2$1)
.class Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$1;
.super Ljava/lang/Object;
.source "AnimatedDrawable2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$1;->this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$1;->this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-static {v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->-$$Nest$fgetmInvalidateRunnable(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$1;->this$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->invalidateSelf()V

    return-void
.end method

###### Class com.facebook.fresco.animation.drawable.AnimatedDrawable2.DrawListener (com.facebook.fresco.animation.drawable.AnimatedDrawable2$DrawListener)
.class public interface abstract Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;
.super Ljava/lang/Object;
.source "AnimatedDrawable2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawListener"
.end annotation


# virtual methods
.method public abstract onDraw(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;Lcom/facebook/fresco/animation/frame/FrameScheduler;IZZJJJJJJJ)V
.end method

###### Class com.facebook.fresco.animation.drawable.AnimatedDrawable2$$ExternalSyntheticLambda0 (com.facebook.fresco.animation.drawable.AnimatedDrawable2$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;


# instance fields
.field public final synthetic f$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    return-void
.end method


# virtual methods
.method public final onAnimationLoaded()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lambda$new$0$com-facebook-fresco-animation-drawable-AnimatedDrawable2()V

    return-void
.end method
