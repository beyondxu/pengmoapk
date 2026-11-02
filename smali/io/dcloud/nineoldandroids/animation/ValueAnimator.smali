###### Class io.dcloud.nineoldandroids.animation.ValueAnimator (io.dcloud.nineoldandroids.animation.ValueAnimator)
.class public Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.super Lio/dcloud/nineoldandroids/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;,
        Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 94
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 99
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;-><init>()V

    .line 98
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    .line 108
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;-><init>()V

    .line 107
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    .line 120
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;-><init>()V

    .line 119
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 128
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;-><init>()V

    .line 127
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    .line 136
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;-><init>()V

    .line 135
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    .line 145
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 144
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Lio/dcloud/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 149
    new-instance v0, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    const-wide/16 v0, 0xa

    .line 222
    sput-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 283
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 161
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    const/4 v1, 0x0

    .line 166
    iput v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 171
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 187
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 197
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 203
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 209
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    const-wide/16 v1, 0x12c

    .line 216
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    const-wide/16 v1, 0x0

    .line 219
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    .line 226
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    .line 233
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    .line 240
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lio/dcloud/nineoldandroids/animation/ValueAnimator;Z)V
    .registers 2

    .line 197
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    return-void
.end method

.method static synthetic access$11(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    .line 1024
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$12()J
    .registers 2

    .line 222
    sget-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$2()Ljava/lang/ThreadLocal;
    .registers 1

    .line 98
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/ThreadLocal;
    .registers 1

    .line 119
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/ThreadLocal;
    .registers 1

    .line 107
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)J
    .registers 3

    .line 219
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    .line 1045
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/ThreadLocal;
    .registers 1

    .line 135
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/ThreadLocal;
    .registers 1

    .line 127
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$9(Lio/dcloud/nineoldandroids/animation/ValueAnimator;J)Z
    .registers 3

    .line 1070
    invoke-direct {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result p0

    return p0
.end method

.method public static clearAllAnimations()V
    .registers 1

    .line 1249
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1250
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1251
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .registers 9

    .line 1071
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 1072
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 1073
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    goto :goto_1b

    .line 1075
    :cond_a
    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v2, p1, v2

    .line 1076
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1b

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 1079
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1080
    iput v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    return v1

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method

.method private endAnimation()V
    .registers 6

    .line 1025
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1028
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1029
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_48

    .line 1031
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_39
    if-lt v3, v2, :cond_3c

    goto :goto_48

    .line 1034
    :cond_3c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 1037
    :cond_48
    :goto_48
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 1038
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .registers 1

    .line 1239
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .registers 2

    .line 715
    sget-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .line 315
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 316
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .line 298
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 299
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 3

    .line 352
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 353
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 354
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .line 329
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 330
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setFrameDelay(J)V
    .registers 2

    .line 728
    sput-wide p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method private start(Z)V
    .registers 8

    .line 917
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 920
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 p1, 0x0

    .line 921
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 922
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 924
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 925
    sget-object v1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_50

    .line 928
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 929
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 930
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 932
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_50

    .line 934
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_41
    if-lt v2, v1, :cond_44

    goto :goto_50

    .line 937
    :cond_44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 941
    :cond_50
    :goto_50
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_65

    .line 943
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V

    .line 944
    sget-object v1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 946
    :cond_65
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    return-void

    .line 918
    :cond_69
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startAnimation()V
    .registers 6

    .line 1046
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 1047
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_36

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    .line 1052
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_27
    if-lt v2, v1, :cond_2a

    goto :goto_36

    .line 1055
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .line 820
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 823
    :cond_b
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateValue(F)V
    .registers 6

    .line 1169
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 1170
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 1171
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-lt v2, v0, :cond_29

    .line 1175
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_28

    .line 1176
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_17
    if-lt v1, p1, :cond_1a

    goto :goto_28

    .line 1178
    :cond_1a
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_28
    :goto_28
    return-void

    .line 1173
    :cond_29
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method animationFrame(J)Z
    .registers 12

    .line 1102
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1a

    .line 1103
    iput v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1104
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_12

    .line 1105
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    goto :goto_1a

    :cond_12
    sub-long v4, p1, v4

    .line 1107
    iput-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v4, -0x1

    .line 1109
    iput-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 1112
    :cond_1a
    :goto_1a
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_23

    if-eq v0, v4, :cond_23

    return v5

    .line 1115
    :cond_23
    iget-wide v6, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    const/high16 v0, 0x3f800000    # 1.0f

    cmp-long v8, v6, v1

    if-lez v8, :cond_32

    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v6

    div-float/2addr p1, p2

    goto :goto_34

    :cond_32
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_34
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_7a

    .line 1117
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iget v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lt p2, v1, :cond_47

    const/4 p2, -0x1

    if-ne v1, p2, :cond_42

    goto :goto_47

    .line 1133
    :cond_42
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_7b

    .line 1119
    :cond_47
    :goto_47
    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_63

    .line 1120
    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_52
    if-lt v1, p2, :cond_55

    goto :goto_63

    .line 1122
    :cond_55
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v2, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 1125
    :cond_63
    :goto_63
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    if-ne p2, v4, :cond_6c

    .line 1126
    iget-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1128
    :cond_6c
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v1, p1

    add-int/2addr p2, v1

    iput p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    rem-float/2addr p1, v0

    .line 1130
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    :cond_7a
    const/4 v3, 0x0

    .line 1136
    :goto_7b
    iget-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz p2, :cond_81

    sub-float p1, v0, p1

    .line 1139
    :cond_81
    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    return v3
.end method

.method public cancel()V
    .registers 3

    .line 958
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_22

    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 959
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    return-void

    .line 961
    :cond_22
    :goto_22
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 963
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 964
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_47

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 965
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_36

    .line 968
    :cond_47
    :goto_47
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 8

    .line 1185
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 1186
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1189
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-lt v4, v3, :cond_1a

    goto :goto_28

    .line 1191
    :cond_1a
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_28
    :goto_28
    const-wide/16 v3, -0x1

    .line 1194
    iput-wide v3, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 1195
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1196
    iput v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 1197
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 1198
    iput v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1199
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 1200
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_5f

    .line 1202
    array-length v3, v1

    .line 1203
    new-array v4, v3, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    iput-object v4, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 1204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    :goto_46
    if-lt v2, v3, :cond_49

    goto :goto_5f

    .line 1206
    :cond_49
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1207
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    .line 1208
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public end()V
    .registers 3

    .line 974
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    .line 976
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 977
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    goto :goto_2a

    .line 978
    :cond_23
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_2a

    .line 979
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 983
    :cond_2a
    :goto_2a
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_37

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_37

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_3c

    :cond_37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 986
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 988
    :goto_3c
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public getAnimatedFraction()F
    .registers 2

    .line 1153
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 3

    .line 744
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    .line 745
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 762
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz p1, :cond_f

    .line 764
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentPlayTime()J
    .registers 5

    .line 556
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_9

    goto :goto_11

    .line 559
    :cond_9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_11
    :goto_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 524
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 878
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    .line 789
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 809
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 692
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 2

    .line 476
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .registers 4

    .line 490
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_18

    .line 491
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_8
    if-lt v1, v0, :cond_e

    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    return-void

    .line 493
    :cond_e
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public isRunning()Z
    .registers 3

    .line 993
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    return v1
.end method

.method public isStarted()Z
    .registers 2

    .line 998
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .registers 2

    .line 830
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 833
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public removeUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .line 844
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    goto :goto_13

    .line 847
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 849
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_13
    :goto_13
    return-void
.end method

.method public reverse()V
    .registers 7

    .line 1009
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1010
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-ne v0, v1, :cond_19

    .line 1011
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1012
    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v2, v0, v2

    .line 1013
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1014
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    return-void

    .line 1016
    :cond_19
    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .registers 7

    .line 538
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 540
    iget v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 541
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    const/4 v2, 0x2

    .line 542
    iput v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    :cond_11
    sub-long p1, v0, p1

    .line 544
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 545
    invoke-virtual {p0, v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 514
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-object p0

    .line 511
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 898
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    .line 899
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    :cond_f
    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 5

    if-eqz p1, :cond_25

    .line 401
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_25

    .line 404
    :cond_6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 407
    :cond_f
    aget-object v0, v0, v1

    .line 408
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_23

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 405
    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 411
    :goto_23
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_25
    :goto_25
    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 5

    if-eqz p1, :cond_25

    .line 373
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_25

    .line 376
    :cond_6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 379
    :cond_f
    aget-object v0, v0, v1

    .line 380
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_23

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 377
    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 383
    :goto_23
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_25
    :goto_25
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 866
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 868
    :cond_5
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 6

    if-eqz p1, :cond_26

    .line 433
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_26

    .line 436
    :cond_6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 440
    :cond_f
    aget-object v0, v0, v1

    .line 441
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_24

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 437
    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 444
    :goto_24
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_26
    :goto_26
    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2

    .line 780
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2

    .line 800
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .registers 3

    .line 702
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public varargs setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V
    .registers 8

    .line 456
    array-length v0, p1

    .line 457
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 458
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v0, :cond_11

    .line 464
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    return-void

    .line 460
    :cond_11
    aget-object v3, p1, v2

    .line 461
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    .line 951
    invoke-direct {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    .line 1258
    :goto_1b
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v1, v2, :cond_21

    return-object v0

    .line 1259
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_41
    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass1 (io.dcloud.nineoldandroids.animation.ValueAnimator$1)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;
.super Ljava/lang/ThreadLocal;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass2 (io.dcloud.nineoldandroids.animation.ValueAnimator$2)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;
.super Ljava/lang/ThreadLocal;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass3 (io.dcloud.nineoldandroids.animation.ValueAnimator$3)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;
.super Ljava/lang/ThreadLocal;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass4 (io.dcloud.nineoldandroids.animation.ValueAnimator$4)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;
.super Ljava/lang/ThreadLocal;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass5 (io.dcloud.nineoldandroids.animation.ValueAnimator$5)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;
.super Ljava/lang/ThreadLocal;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnimationHandler (io.dcloud.nineoldandroids.animation.ValueAnimator$AnimationHandler)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 570
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V
    .registers 2

    .line 570
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 586
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$2()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 587
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$3()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 588
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v5, :cond_20

    goto/16 :goto_c5

    :cond_20
    const/4 v7, 0x1

    goto :goto_43

    .line 592
    :cond_22
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$4()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 593
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v6, 0x1

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v6, 0x0

    .line 601
    :goto_3c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_f7

    move v7, v6

    .line 620
    :goto_43
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 621
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$7()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/util/ArrayList;

    .line 622
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$8()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Ljava/util/ArrayList;

    .line 626
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 p1, 0x0

    :goto_62
    if-lt p1, v12, :cond_e4

    .line 633
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_83

    const/4 v6, 0x0

    :goto_6b
    if-lt v6, p1, :cond_71

    .line 641
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_83

    .line 636
    :cond_71
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 637
    invoke-static {v12}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    .line 638
    invoke-static {v12, v5}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$10(Lio/dcloud/nineoldandroids/animation/ValueAnimator;Z)V

    .line 639
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 646
    :cond_83
    :goto_83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v6, 0x0

    :goto_88
    if-lt v6, p1, :cond_c6

    .line 667
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a6

    .line 668
    :goto_90
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v4, p1, :cond_9a

    .line 671
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto :goto_a6

    .line 669
    :cond_9a
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$11(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    :cond_a6
    :goto_a6
    if-eqz v7, :cond_c5

    .line 676
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c5

    .line 677
    :cond_b4
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$12()J

    move-result-wide v0

    .line 678
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 677
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v5, v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c5
    :goto_c5
    return-void

    .line 649
    :cond_c6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 650
    invoke-virtual {v10, v8, v9}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 651
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_d5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, p1, :cond_de

    add-int/lit8 v6, v6, 0x1

    goto :goto_88

    :cond_de
    add-int/lit8 p1, p1, -0x1

    .line 664
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_88

    .line 628
    :cond_e4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 629
    invoke-static {v6, v8, v9}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$9(Lio/dcloud/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 630
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_62

    .line 603
    :cond_f7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 604
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 605
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_105
    if-lt v9, v8, :cond_109

    goto/16 :goto_3c

    .line 607
    :cond_109
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 609
    invoke-static {v10}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$5(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v11

    cmp-long v13, v11, v2

    if-nez v13, :cond_11b

    .line 610
    invoke-static {v10}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    goto :goto_11e

    .line 612
    :cond_11b
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11e
    add-int/lit8 v9, v9, 0x1

    goto :goto_105
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener (io.dcloud.nineoldandroids.animation.ValueAnimator$AnimatorUpdateListener)
.class public interface abstract Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
.super Ljava/lang/Object;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimatorUpdateListener"
.end annotation


# virtual methods
.method public abstract onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
.end method
