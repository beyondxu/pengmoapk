###### Class uts.sdk.modules.DCloudUniNetwork.NetworkUploadTaskImpl (uts.sdk.modules.DCloudUniNetwork.NetworkUploadTaskImpl)
.class public Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Luts/sdk/modules/DCloudUniNetwork/UploadTask;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J/\u0010\n\u001a\u00020\t2%\u0010\u000b\u001a!\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\t0\u000cj\u0002`\u0011H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;",
        "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "call",
        "Lokhttp3/Call;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;",
        "<init>",
        "(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V",
        "abort",
        "",
        "onProgressUpdate",
        "option",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileProgressUpdateCallback;",
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
.field private call:Lokhttp3/Call;

.field private listener:Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;


# direct methods
.method public constructor <init>(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;->call:Lokhttp3/Call;

    .line 687
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .line 690
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;->call:Lokhttp3/Call;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_9

    .line 691
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_9
    return-void
.end method

.method public onProgressUpdate(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;

    if-eqz v0, :cond_10

    .line 697
    invoke-interface {v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->getProgressListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method
