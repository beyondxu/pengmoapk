###### Class com.facebook.fresco.animation.backend.AnimationBackend (com.facebook.fresco.animation.backend.AnimationBackend)
.class public interface abstract Lcom/facebook/fresco/animation/backend/AnimationBackend;
.super Ljava/lang/Object;
.source "AnimationBackend.java"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/AnimationInformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
    }
.end annotation


# static fields
.field public static final INTRINSIC_DIMENSION_UNSET:I = -0x1


# virtual methods
.method public abstract clear()V
.end method

.method public abstract drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
.end method

.method public abstract getIntrinsicHeight()I
.end method

.method public abstract getIntrinsicWidth()I
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract preloadAnimation()V
.end method

.method public abstract setAlpha(I)V
.end method

.method public abstract setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setBounds(Landroid/graphics/Rect;)V
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

###### Class com.facebook.fresco.animation.backend.AnimationBackend.Listener (com.facebook.fresco.animation.backend.AnimationBackend$Listener)
.class public interface abstract Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
.super Ljava/lang/Object;
.source "AnimationBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/backend/AnimationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAnimationLoaded()V
.end method
