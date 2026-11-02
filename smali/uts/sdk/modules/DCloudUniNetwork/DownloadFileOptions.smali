###### Class uts.sdk.modules.DCloudUniNetwork.DownloadFileOptions (uts.sdk.modules.DCloudUniNetwork.DownloadFileOptions)
.class public Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0016\u0018\u00002\u00020\u0001B\u00cd\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012+\u0008\u0002\u0010\t\u001a%\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nj\u0004\u0018\u0001`\u0010\u0012+\u0008\u0002\u0010\u0011\u001a%\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nj\u0004\u0018\u0001`\u0013\u0012>\u0008\u0002\u0010\u0014\u001a8\u0012&\u0012$0\u0015j\u0011`\u0016\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nj\u0004\u0018\u0001`\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001dR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R=\u0010\t\u001a%\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nj\u0004\u0018\u0001`\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R=\u0010\u0011\u001a%\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nj\u0004\u0018\u0001`\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010)\"\u0004\u0008-\u0010+RP\u0010\u0014\u001a8\u0012&\u0012$0\u0015j\u0011`\u0016\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nj\u0004\u0018\u0001`\u0017X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010)\"\u0004\u0008/\u0010+\u00a8\u00060"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "url",
        "",
        "header",
        "Lio/dcloud/uts/UTSJSONObject;",
        "filePath",
        "timeout",
        "",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileSuccessCallback;",
        "fail",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileFail;",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileComplete;",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/String;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "getHeader",
        "()Lio/dcloud/uts/UTSJSONObject;",
        "setHeader",
        "(Lio/dcloud/uts/UTSJSONObject;)V",
        "getFilePath",
        "setFilePath",
        "getTimeout",
        "()Ljava/lang/Number;",
        "setTimeout",
        "(Ljava/lang/Number;)V",
        "getSuccess",
        "()Lkotlin/jvm/functions/Function1;",
        "setSuccess",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getFail",
        "setFail",
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
.field private complete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private fail:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileFail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private header:Lio/dcloud/uts/UTSJSONObject;

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:Ljava/lang/Number;

.field private url:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/String;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileSuccess;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileFail;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 195
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->url:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->header:Lio/dcloud/uts/UTSJSONObject;

    .line 198
    iput-object p3, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->filePath:Ljava/lang/String;

    .line 199
    iput-object p4, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->timeout:Ljava/lang/Number;

    .line 200
    iput-object p5, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 201
    iput-object p6, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 202
    iput-object p7, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/String;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_15

    move-object p5, v0

    :cond_15
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1a

    move-object p6, v0

    :cond_1a
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_20

    move-object p8, v0

    goto :goto_21

    :cond_20
    move-object p8, p7

    :goto_21
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 194
    invoke-direct/range {p1 .. p8}, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;-><init>(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/String;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public getComplete()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getFail()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileFail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lio/dcloud/uts/UTSJSONObject;
    .registers 2

    .line 197
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->header:Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/Number;
    .registers 2

    .line 199
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->timeout:Ljava/lang/Number;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setComplete(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setFail(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileFail;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 2

    .line 197
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->header:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setTimeout(Ljava/lang/Number;)V
    .registers 2

    .line 199
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->timeout:Ljava/lang/Number;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;->url:Ljava/lang/String;

    return-void
.end method
