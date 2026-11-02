###### Class io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC (io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC)
.class Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;
.super Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorHC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;,
        Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;,
        Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x200

.field private static final NONE:I = 0x0

.field private static final ROTATION:I = 0x10

.field private static final ROTATION_X:I = 0x20

.field private static final ROTATION_Y:I = 0x40

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x8

.field private static final TRANSFORM_MASK:I = 0x1ff

.field private static final TRANSLATION_X:I = 0x1

.field private static final TRANSLATION_Y:I = 0x2

.field private static final X:I = 0x80

.field private static final Y:I = 0x100


# instance fields
.field private mAnimationStarter:Ljava/lang/Runnable;

.field private mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

.field private mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            "Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mDurationSet:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInterpolatorSet:Z

.field private mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStartDelaySet:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 207
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    const-wide/16 v1, 0x0

    .line 55
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    .line 61
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    .line 74
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolatorSet:Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 86
    new-instance v1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-direct {v1, p0, v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;-><init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;)V

    iput-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$1;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$1;-><init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$0(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .registers 1

    .line 429
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->startAnimation()V

    return-void
.end method

.method static synthetic access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$2(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;
    .registers 1

    .line 181
    iget-object p0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$4(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 35
    iget-object p0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V
    .registers 3

    .line 535
    invoke-direct {p0, p1, p2}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->setValue(IF)V

    return-void
.end method

.method private animateProperty(IF)V
    .registers 4

    .line 468
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->getValue(I)F

    move-result v0

    sub-float/2addr p2, v0

    .line 470
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IFF)V

    return-void
.end method

.method private animatePropertyBy(IF)V
    .registers 4

    .line 482
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->getValue(I)F

    move-result v0

    .line 483
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IFF)V

    return-void
.end method

.method private animatePropertyBy(IFF)V
    .registers 8

    .line 496
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 498
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x0

    goto :goto_33

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    .line 500
    iget-object v2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 501
    invoke-virtual {v2, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->cancel(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 506
    iget v2, v2, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    if-nez v2, :cond_12

    move-object v0, v1

    :goto_33
    if-eqz v0, :cond_38

    .line 514
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Animator;->cancel()V

    .line 518
    :cond_38
    new-instance v0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    invoke-direct {v0, p1, p2, p3}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;-><init>(IFF)V

    .line 519
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_56

    .line 522
    iget-object p2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 523
    iget-object p2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_56
    return-void
.end method

.method private getValue(I)F
    .registers 4

    .line 592
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_62

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_58

    const/4 v1, 0x4

    if-eq p1, v1, :cond_53

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4e

    const/16 v1, 0x10

    if-eq p1, v1, :cond_49

    const/16 v1, 0x20

    if-eq p1, v1, :cond_44

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3f

    const/16 v1, 0x80

    if-eq p1, v1, :cond_3a

    const/16 v1, 0x100

    if-eq p1, v1, :cond_35

    const/16 v1, 0x200

    if-eq p1, v1, :cond_30

    goto :goto_62

    .line 624
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1

    .line 621
    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    return p1

    .line 618
    :cond_3a
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p1

    return p1

    .line 609
    :cond_3f
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result p1

    return p1

    .line 606
    :cond_44
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result p1

    return p1

    .line 603
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p1

    return p1

    .line 615
    :cond_4e
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result p1

    return p1

    .line 612
    :cond_53
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p1

    return p1

    .line 600
    :cond_58
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    return p1

    .line 597
    :cond_5d
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1

    :cond_62
    :goto_62
    const/4 p1, 0x0

    return p1
.end method

.method private setValue(IF)V
    .registers 5

    .line 537
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_57

    const/4 v1, 0x1

    if-eq p1, v1, :cond_54

    const/4 v1, 0x2

    if-eq p1, v1, :cond_50

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4c

    const/16 v1, 0x8

    if-eq p1, v1, :cond_48

    const/16 v1, 0x10

    if-eq p1, v1, :cond_44

    const/16 v1, 0x20

    if-eq p1, v1, :cond_40

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3c

    const/16 v1, 0x80

    if-eq p1, v1, :cond_38

    const/16 v1, 0x100

    if-eq p1, v1, :cond_34

    const/16 v1, 0x200

    if-eq p1, v1, :cond_30

    goto :goto_57

    .line 578
    :cond_30
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 574
    :cond_34
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    return-void

    .line 570
    :cond_38
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    return-void

    .line 558
    :cond_3c
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    return-void

    .line 554
    :cond_40
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    return-void

    .line 550
    :cond_44
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    return-void

    .line 566
    :cond_48
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 562
    :cond_4c
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    return-void

    .line 546
    :cond_50
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 542
    :cond_54
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_57
    :goto_57
    return-void
.end method

.method private startAnimation()V
    .registers 7

    const/4 v0, 0x1

    .line 430
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 432
    iget-object v2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 433
    iget-object v3, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 435
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-lt v1, v3, :cond_53

    .line 440
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    invoke-direct {v3, v4, v2}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 442
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 443
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    if-eqz v1, :cond_3d

    .line 444
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 446
    :cond_3d
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    if-eqz v1, :cond_46

    .line 447
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDuration:J

    invoke-virtual {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 449
    :cond_46
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolatorSet:Z

    if-eqz v1, :cond_4f

    .line 450
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 452
    :cond_4f
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    return-void

    .line 437
    :cond_53
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 438
    iget v5, v5, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method


# virtual methods
.method public alpha(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x200

    .line 414
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public alphaBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x200

    .line 420
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public cancel()V
    .registers 3

    .line 289
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 291
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 292
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_29

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    .line 294
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_18

    .line 297
    :cond_29
    :goto_29
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 300
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 238
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    if-eqz v0, :cond_7

    .line 239
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDuration:J

    return-wide v0

    .line 243
    :cond_7
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 249
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    if-eqz v0, :cond_7

    .line 250
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rotation(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x10

    .line 330
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x10

    .line 336
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public rotationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x20

    .line 342
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x20

    .line 348
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public rotationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x40

    .line 354
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x40

    .line 360
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public scaleX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/4 v0, 0x4

    .line 390
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public scaleXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/4 v0, 0x4

    .line 396
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public scaleY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x8

    .line 402
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public scaleYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x8

    .line 408
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_c

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    .line 225
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDuration:J

    return-object p0

    .line 221
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolatorSet:Z

    .line 272
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 2

    .line 278
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_c

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    .line 265
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    return-object p0

    .line 261
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .registers 1

    .line 284
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->startAnimation()V

    return-void
.end method

.method public translationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/4 v0, 0x1

    .line 366
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public translationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/4 v0, 0x1

    .line 372
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public translationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/4 v0, 0x2

    .line 378
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public translationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/4 v0, 0x2

    .line 384
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public x(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x80

    .line 306
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public xBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x80

    .line 312
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public y(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x100

    .line 318
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public yBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 3

    const/16 v0, 0x100

    .line 324
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

###### Class io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC.AnonymousClass1 (io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC$1)
.class Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$1;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 128
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$1;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$0(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC.AnimatorEventListener (io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC$AnimatorEventListener)
.class Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;
.implements Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;


# direct methods
.method private constructor <init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;)V
    .registers 3

    .line 636
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;-><init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 647
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 648
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_11
    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 661
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 662
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 664
    :cond_11
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$2(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$2(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 669
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$3(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    :cond_2c
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 654
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 655
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_11
    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 640
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 641
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_11
    return-void
.end method

.method public onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 8

    .line 690
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 691
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$2(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 692
    iget v1, p1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_27

    .line 694
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$4(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_27

    .line 696
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 699
    :cond_27
    iget-object p1, p1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    if-eqz p1, :cond_4a

    .line 701
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_30
    if-lt v2, v1, :cond_33

    goto :goto_4a

    .line 703
    :cond_33
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 704
    iget v4, v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mFromValue:F

    iget v5, v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mDeltaValue:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    .line 708
    iget-object v5, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    iget v3, v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I

    invoke-static {v5, v3, v4}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$5(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 718
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->this$0:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->access$4(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5b

    .line 720
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5b
    return-void
.end method

###### Class io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC.NameValuesHolder (io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC$NameValuesHolder)
.class Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValuesHolder"
.end annotation


# instance fields
.field mDeltaValue:F

.field mFromValue:F

.field mNameConstant:I


# direct methods
.method constructor <init>(IFF)V
    .registers 4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I

    .line 196
    iput p2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mFromValue:F

    .line 197
    iput p3, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mDeltaValue:F

    return-void
.end method

###### Class io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC.PropertyBundle (io.dcloud.nineoldandroids.view.ViewPropertyAnimatorHC$PropertyBundle)
.class Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyBundle"
.end annotation


# instance fields
.field mNameValuesHolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPropertyMask:I


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    .line 143
    iput-object p2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method cancel(I)Z
    .registers 6

    .line 157
    iget v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-lt v2, v0, :cond_12

    goto :goto_2e

    .line 160
    :cond_12
    iget-object v3, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 161
    iget v3, v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I

    if-ne v3, p1, :cond_2b

    .line 162
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    iget v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    const/4 p1, 0x1

    return p1

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2e
    :goto_2e
    return v1
.end method
