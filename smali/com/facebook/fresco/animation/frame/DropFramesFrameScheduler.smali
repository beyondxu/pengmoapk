###### Class com.facebook.fresco.animation.frame.DropFramesFrameScheduler (com.facebook.fresco.animation.frame.DropFramesFrameScheduler)
.class public final Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;
.super Ljava/lang/Object;
.source "DropFramesFrameScheduler.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/frame/FrameScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0007H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;",
        "Lcom/facebook/fresco/animation/frame/FrameScheduler;",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "<init>",
        "(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V",
        "_loopDurationMs",
        "",
        "getFrameNumberToRender",
        "",
        "animationTimeMs",
        "lastFrameTimeMs",
        "getLoopDurationMs",
        "getTargetRenderTimeMs",
        "frameNumber",
        "getTargetRenderTimeForNextFrameMs",
        "isInfiniteAnimation",
        "",
        "getFrameNumberWithinLoop",
        "timeInCurrentLoopMs",
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
.field public static final Companion:Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

.field private static final UNSET:I = -0x1


# instance fields
.field private _loopDurationMs:J

.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->Companion:Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V
    .registers 4

    const-string v0, "animationInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    return-void
.end method


# virtual methods
.method public getFrameNumberToRender(JJ)I
    .registers 10

    .line 20
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getLoopDurationMs()J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_f

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getFrameNumberWithinLoop(J)I

    move-result p1

    return p1

    .line 24
    :cond_f
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->isInfiniteAnimation()Z

    move-result v0

    if-nez v0, :cond_24

    .line 25
    div-long v0, p1, p3

    .line 26
    iget-object v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_24

    const/4 p1, -0x1

    return p1

    .line 30
    :cond_24
    rem-long/2addr p1, p3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getFrameNumberWithinLoop(J)I

    move-result p1

    return p1
.end method

.method public final getFrameNumberWithinLoop(J)I
    .registers 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 91
    :goto_3
    iget-object v3, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v3, v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x1

    cmp-long v4, p1, v1

    if-gez v4, :cond_12

    return v0

    :cond_12
    move v0, v3

    goto :goto_3
.end method

.method public getLoopDurationMs()J
    .registers 7

    .line 35
    iget-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 39
    iget-object v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_25

    .line 41
    iget-wide v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    iget-object v4, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v4, v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 43
    :cond_25
    iget-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    return-wide v0
.end method

.method public getTargetRenderTimeForNextFrameMs(J)J
    .registers 14

    .line 55
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getLoopDurationMs()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_d

    return-wide v2

    .line 60
    :cond_d
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->isInfiniteAnimation()Z

    move-result v6

    if-nez v6, :cond_21

    .line 61
    div-long v6, p1, v0

    .line 62
    iget-object v8, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v8}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_21

    return-wide v2

    .line 67
    :cond_21
    rem-long v0, p1, v0

    .line 70
    iget-object v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_3b

    cmp-long v6, v4, v0

    if-gtz v6, :cond_3b

    .line 73
    iget-object v6, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v6, v3}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3b
    sub-long/2addr v4, v0

    add-long/2addr p1, v4

    return-wide p1
.end method

.method public getTargetRenderTimeMs(I)J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_10

    .line 49
    iget-object v3, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v3, p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    return-wide v0
.end method

.method public isInfiniteAnimation()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class com.facebook.fresco.animation.frame.DropFramesFrameScheduler.Companion (com.facebook.fresco.animation.frame.DropFramesFrameScheduler$Companion)
.class public final Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;
.super Ljava/lang/Object;
.source "DropFramesFrameScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;
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
        "Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;",
        "",
        "<init>",
        "()V",
        "UNSET",
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;-><init>()V

    return-void
.end method
