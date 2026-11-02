###### Class uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener (uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener)
.class public Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\tH\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R?\u0010\u0006\u001a\'\u0012#\u0012!\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0008j\u0002`\u000e0\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;",
        "param",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;)V",
        "progressListeners",
        "Ljava/util/ArrayList;",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileProgressUpdateCallback;",
        "getProgressListeners",
        "()Ljava/util/ArrayList;",
        "setProgressListeners",
        "(Ljava/util/ArrayList;)V",
        "looper",
        "Landroid/os/Looper;",
        "onProgress",
        "progressUpdate",
        "onComplete",
        "option",
        "Lio/dcloud/uts/UTSJSONObject;",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private looper:Landroid/os/Looper;

.field private param:Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;

.field private progressListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6omKJBW_f_wH4xYrDr2ihUBAabw(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->onComplete$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QAJAfpM78G_4d4ASZ7ExF8mN5FA(Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->onProgress$lambda$1(Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$huWywLk2tNCgtoq38STuL-Ci6AQ(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->onComplete$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;)V
    .registers 3

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->progressListeners:Ljava/util/ArrayList;

    .line 2539
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->param:Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;

    .line 2540
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->looper:Landroid/os/Looper;

    return-void
.end method

.method private static final onComplete$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 2569
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 2570
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2572
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    :cond_13
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2576
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onComplete$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 2589
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 2590
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2592
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    :cond_13
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2596
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2599
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onProgress$lambda$1(Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;
    .registers 5

    const/4 v0, 0x0

    .line 2547
    :goto_1
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->getProgressListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 2548
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->getProgressListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 2549
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2553
    :cond_20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getProgressListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 2536
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->progressListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onComplete(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 6

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2558
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->param:Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2559
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_9f

    .line 2560
    const-string v1, "errorMsg"

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 2562
    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2563
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getErrcode(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v3, v1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;-><init>(Ljava/lang/Number;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2564
    const-string v1, "cause"

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 2566
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;

    check-cast p1, Lio/dcloud/uniapp/SourceError;

    check-cast p1, Lio/dcloud/uts/UTSError;

    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;->setCause(Lio/dcloud/uts/UTSError;)V

    .line 2568
    :cond_52
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->looper:Landroid/os/Looper;

    .line 2579
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2568
    invoke-direct {p1, v1, v3}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 2579
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->execute()V

    return-void

    .line 2581
    :cond_62
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 2584
    check-cast v1, Ljava/lang/String;

    goto :goto_6f

    .line 2583
    :cond_6d
    const-string v1, ""

    .line 2586
    :goto_6f
    const-string v2, "statusCode"

    invoke-virtual {p1, v2}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2587
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v3, v1, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;-><init>(Ljava/lang/String;Ljava/lang/Number;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2588
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->looper:Landroid/os/Looper;

    .line 2600
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2588
    invoke-direct {p1, v1, v3}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 2600
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->execute()V

    :cond_9f
    return-void
.end method

.method public onProgress(Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)V
    .registers 5

    const-string v0, "progressUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2543
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->getProgressListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 2544
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->looper:Landroid/os/Looper;

    .line 2554
    new-instance v2, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda0;-><init>(Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)V

    .line 2544
    invoke-direct {v0, v1, v2}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 2554
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->execute()V

    :cond_1e
    return-void
.end method

.method public setProgressListeners(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2536
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->progressListeners:Ljava/util/ArrayList;

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;

.field public final synthetic f$1:Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda0;->f$0:Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda0;->f$1:Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda0;->f$0:Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda0;->f$1:Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->$r8$lambda$QAJAfpM78G_4d4ASZ7ExF8mN5FA(Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->$r8$lambda$huWywLk2tNCgtoq38STuL-Ci6AQ(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniNetwork.UploadNetworkListener$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/UploadNetworkListener;->$r8$lambda$6omKJBW_f_wH4xYrDr2ihUBAabw(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
