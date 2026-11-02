###### Class com.facebook.drawee.view.DraweeHolder (com.facebook.drawee.view.DraweeHolder)
.class public Lcom/facebook/drawee/view/DraweeHolder;
.super Ljava/lang/Object;
.source "DraweeHolder.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/VisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/interfaces/DraweeHierarchy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/drawable/VisibilityCallback;"
    }
.end annotation


# instance fields
.field private mController:Lcom/facebook/drawee/interfaces/DraweeController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private mHierarchy:Lcom/facebook/drawee/interfaces/DraweeHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsControllerAttached:Z

.field private mIsHolderAttached:Z

.field private mIsVisible:Z


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V
    .registers 3
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeHierarchy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    .line 47
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsHolderAttached:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsVisible:Z

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 53
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->newInstance()Lcom/facebook/drawee/components/DraweeEventTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_19

    .line 76
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    :cond_19
    return-void
.end method

.method private attachController()V
    .registers 3

    .line 251
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    if-eqz v0, :cond_5

    goto :goto_1e

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    .line 256
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeController;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 257
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeController;->onAttach()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private attachOrDetachController()V
    .registers 2

    .line 274
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsHolderAttached:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsVisible:Z

    if-eqz v0, :cond_c

    .line 275
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->attachController()V

    return-void

    .line 277
    :cond_c
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->detachController()V

    return-void
.end method

.method public static create(Lcom/facebook/drawee/interfaces/DraweeHierarchy;Landroid/content/Context;)Lcom/facebook/drawee/view/DraweeHolder;
    .registers 3
    .param p0    # Lcom/facebook/drawee/interfaces/DraweeHierarchy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DH::",
            "Lcom/facebook/drawee/interfaces/DraweeHierarchy;",
            ">(TDH;",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/DraweeHolder;-><init>(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 62
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->registerWithContext(Landroid/content/Context;)V

    return-object v0
.end method

.method private detachController()V
    .registers 3

    .line 262
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    if-nez v0, :cond_5

    goto :goto_1a

    .line 265
    :cond_5
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    .line 267
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeHolder;->isControllerValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 269
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeController;->onDetach()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private setVisibilityCallback(Lcom/facebook/drawee/drawable/VisibilityCallback;)V
    .registers 4
    .param p1    # Lcom/facebook/drawee/drawable/VisibilityCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 164
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/facebook/drawee/drawable/VisibilityAwareDrawable;

    if-eqz v1, :cond_d

    .line 166
    check-cast v0, Lcom/facebook/drawee/drawable/VisibilityAwareDrawable;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/VisibilityAwareDrawable;->setVisibilityCallback(Lcom/facebook/drawee/drawable/VisibilityCallback;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public getController()Lcom/facebook/drawee/interfaces/DraweeController;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    return-object v0
.end method

.method protected getDraweeEventTracker()Lcom/facebook/drawee/components/DraweeEventTracker;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    return-object v0
.end method

.method public getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mHierarchy:Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    return-object v0
.end method

.method public getTopLevelDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mHierarchy:Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeHierarchy;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hasHierarchy()Z
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mHierarchy:Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isAttached()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsHolderAttached:Z

    return v0
.end method

.method public isControllerValid()Z
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeController;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mHierarchy:Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsHolderAttached:Z

    .line 89
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->attachOrDetachController()V

    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsHolderAttached:Z

    .line 112
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->attachOrDetachController()V

    return-void
.end method

.method public onDraw()V
    .registers 7

    .line 144
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    if-eqz v0, :cond_5

    return-void

    .line 150
    :cond_5
    const-class v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 153
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 154
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeHolder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    .line 150
    const-string v2, "%x: Draw requested for a non-attached controller %x. %s"

    invoke-static {v0, v2, v4}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iput-boolean v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsHolderAttached:Z

    .line 158
    iput-boolean v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsVisible:Z

    .line 159
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->attachOrDetachController()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeHolder;->isControllerValid()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_8
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/interfaces/DraweeController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChange(Z)V
    .registers 4

    .line 132
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_c

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_e

    :cond_c
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_e
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 136
    iput-boolean p1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsVisible:Z

    .line 137
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->attachOrDetachController()V

    return-void
.end method

.method public registerWithContext(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public resetActualImage()V
    .registers 2

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/DraweeHolder;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setController(Lcom/facebook/drawee/interfaces/DraweeController;)V
    .registers 5
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    if-eqz v0, :cond_7

    .line 174
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->detachController()V

    .line 178
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeHolder;->isControllerValid()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 179
    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 181
    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/facebook/drawee/interfaces/DraweeController;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 183
    :cond_1a
    iput-object p1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    if-eqz p1, :cond_2d

    .line 185
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 186
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mHierarchy:Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    invoke-interface {p1, v1}, Lcom/facebook/drawee/interfaces/DraweeController;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    goto :goto_34

    .line 188
    :cond_2d
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    :goto_34
    if-eqz v0, :cond_39

    .line 192
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeHolder;->attachController()V

    :cond_39
    return-void
.end method

.method public setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 209
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeHolder;->isControllerValid()Z

    move-result v0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, v1}, Lcom/facebook/drawee/view/DraweeHolder;->setVisibilityCallback(Lcom/facebook/drawee/drawable/VisibilityCallback;)V

    .line 212
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    iput-object v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mHierarchy:Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    .line 213
    invoke-interface {v1}, Lcom/facebook/drawee/interfaces/DraweeHierarchy;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 214
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    :goto_27
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/view/DraweeHolder;->onVisibilityChange(Z)V

    .line 215
    invoke-direct {p0, p0}, Lcom/facebook/drawee/view/DraweeHolder;->setVisibilityCallback(Lcom/facebook/drawee/drawable/VisibilityCallback;)V

    if-eqz v0, :cond_34

    .line 219
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeHolder;->mController:Lcom/facebook/drawee/interfaces/DraweeController;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/interfaces/DraweeController;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    :cond_34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 283
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "controllerAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsControllerAttached:Z

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "holderAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsHolderAttached:Z

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "drawableVisible"

    iget-boolean v2, p0, Lcom/facebook/drawee/view/DraweeHolder;->mIsVisible:Z

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeHolder;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 287
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
