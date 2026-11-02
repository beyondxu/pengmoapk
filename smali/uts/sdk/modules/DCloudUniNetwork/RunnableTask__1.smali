###### Class uts.sdk.modules.DCloudUniNetwork.RunnableTask__1 (uts.sdk.modules.DCloudUniNetwork.RunnableTask__1)
.class public Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;",
        "Ljava/lang/Runnable;",
        "looper",
        "Landroid/os/Looper;",
        "callback",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V",
        "run",
        "execute",
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
.field private callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2242
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->looper:Landroid/os/Looper;

    .line 2243
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->callback:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .line 2249
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->looper:Landroid/os/Looper;

    if-nez v0, :cond_8

    .line 2250
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->run()V

    return-void

    .line 2252
    :cond_8
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->looper:Landroid/os/Looper;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 2

    .line 2246
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RunnableTask__1;->callback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_a
    return-void
.end method
