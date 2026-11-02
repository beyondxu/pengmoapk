###### Class io.dcloud.common.ui.blur.NativeBlurProcess (io.dcloud.common.ui.blur.NativeBlurProcess)
.class public Lio/dcloud/common/ui/blur/NativeBlurProcess;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;
    }
.end annotation


# instance fields
.field final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field final EXECUTOR_THREADS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess;->EXECUTOR_THREADS:I

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 10

    if-eqz p3, :cond_9

    .line 1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_9
    move-object v1, p1

    .line 6
    iget v3, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess;->EXECUTOR_THREADS:I

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_30

    .line 11
    new-instance v0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;

    float-to-int v2, p2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 16
    :cond_30
    :try_start_30
    iget-object p2, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 22
    iget-object p1, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_3a} :catch_3a

    :catch_3a
    return-object v1
.end method

###### Class io.dcloud.common.ui.blur.NativeBlurProcess.NativeTask (io.dcloud.common.ui.blur.NativeBlurProcess$NativeTask)
.class Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/blur/NativeBlurProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final _bitmapOut:Landroid/graphics/Bitmap;

.field private final _coreIndex:I

.field private final _radius:I

.field private final _round:I

.field private final _totalCores:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_bitmapOut:Landroid/graphics/Bitmap;

    .line 3
    iput p2, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_radius:I

    .line 4
    iput p3, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_totalCores:I

    .line 5
    iput p4, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_coreIndex:I

    .line 6
    iput p5, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_round:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_bitmapOut:Landroid/graphics/Bitmap;

    iget v1, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_radius:I

    iget v2, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_totalCores:I

    iget v3, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_coreIndex:I

    iget v4, p0, Lio/dcloud/common/ui/blur/NativeBlurProcess$NativeTask;->_round:I

    invoke-static {v0, v1, v2, v3, v4}, Lio/dcloud/common/ui/blur/BlurNativeLib;->blurBitmap(Landroid/graphics/Bitmap;IIII)V

    const/4 v0, 0x0

    return-object v0
.end method
