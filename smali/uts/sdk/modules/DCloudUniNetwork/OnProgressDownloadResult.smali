###### Class uts.sdk.modules.DCloudUniNetwork.OnProgressDownloadResult (uts.sdk.modules.DCloudUniNetwork.OnProgressDownloadResult)
.class public Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001e\u0010\u0005\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;",
        "Lio/dcloud/uts/UTSObject;",
        "progress",
        "",
        "totalBytesWritten",
        "totalBytesExpectedToWrite",
        "<init>",
        "(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V",
        "getProgress",
        "()Ljava/lang/Number;",
        "setProgress",
        "(Ljava/lang/Number;)V",
        "getTotalBytesWritten",
        "setTotalBytesWritten",
        "getTotalBytesExpectedToWrite",
        "setTotalBytesExpectedToWrite",
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
.field private progress:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private totalBytesExpectedToWrite:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private totalBytesWritten:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 5

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalBytesWritten"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalBytesExpectedToWrite"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 205
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->progress:Ljava/lang/Number;

    .line 207
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->totalBytesWritten:Ljava/lang/Number;

    .line 209
    iput-object p3, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->totalBytesExpectedToWrite:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getProgress()Ljava/lang/Number;
    .registers 2

    .line 205
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->progress:Ljava/lang/Number;

    return-object v0
.end method

.method public getTotalBytesExpectedToWrite()Ljava/lang/Number;
    .registers 2

    .line 209
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->totalBytesExpectedToWrite:Ljava/lang/Number;

    return-object v0
.end method

.method public getTotalBytesWritten()Ljava/lang/Number;
    .registers 2

    .line 207
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->totalBytesWritten:Ljava/lang/Number;

    return-object v0
.end method

.method public setProgress(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->progress:Ljava/lang/Number;

    return-void
.end method

.method public setTotalBytesExpectedToWrite(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->totalBytesExpectedToWrite:Ljava/lang/Number;

    return-void
.end method

.method public setTotalBytesWritten(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;->totalBytesWritten:Ljava/lang/Number;

    return-void
.end method
