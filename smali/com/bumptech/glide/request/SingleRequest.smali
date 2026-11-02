###### Class com.bumptech.glide.request.SingleRequest (com.bumptech.glide.request.SingleRequest)
.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final GLIDE_TAG:Ljava/lang/String; = "Glide"

.field private static final IS_VERBOSE_LOGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "GlideRequest"


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private cookie:I

.field private volatile engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private height:I

.field private isCallingCallbacks:Z

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private final model:Ljava/lang/Object;

.field private final overrideHeight:I

.field private final overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private final priority:Lcom/bumptech/glide/Priority;

.field private final requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private final requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final requestLock:Ljava/lang/Object;

.field private final requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;"
        }
    .end annotation
.end field

.field private requestOrigin:Ljava/lang/RuntimeException;

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation
.end field

.field private startTime:J

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private status:Lcom/bumptech/glide/request/SingleRequest$Status;

.field private final tag:Ljava/lang/String;

.field private final target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final targetListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-string v0, "GlideRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v0, :cond_10

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 191
    iput-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    .line 192
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 194
    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 195
    iput-object p5, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 196
    iput-object p6, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 197
    iput p7, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    .line 198
    iput p8, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    .line 199
    iput-object p9, p0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 200
    iput-object p10, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 201
    iput-object p11, p0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    .line 202
    iput-object p12, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    .line 203
    iput-object p13, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 204
    iput-object p14, p0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object/from16 p1, p15

    .line 205
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-object/from16 p1, p16

    .line 206
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 207
    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 209
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    if-nez p1, :cond_5a

    invoke-virtual {p2}, Lcom/bumptech/glide/GlideContext;->getExperiments()Lcom/bumptech/glide/GlideExperiments;

    move-result-object p1

    const-class p2, Lcom/bumptech/glide/GlideBuilder$LogRequestOrigins;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/GlideExperiments;->isEnabled(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 210
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Glide request origin trace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    :cond_5a
    return-void
.end method

.method private assertNotCallingCallbacks()V
    .registers 3

    .line 304
    iget-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    if-nez v0, :cond_5

    return-void

    .line 305
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canNotifyCleared()Z
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private canNotifyStatusChanged()Z
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private canSetResource()Z
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private cancel()V
    .registers 2

    .line 292
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 294
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_17

    .line 296
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    :cond_17
    return-void
.end method

.method private experimentalNotifyRequestStarted(Ljava/lang/Object;)V
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-nez v0, :cond_5

    goto :goto_1f

    .line 275
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestListener;

    .line 276
    instance-of v2, v1, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    if-eqz v2, :cond_9

    .line 277
    check-cast v1, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/ExperimentalRequestListener;->onRequestStarted(Ljava/lang/Object;)V

    goto :goto_9

    :cond_1f
    :goto_1f
    return-void
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    .line 389
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    .line 390
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    if-lez v0, :cond_22

    .line 391
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 394
    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    .line 411
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    .line 412
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    if-lez v0, :cond_22

    .line 413
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    .line 400
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    .line 401
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    if-lez v0, :cond_22

    .line 402
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 405
    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private isFirstReadyResource()Z
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->getRoot()Lcom/bumptech/glide/request/RequestCoordinator;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method private loadDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 423
    :goto_15
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private logV(Ljava/lang/String;)V
    .registers 3

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlideRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static maybeApplySizeMultiplier(IF)I
    .registers 3

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_5

    return p0

    :cond_5
    int-to-float p0, p0

    mul-float p1, p1, p0

    .line 502
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private notifyRequestCoordinatorLoadFailed()V
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_7

    .line 535
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestFailed(Lcom/bumptech/glide/request/Request;)V

    :cond_7
    return-void
.end method

.method private notifyRequestCoordinatorLoadSucceeded()V
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_7

    .line 528
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    :cond_7
    return-void
.end method

.method public static obtain(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/SingleRequest;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "TR;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/bumptech/glide/request/SingleRequest;-><init>(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .registers 11

    const-string v0, "Load failed for ["

    .line 689
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 690
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_a
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/load/engine/GlideException;->setOrigin(Ljava/lang/Exception;)V

    .line 692
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v2}, Lcom/bumptech/glide/GlideContext;->getLogLevel()I

    move-result v2

    if-gt v2, p2, :cond_4c

    .line 694
    const-string p2, "Glide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] with dimensions ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v2, p2, :cond_4c

    .line 699
    const-string p2, "Glide"

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    :cond_4c
    const/4 p2, 0x0

    .line 703
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 704
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 706
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->notifyRequestCoordinatorLoadFailed()V

    const/4 p2, 0x1

    .line 708
    iput-boolean p2, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_a8

    const/4 v0, 0x0

    .line 712
    :try_start_5a
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v2, :cond_7d

    .line 713
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestListener;

    .line 714
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v6, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 715
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lcom/bumptech/glide/request/RequestListener;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_63

    :cond_7d
    const/4 v3, 0x0

    .line 718
    :cond_7e
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v2, :cond_91

    iget-object v4, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 720
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/bumptech/glide/request/RequestListener;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    const/4 p2, 0x0

    :goto_92
    or-int p1, v3, p2

    if-nez p1, :cond_99

    .line 723
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->setErrorPlaceholder()V
    :try_end_99
    .catchall {:try_start_5a .. :try_end_99} :catchall_a4

    .line 726
    :cond_99
    :try_start_99
    iput-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 729
    const-string p1, "GlideRequest"

    iget p2, p0, Lcom/bumptech/glide/request/SingleRequest;->cookie:I

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    .line 730
    monitor-exit v1

    return-void

    :catchall_a4
    move-exception p1

    .line 726
    iput-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 727
    throw p1

    :catchall_a8
    move-exception p1

    .line 730
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_99 .. :try_end_aa} :catchall_a8

    throw p1
.end method

.method private onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 620
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v5

    .line 621
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 622
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 624
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {p1}, Lcom/bumptech/glide/GlideContext;->getLogLevel()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_68

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Finished loading "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    .line 638
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    const-string v0, "Glide"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_68
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->notifyRequestCoordinatorLoadSucceeded()V

    const/4 p1, 0x1

    .line 644
    iput-boolean p1, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    const/4 v7, 0x0

    .line 647
    :try_start_6f
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v0, :cond_a6

    .line 648
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v6, 0x0

    :goto_78
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestListener;

    .line 649
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v1, p2

    move-object v4, p3

    .line 650
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p2

    or-int/2addr p2, v6

    .line 652
    instance-of p3, v0, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    if-eqz p3, :cond_a0

    .line 653
    check-cast v0, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    .line 655
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move v6, p4

    .line 656
    invoke-virtual/range {v0 .. v6}, Lcom/bumptech/glide/request/ExperimentalRequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;ZZ)Z

    move-result p3

    or-int/2addr p2, p3

    goto :goto_a1

    :cond_a0
    move v6, p4

    :goto_a1
    move-object p3, v4

    move p4, v6

    move v6, p2

    move-object p2, v1

    goto :goto_78

    :cond_a6
    const/4 v6, 0x0

    :cond_a7
    move-object v1, p2

    move-object v4, p3

    .line 661
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_b8

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 663
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p2

    if-eqz p2, :cond_b8

    goto :goto_b9

    :cond_b8
    const/4 p1, 0x0

    :goto_b9
    or-int/2addr p1, v6

    if-nez p1, :cond_c7

    .line 666
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    invoke-interface {p1, v4, v5}, Lcom/bumptech/glide/request/transition/TransitionFactory;->build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    .line 667
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {p2, v1, p1}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    :try_end_c7
    .catchall {:try_start_6f .. :try_end_c7} :catchall_d1

    .line 670
    :cond_c7
    iput-boolean v7, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 673
    const-string p1, "GlideRequest"

    iget p2, p0, Lcom/bumptech/glide/request/SingleRequest;->cookie:I

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    return-void

    :catchall_d1
    move-exception v0

    move-object p1, v0

    .line 670
    iput-boolean v7, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 671
    throw p1
.end method

.method private setErrorPlaceholder()V
    .registers 3

    .line 428
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 433
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 434
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_17

    .line 438
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_17
    if-nez v0, :cond_1d

    .line 442
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    :cond_1d
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public begin()V
    .registers 6

    const-string v0, "finished run method in "

    .line 216
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_5
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 218
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 219
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v2, :cond_3e

    .line 221
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 222
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    .line 223
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    .line 227
    :cond_29
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_31

    const/4 v0, 0x5

    goto :goto_32

    :cond_31
    const/4 v0, 0x3

    .line 228
    :goto_32
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 229
    monitor-exit v1

    return-void

    .line 232
    :cond_3e
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v3, :cond_b2

    .line 242
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v2, v3, :cond_54

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/bumptech/glide/request/SingleRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 245
    monitor-exit v1

    return-void

    .line 251
    :cond_54
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/bumptech/glide/request/SingleRequest;->experimentalNotifyRequestStarted(Ljava/lang/Object;)V

    .line 253
    const-string v2, "GlideRequest"

    invoke-static {v2}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSectionAsync(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/request/SingleRequest;->cookie:I

    .line 254
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 255
    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v3, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 256
    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v3, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/request/SingleRequest;->onSizeReady(II)V

    goto :goto_7c

    .line 258
    :cond_77
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v2, p0}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 261
    :goto_7c
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v3, :cond_88

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v2, v3, :cond_97

    .line 262
    :cond_88
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 263
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_97
    sget-boolean v2, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v2, :cond_b0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 268
    :cond_b0
    monitor-exit v1

    return-void

    .line 233
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_ba
    move-exception v0

    .line 268
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_5 .. :try_end_bc} :catchall_ba

    throw v0
.end method

.method public clear()V
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_3
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 326
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 327
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_13

    .line 328
    monitor-exit v0

    return-void

    .line 330
    :cond_13
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->cancel()V

    .line 332
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 334
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    .line 336
    :goto_1f
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyCleared()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 337
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_2e
    const-string v2, "GlideRequest"

    iget v3, p0, Lcom/bumptech/glide/request/SingleRequest;->cookie:I

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    .line 341
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 342
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_42

    if-eqz v1, :cond_41

    .line 345
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    :cond_41
    return-void

    :catchall_42
    move-exception v1

    .line 342
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 685
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    return-object v0
.end method

.method public isAnyResourceSet()Z
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 383
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public isCleared()Z
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 376
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public isComplete()Z
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 369
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 735
    instance-of v2, v0, Lcom/bumptech/glide/request/SingleRequest;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    .line 746
    :cond_a
    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 747
    :try_start_d
    iget v4, v1, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    .line 748
    iget v5, v1, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    .line 749
    iget-object v6, v1, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 750
    iget-object v7, v1, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 751
    iget-object v8, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 752
    iget-object v9, v1, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 753
    iget-object v10, v1, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v10, :cond_22

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_23

    :cond_22
    const/4 v10, 0x0

    .line 754
    :goto_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_62

    .line 756
    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    .line 764
    iget-object v11, v0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v11

    .line 765
    :try_start_29
    iget v2, v0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    .line 766
    iget v12, v0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    .line 767
    iget-object v13, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 768
    iget-object v14, v0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 769
    iget-object v15, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    const/16 v16, 0x0

    .line 770
    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 771
    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 772
    :goto_41
    monitor-exit v11
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_5f

    if-ne v4, v2, :cond_5e

    if-ne v5, v12, :cond_5e

    .line 779
    invoke-static {v6, v13}, Lcom/bumptech/glide/util/Util;->bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 780
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 781
    invoke-static {v8, v15}, Lcom/bumptech/glide/util/Util;->bothBaseRequestOptionsNullEquivalentOrEquals(Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/BaseRequestOptions;)Z

    move-result v2

    if-eqz v2, :cond_5e

    if-ne v9, v3, :cond_5e

    if-ne v10, v0, :cond_5e

    const/4 v0, 0x1

    return v0

    :cond_5e
    return v16

    :catchall_5f
    move-exception v0

    .line 772
    :try_start_60
    monitor-exit v11
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0

    :catchall_62
    move-exception v0

    .line 754
    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public isRunning()Z
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_12

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    .line 362
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .registers 3

    const/4 v0, 0x5

    .line 679
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    const-string v0, "Expected to receive an object of "

    const-string v1, "Expected to receive a Resource<R> with an object of "

    .line 544
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    const/4 v2, 0x0

    .line 547
    :try_start_a
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_b9

    .line 548
    :try_start_d
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-nez p1, :cond_2e

    .line 550
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " inside, but instead got null."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 557
    monitor-exit v3

    return-void

    .line 560
    :cond_2e
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 561
    iget-object v4, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_62

    .line 587
    :cond_41
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canSetResource()Z

    move-result v0
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_b6

    if-nez v0, :cond_5d

    .line 589
    :try_start_47
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 591
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 592
    const-string p2, "GlideRequest"

    iget p3, p0, Lcom/bumptech/glide/request/SingleRequest;->cookie:I

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    .line 593
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_b2

    if-eqz p1, :cond_b1

    .line 601
    :goto_57
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    return-void

    .line 596
    :cond_5d
    :try_start_5d
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/bumptech/glide/request/SingleRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 598
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_b6

    return-void

    .line 563
    :cond_62
    :goto_62
    :try_start_62
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 564
    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but instead got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7c

    .line 570
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_7e

    :cond_7c
    const-string v0, ""

    :goto_7e
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} inside Resource{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9e

    .line 579
    const-string v0, ""

    goto :goto_a0

    .line 580
    :cond_9e
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_a0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 584
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_62 .. :try_end_ae} :catchall_b2

    if-eqz p1, :cond_b1

    goto :goto_57

    :cond_b1
    return-void

    :catchall_b2
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_b7

    :catchall_b6
    move-exception p1

    .line 598
    :goto_b7
    :try_start_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw p1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception p1

    if-eqz v2, :cond_c1

    .line 601
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 603
    :cond_c1
    throw p1
.end method

.method public onSizeReady(II)V
    .registers 26

    move-object/from16 v1, p0

    const-string v0, "finished onSizeReady in "

    const-string v2, "finished setup for calling load in "

    const-string v3, "Got onSizeReady in "

    .line 450
    iget-object v4, v1, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v4}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 451
    iget-object v4, v1, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v4

    .line 452
    :try_start_10
    sget-boolean v22, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v22, :cond_29

    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v6, v7}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 455
    :cond_29
    iget-object v3, v1, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v5, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v3, v5, :cond_31

    .line 456
    monitor-exit v4

    return-void

    .line 458
    :cond_31
    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v3, v1, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 460
    iget-object v3, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->getSizeMultiplier()F

    move-result v3

    move/from16 v5, p1

    .line 461
    invoke-static {v5, v3}, Lcom/bumptech/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v5

    iput v5, v1, Lcom/bumptech/glide/request/SingleRequest;->width:I

    move/from16 v5, p2

    .line 462
    invoke-static {v5, v3}, Lcom/bumptech/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v3

    iput v3, v1, Lcom/bumptech/glide/request/SingleRequest;->height:I

    if-eqz v22, :cond_62

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v5, v6}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 467
    :cond_62
    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v3, v1, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;
    :try_end_66
    .catchall {:try_start_10 .. :try_end_66} :catchall_112

    move-object v5, v4

    :try_start_67
    iget-object v4, v1, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v6, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 471
    invoke-virtual {v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->getSignature()Lcom/bumptech/glide/load/Key;

    move-result-object v6
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_10e

    move-object v7, v5

    move-object v5, v6

    :try_start_71
    iget v6, v1, Lcom/bumptech/glide/request/SingleRequest;->width:I
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_10a

    move-object v8, v7

    :try_start_74
    iget v7, v1, Lcom/bumptech/glide/request/SingleRequest;->height:I

    iget-object v9, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 474
    invoke-virtual {v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getResourceClass()Ljava/lang/Class;

    move-result-object v9
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_106

    move-object v10, v8

    move-object v8, v9

    :try_start_7e
    iget-object v9, v1, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_102

    move-object v11, v10

    :try_start_81
    iget-object v10, v1, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    iget-object v12, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 477
    invoke-virtual {v12}, Lcom/bumptech/glide/request/BaseRequestOptions;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-result-object v12

    iget-object v13, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 478
    invoke-virtual {v13}, Lcom/bumptech/glide/request/BaseRequestOptions;->getTransformations()Ljava/util/Map;

    move-result-object v13

    iget-object v14, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 479
    invoke-virtual {v14}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired()Z

    move-result v14

    iget-object v15, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 480
    invoke-virtual {v15}, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform()Z

    move-result v15

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 481
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v2

    move-object/from16 p1, v2

    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 482
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    move-result v2

    move/from16 p2, v2

    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 483
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->getUseUnlimitedSourceGeneratorsPool()Z

    move-result v17

    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 484
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->getUseAnimationPool()Z

    move-result v18

    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 485
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOnlyRetrieveFromCache()Z

    move-result v19

    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->callbackExecutor:Ljava/util/concurrent/Executor;
    :try_end_c1
    .catchall {:try_start_81 .. :try_end_c1} :catchall_fe

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object v1, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move v14, v15

    move-object/from16 v2, v16

    move-object/from16 v15, p1

    move/from16 v16, p2

    .line 468
    :try_start_d0
    invoke-virtual/range {v2 .. v21}, Lcom/bumptech/glide/load/engine/Engine;->load(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZZZLcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v2
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_fa

    move-object/from16 v3, v20

    :try_start_d6
    iput-object v2, v3, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 492
    iget-object v2, v3, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v4, :cond_e1

    const/4 v2, 0x0

    .line 493
    iput-object v2, v3, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    :cond_e1
    if-eqz v22, :cond_f8

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 498
    :cond_f8
    monitor-exit v1

    return-void

    :catchall_fa
    move-exception v0

    move-object/from16 v3, v20

    goto :goto_115

    :catchall_fe
    move-exception v0

    move-object v3, v1

    move-object v1, v11

    goto :goto_115

    :catchall_102
    move-exception v0

    move-object v3, v1

    move-object v1, v10

    goto :goto_115

    :catchall_106
    move-exception v0

    move-object v3, v1

    move-object v1, v8

    goto :goto_115

    :catchall_10a
    move-exception v0

    move-object v3, v1

    move-object v1, v7

    goto :goto_115

    :catchall_10e
    move-exception v0

    move-object v3, v1

    move-object v1, v5

    goto :goto_115

    :catchall_112
    move-exception v0

    move-object v3, v1

    move-object v1, v4

    :goto_115
    monitor-exit v1
    :try_end_116
    .catchall {:try_start_d6 .. :try_end_116} :catchall_117

    throw v0

    :catchall_117
    move-exception v0

    goto :goto_115
.end method

.method public pause()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 353
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->clear()V

    .line 355
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 797
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 799
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 800
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2e

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_2e
    move-exception v1

    .line 800
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

###### Class com.bumptech.glide.request.SingleRequest.Status (com.bumptech.glide.request.SingleRequest$Status)
.class final enum Lcom/bumptech/glide/request/SingleRequest$Status;
.super Ljava/lang/Enum;
.source "SingleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/SingleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/request/SingleRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;


# direct methods
.method private static synthetic $values()[Lcom/bumptech/glide/request/SingleRequest$Status;
    .registers 3

    const/4 v0, 0x6

    .line 45
    new-array v0, v0, [Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 49
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 51
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "WAITING_FOR_SIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 53
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "COMPLETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 55
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 57
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "CLEARED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 45
    invoke-static {}, Lcom/bumptech/glide/request/SingleRequest$Status;->$values()[Lcom/bumptech/glide/request/SingleRequest$Status;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->$VALUES:[Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/SingleRequest$Status;
    .registers 2

    .line 45
    const-class v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/SingleRequest$Status;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/request/SingleRequest$Status;
    .registers 1

    .line 45
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->$VALUES:[Lcom/bumptech/glide/request/SingleRequest$Status;

    invoke-virtual {v0}, [Lcom/bumptech/glide/request/SingleRequest$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/SingleRequest$Status;

    return-object v0
.end method
