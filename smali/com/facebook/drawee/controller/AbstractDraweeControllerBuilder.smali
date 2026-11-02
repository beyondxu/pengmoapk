###### Class com.facebook.drawee.controller.AbstractDraweeControllerBuilder (com.facebook.drawee.controller.AbstractDraweeControllerBuilder)
.class public abstract Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;"
    }
.end annotation


# static fields
.field private static final NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

.field private static final sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mAutoPlayAnimations:Z

.field private final mBoundControllerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBoundControllerListeners2:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mContentDescription:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLegacyOnFadeListener:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLogWithHighSamplingRate:Z

.field private mLowResImageRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMultiImageRequests:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOldController:Lcom/facebook/drawee/interfaces/DraweeController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRetainImageOnFailure:Z

.field private mTapToRetryEnabled:Z

.field private mTryCacheOnlyFirst:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLogWithHighSamplingRate:Z

    .line 84
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners:Ljava/util/Set;

    .line 86
    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners2:Ljava/util/Set;

    .line 87
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->init()V

    return-void
.end method

.method protected static generateUniqueControllerId()Ljava/lang/String;
    .registers 2

    .line 361
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 3

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    .line 93
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 94
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 97
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 98
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLegacyOnFadeListener:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;

    .line 99
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    .line 101
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    .line 102
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLogWithHighSamplingRate:Z

    .line 103
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 104
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContentDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .registers 2

    .line 317
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->validate()V

    .line 320
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 321
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 325
    :cond_14
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->buildController()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/drawee/interfaces/DraweeController;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method protected buildController()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .registers 3

    .line 343
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 344
    const-string v0, "AbstractDraweeControllerBuilder#buildController"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 346
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->obtainController()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->isLogWithHighSamplingRate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setLogWithHighSamplingRate(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getRetainImageOnFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setRetainImageOnFailure(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setContentDescription(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getControllerViewportVisibilityListener()Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setControllerViewportVisibilityListener(Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;)V

    .line 351
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeBuildAndSetRetryManager(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeAttachListeners(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    .line 353
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 354
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_3a
    return-object v0
.end method

.method public getAutoPlayAnimations()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    return v0
.end method

.method public getCallerContext()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    return-object v0
.end method

.method public getControllerViewportVisibilityListener()Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    return-object v0
.end method

.method protected abstract getDataSourceForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;"
        }
    .end annotation
.end method

.method public getDataSourceSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method protected getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "TREQUEST;)",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->FULL_FETCH:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;

    move-result-object p1

    return-object p1
.end method

.method protected getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getCallerContext()Ljava/lang/Object;

    move-result-object v5

    .line 432
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)V

    return-object v0
.end method

.method protected getFirstAvailableDataSourceSupplier(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "[TREQUEST;Z)",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1d

    const/4 p4, 0x0

    .line 406
    :goto_c
    array-length v2, p3

    if-ge p4, v2, :cond_1d

    .line 407
    aget-object v2, p3, p4

    sget-object v3, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 408
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    .line 407
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_c

    .line 412
    :cond_1d
    :goto_1d
    array-length p4, p3

    if-ge v1, p4, :cond_2c

    .line 413
    aget-object p4, p3, v1

    invoke-virtual {p0, p1, p2, p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 415
    :cond_2c
    invoke-static {v0}, Lcom/facebook/datasource/FirstAvailableDataSourceSupplier;->create(Ljava/util/List;)Lcom/facebook/datasource/FirstAvailableDataSourceSupplier;

    move-result-object p1

    return-object p1
.end method

.method public getFirstAvailableImageRequests()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    return-object v0
.end method

.method public getImageRequest()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public getLoggingListener()Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLegacyOnFadeListener:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;

    return-object v0
.end method

.method public getLowResImageRequest()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldController()Lcom/facebook/drawee/interfaces/DraweeController;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    return-object v0
.end method

.method public getRetainImageOnFailure()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mRetainImageOnFailure:Z

    return v0
.end method

.method public getTapToRetryEnabled()Z
    .registers 2

    .line 219
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    return v0
.end method

.method protected final getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    return-object p0
.end method

.method public isLogWithHighSamplingRate()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLogWithHighSamplingRate:Z

    return v0
.end method

.method protected maybeAttachListeners(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners:Ljava/util/Set;

    if-eqz v0, :cond_18

    .line 450
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/controller/ControllerListener;

    .line 451
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    goto :goto_8

    .line 454
    :cond_18
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mBoundControllerListeners2:Ljava/util/Set;

    if-eqz v0, :cond_30

    .line 455
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/fresco/ui/common/ControllerListener2;

    .line 456
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener2(Lcom/facebook/fresco/ui/common/ControllerListener2;)V

    goto :goto_20

    .line 459
    :cond_30
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v0, :cond_37

    .line 460
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 462
    :cond_37
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    if-eqz v0, :cond_40

    .line 463
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->sAutoPlayAnimationsListener:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    :cond_40
    return-void
.end method

.method protected maybeBuildAndSetGestureDetector(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .registers 3

    .line 478
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getGestureDetector()Lcom/facebook/drawee/gestures/GestureDetector;

    move-result-object v0

    if-nez v0, :cond_f

    .line 480
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/drawee/gestures/GestureDetector;->newInstance(Landroid/content/Context;)Lcom/facebook/drawee/gestures/GestureDetector;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->setGestureDetector(Lcom/facebook/drawee/gestures/GestureDetector;)V

    :cond_f
    return-void
.end method

.method protected maybeBuildAndSetRetryManager(Lcom/facebook/drawee/controller/AbstractDraweeController;)V
    .registers 4

    .line 469
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 472
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getRetryManager()Lcom/facebook/drawee/components/RetryManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/RetryManager;->setTapToRetryEnabled(Z)V

    .line 473
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->maybeBuildAndSetGestureDetector(Lcom/facebook/drawee/controller/AbstractDraweeController;)V

    return-void
.end method

.method protected abstract obtainController()Lcom/facebook/drawee/controller/AbstractDraweeController;
.end method

.method protected obtainDataSourceSupplier(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;)Lcom/facebook/common/internal/Supplier;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_5

    return-object v0

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 375
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    goto :goto_1a

    .line 376
    :cond_e
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-eqz v0, :cond_19

    .line 377
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 378
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getFirstAvailableDataSourceSupplier(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_37

    .line 383
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-eqz v1, :cond_37

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 387
    invoke-static {v1, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->create(Ljava/util/List;Z)Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    move-result-object v0

    :cond_37
    if-nez v0, :cond_40

    .line 392
    sget-object p1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->NO_REQUEST_EXCEPTION:Ljava/lang/NullPointerException;

    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->getFailedDataSourceSupplier(Ljava/lang/Throwable;)Lcom/facebook/common/internal/Supplier;

    move-result-object p1

    return-object p1

    :cond_40
    return-object v0
.end method

.method public reset()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->init()V

    .line 110
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 235
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mAutoPlayAnimations:Z

    .line 236
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mCallerContext:Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mContentDescription:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .param p1    # Lcom/facebook/drawee/controller/ControllerListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 257
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setControllerViewportVisibilityListener(Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .param p1    # Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    .line 280
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDataSourceSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .param p1    # Lcom/facebook/common/internal/Supplier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    .line 197
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setFirstAvailableImageRequests([Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setFirstAvailableImageRequests([Ljava/lang/Object;Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setFirstAvailableImageRequests([Ljava/lang/Object;Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;Z)TBUI",
            "LDER;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 171
    array-length v0, p1

    if-lez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    const-string v1, "No requests specified!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    .line 175
    iput-boolean p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTryCacheOnlyFirst:Z

    .line 176
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLogWithHighSamplingRate(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 249
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLogWithHighSamplingRate:Z

    .line 250
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLoggingListener(Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .param p1    # Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLegacyOnFadeListener:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;

    .line 262
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLowResImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mOldController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 305
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .registers 2
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRetainImageOnFailure(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 224
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mRetainImageOnFailure:Z

    .line 225
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTapToRetryEnabled(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 213
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mTapToRetryEnabled:Z

    .line 214
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected validate()V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    const-string v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mMultiImageRequests:[Ljava/lang/Object;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->mLowResImageRequest:Ljava/lang/Object;

    if-nez v0, :cond_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.drawee.controller.AbstractDraweeControllerBuilder.AnonymousClass1 (com.facebook.drawee.controller.AbstractDraweeControllerBuilder$1)
.class Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "AbstractDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_5

    .line 47
    invoke-interface {p3}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_5
    return-void
.end method

###### Class com.facebook.drawee.controller.AbstractDraweeControllerBuilder.AnonymousClass2 (com.facebook.drawee.controller.AbstractDraweeControllerBuilder$2)
.class Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/datasource/DataSource<",
        "TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

.field final synthetic val$cacheLevel:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field final synthetic val$callerContext:Ljava/lang/Object;

.field final synthetic val$controller:Lcom/facebook/drawee/interfaces/DraweeController;

.field final synthetic val$controllerId:Ljava/lang/String;

.field final synthetic val$imageRequest:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)V
    .registers 7

    .line 432
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$controller:Lcom/facebook/drawee/interfaces/DraweeController;

    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$controllerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$imageRequest:Ljava/lang/Object;

    iput-object p5, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$callerContext:Ljava/lang/Object;

    iput-object p6, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$cacheLevel:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "TIMAGE;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$controller:Lcom/facebook/drawee/interfaces/DraweeController;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$controllerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$imageRequest:Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$callerContext:Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$cacheLevel:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 432
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 442
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$imageRequest:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.drawee.controller.AbstractDraweeControllerBuilder.CacheLevel (com.facebook.drawee.controller.AbstractDraweeControllerBuilder$CacheLevel)
.class public final enum Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
.super Ljava/lang/Enum;
.source "AbstractDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field public static final enum BITMAP_MEMORY_CACHE:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field public static final enum DISK_CACHE:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field public static final enum FULL_FETCH:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 518
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const-string v1, "FULL_FETCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->FULL_FETCH:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 521
    new-instance v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const-string v3, "DISK_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->DISK_CACHE:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 524
    new-instance v3, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const-string v5, "BITMAP_MEMORY_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const/4 v5, 0x3

    .line 516
    new-array v5, v5, [Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->$VALUES:[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 516
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    .registers 2

    .line 516
    const-class v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    return-object p0
.end method

.method public static values()[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    .registers 1

    .line 516
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->$VALUES:[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-virtual {v0}, [Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    return-object v0
.end method
