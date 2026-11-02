###### Class io.dcloud.nineoldandroids.animation.TimeAnimator (io.dcloud.nineoldandroids.animation.TimeAnimator)
.class public Lio/dcloud/nineoldandroids/animation/TimeAnimator;
.super Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateValue(F)V
    .registers 2

    return-void
.end method

.method animationFrame(J)Z
    .registers 14

    .line 19
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPlayingState:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPlayingState:I

    .line 21
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_12

    .line 22
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    goto :goto_1c

    .line 24
    :cond_12
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    sub-long v3, p1, v3

    iput-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    const-wide/16 v3, -0x1

    .line 26
    iput-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    .line 29
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_36

    .line 30
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    sub-long v7, p1, v3

    .line 31
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2b

    goto :goto_2d

    :cond_2b
    sub-long v1, p1, v3

    :goto_2d
    move-wide v9, v1

    .line 32
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    .line 33
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

    move-object v6, p0

    invoke-interface/range {v5 .. v10}, Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;->onTimeUpdate(Lio/dcloud/nineoldandroids/animation/TimeAnimator;JJ)V

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method initAnimation()V
    .registers 1

    return-void
.end method

.method public setTimeListener(Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.TimeAnimator.TimeListener (io.dcloud.nineoldandroids.animation.TimeAnimator$TimeListener)
.class public interface abstract Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;
.super Ljava/lang/Object;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/TimeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeListener"
.end annotation


# virtual methods
.method public abstract onTimeUpdate(Lio/dcloud/nineoldandroids/animation/TimeAnimator;JJ)V
.end method
