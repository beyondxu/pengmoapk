###### Class com.facebook.fresco.animation.backend.AnimationBackendDelegate (com.facebook.fresco.animation.backend.AnimationBackendDelegate)
.class public Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;
.super Ljava/lang/Object;
.source "AnimationBackendDelegate.java"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/AnimationBackend;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;"
    }
.end annotation


# static fields
.field private static final ALPHA_UNSET:I = -0x1


# instance fields
.field private mAlpha:I

.field private mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBounds:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mColorFilter:Landroid/graphics/ColorFilter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .registers 3
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAlpha:I

    .line 36
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    return-void
.end method

.method private applyBackendProperties(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 164
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 166
    :cond_7
    iget v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAlpha:I

    if-ltz v0, :cond_12

    const/16 v1, 0xff

    if-gt v0, v1, :cond_12

    .line 167
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAlpha(I)V

    .line 169
    :cond_12
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_19

    .line 170
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 106
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->clear()V

    :cond_7
    return-void
.end method

.method public drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public getAnimationBackend()Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    return-object v0
.end method

.method public getFrameCount()I
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

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

    .line 46
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

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

    .line 133
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 135
    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 128
    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getLoopDurationMs()I
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getLoopDurationMs()I

    move-result v0

    return v0
.end method

.method public getSizeInBytes()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getSizeInBytes()I

    move-result v0

    return v0
.end method

.method public height()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->height()I

    move-result v0

    return v0
.end method

.method public preloadAnimation()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 113
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->preloadAnimation()V

    :cond_7
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 77
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAlpha(I)V

    .line 79
    :cond_7
    iput p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAlpha:I

    return-void
.end method

.method public setAnimationBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .registers 2
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz p1, :cond_7

    .line 147
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->applyBackendProperties(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    :cond_7
    return-void
.end method

.method public setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V
    .registers 3
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 120
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V

    :cond_7
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 93
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 95
    :cond_7
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_7

    .line 85
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 87
    :cond_7
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public width()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->mAnimationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->width()I

    move-result v0

    return v0
.end method
