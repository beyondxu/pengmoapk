###### Class io.dcloud.nineoldandroids.animation.Keyframe (io.dcloud.nineoldandroids.animation.Keyframe)
.class public abstract Lio/dcloud/nineoldandroids/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;,
        Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;,
        Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;
    }
.end annotation


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mValueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mHasValue:Z

    return-void
.end method

.method public static ofFloat(F)Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 2

    .line 124
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofFloat(FF)Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 3

    .line 108
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method

.method public static ofInt(F)Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 2

    .line 92
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofInt(FI)Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 3

    .line 76
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0
.end method

.method public static ofObject(F)Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 3

    .line 156
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static ofObject(FLjava/lang/Object;)Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 3

    .line 140
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lio/dcloud/nineoldandroids/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->clone()Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFraction()F
    .registers 2

    .line 191
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 211
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .line 232
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public hasValue()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mHasValue:Z

    return v0
.end method

.method public setFraction(F)V
    .registers 2

    .line 201
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mFraction:F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method

###### Class io.dcloud.nineoldandroids.animation.Keyframe.FloatKeyframe (io.dcloud.nineoldandroids.animation.Keyframe$FloatKeyframe)
.class Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;
.super Lio/dcloud/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatKeyframe"
.end annotation


# instance fields
.field mValue:F


# direct methods
.method constructor <init>(F)V
    .registers 2

    .line 333
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;-><init>()V

    .line 334
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 335
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FF)V
    .registers 3

    .line 326
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;-><init>()V

    .line 327
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 328
    iput p2, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 329
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public clone()Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;
    .registers 4

    .line 355
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 356
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->clone()Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .registers 2

    .line 339
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 343
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_15

    .line 348
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    :cond_15
    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.Keyframe.IntKeyframe (io.dcloud.nineoldandroids.animation.Keyframe$IntKeyframe)
.class Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;
.super Lio/dcloud/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>(F)V
    .registers 2

    .line 289
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;-><init>()V

    .line 290
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 291
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FI)V
    .registers 3

    .line 282
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;-><init>()V

    .line 283
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 284
    iput p2, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    .line 285
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public clone()Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;
    .registers 4

    .line 311
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 312
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->clone()Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .registers 2

    .line 295
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 299
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_15

    .line 304
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    :cond_15
    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.Keyframe.ObjectKeyframe (io.dcloud.nineoldandroids.animation.Keyframe$ObjectKeyframe)
.class Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;
.super Lio/dcloud/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectKeyframe"
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .registers 3

    .line 248
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;-><init>()V

    .line 249
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mFraction:F

    .line 250
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 251
    :goto_c
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    .line 252
    iget-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    if-eqz p1, :cond_17

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_19

    :cond_17
    const-class p1, Ljava/lang/Object;

    :goto_19
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public clone()Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;
    .registers 4

    .line 266
    new-instance v0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->getFraction()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Keyframe;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->clone()Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 256
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 261
    :goto_7
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    return-void
.end method
