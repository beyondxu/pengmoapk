###### Class uts.sdk.modules.DCloudUniNetwork.DownloadFileOptionsJSONObject (uts.sdk.modules.DCloudUniNetwork.DownloadFileOptionsJSONObject)
.class public Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0007\"\u0004\u0008\u0011\u0010\tR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR\u001c\u0010!\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "header",
        "getHeader",
        "()Lio/dcloud/uts/UTSJSONObject;",
        "setHeader",
        "(Lio/dcloud/uts/UTSJSONObject;)V",
        "filePath",
        "getFilePath",
        "setFilePath",
        "timeout",
        "",
        "getTimeout",
        "()Ljava/lang/Number;",
        "setTimeout",
        "(Ljava/lang/Number;)V",
        "success",
        "Lio/dcloud/uts/UTSCallback;",
        "getSuccess",
        "()Lio/dcloud/uts/UTSCallback;",
        "setSuccess",
        "(Lio/dcloud/uts/UTSCallback;)V",
        "fail",
        "getFail",
        "setFail",
        "complete",
        "getComplete",
        "setComplete",
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
.field private complete:Lio/dcloud/uts/UTSCallback;

.field private fail:Lio/dcloud/uts/UTSCallback;

.field private filePath:Ljava/lang/String;

.field private header:Lio/dcloud/uts/UTSJSONObject;

.field private success:Lio/dcloud/uts/UTSCallback;

.field private timeout:Ljava/lang/Number;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2717
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getComplete()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 2724
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getFail()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 2723
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 2720
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lio/dcloud/uts/UTSJSONObject;
    .registers 2

    .line 2719
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->header:Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public getSuccess()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 2722
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/Number;
    .registers 2

    .line 2721
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->timeout:Ljava/lang/Number;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 2718
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->url:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "url"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setComplete(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 2724
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setFail(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 2723
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 2720
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 2

    .line 2719
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->header:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public setSuccess(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 2722
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setTimeout(Ljava/lang/Number;)V
    .registers 2

    .line 2721
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->timeout:Ljava/lang/Number;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2718
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptionsJSONObject;->url:Ljava/lang/String;

    return-void
.end method
