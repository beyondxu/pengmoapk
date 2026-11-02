###### Class uts.sdk.modules.DCloudUniNetwork.UploadFileOptionsJSONObject (uts.sdk.modules.DCloudUniNetwork.UploadFileOptionsJSONObject)
.class public Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0001X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0001X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010&X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010(\"\u0004\u0008-\u0010*R\u001c\u0010.\u001a\u0004\u0018\u00010&X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010(\"\u0004\u00080\u0010*\u00a8\u00061"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "filePath",
        "getFilePath",
        "setFilePath",
        "name",
        "getName",
        "setName",
        "files",
        "Lio/dcloud/uts/UTSArray;",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;",
        "getFiles",
        "()Lio/dcloud/uts/UTSArray;",
        "setFiles",
        "(Lio/dcloud/uts/UTSArray;)V",
        "header",
        "getHeader",
        "()Lio/dcloud/uts/UTSJSONObject;",
        "setHeader",
        "(Lio/dcloud/uts/UTSJSONObject;)V",
        "formData",
        "getFormData",
        "setFormData",
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

.field private files:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;",
            ">;"
        }
    .end annotation
.end field

.field private formData:Lio/dcloud/uts/UTSJSONObject;

.field private header:Lio/dcloud/uts/UTSJSONObject;

.field private name:Ljava/lang/String;

.field private success:Lio/dcloud/uts/UTSCallback;

.field private timeout:Ljava/lang/Number;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2705
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getComplete()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 2715
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getFail()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 2714
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 2707
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFiles()Lio/dcloud/uts/UTSArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;",
            ">;"
        }
    .end annotation

    .line 2709
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->files:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getFormData()Lio/dcloud/uts/UTSJSONObject;
    .registers 2

    .line 2711
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->formData:Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public getHeader()Lio/dcloud/uts/UTSJSONObject;
    .registers 2

    .line 2710
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->header:Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 2708
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 2713
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/Number;
    .registers 2

    .line 2712
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->timeout:Ljava/lang/Number;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 2706
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->url:Ljava/lang/String;

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

    .line 2715
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setFail(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 2714
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 2707
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFiles(Lio/dcloud/uts/UTSArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;",
            ">;)V"
        }
    .end annotation

    .line 2709
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->files:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setFormData(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 2

    .line 2711
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->formData:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public setHeader(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 2

    .line 2710
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->header:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 2708
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 2713
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setTimeout(Ljava/lang/Number;)V
    .registers 2

    .line 2712
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->timeout:Ljava/lang/Number;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2706
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionsJSONObject;->url:Ljava/lang/String;

    return-void
.end method
