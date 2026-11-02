###### Class uts.sdk.modules.DCloudUniNetwork.UploadFileOptions (uts.sdk.modules.DCloudUniNetwork.UploadFileOptions)
.class public Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\u0008\u0016\u0018\u00002\u00020\u0001B\u00e4\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012+\u0008\u0002\u0010\u000e\u001a%\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000fj\u0004\u0018\u0001`\u0014\u0012+\u0008\u0002\u0010\u0015\u001a%\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000fj\u0004\u0018\u0001`\u0017\u0012+\u0008\u0002\u0010\u0018\u001a%\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000fj\u0004\u0018\u0001`\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001e\"\u0004\u0008\"\u0010 R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010*\"\u0004\u0008.\u0010,R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R=\u0010\u000e\u001a%\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000fj\u0004\u0018\u0001`\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R=\u0010\u0015\u001a%\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000fj\u0004\u0018\u0001`\u0017X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00104\"\u0004\u00088\u00106R=\u0010\u0018\u001a%\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000fj\u0004\u0018\u0001`\u001aX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u00104\"\u0004\u0008:\u00106\u00a8\u0006;"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "url",
        "",
        "filePath",
        "name",
        "files",
        "Lio/dcloud/uts/UTSArray;",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;",
        "header",
        "Lio/dcloud/uts/UTSJSONObject;",
        "formData",
        "timeout",
        "",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;",
        "Lkotlin/ParameterName;",
        "result",
        "",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccessCallback;",
        "fail",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "getFilePath",
        "setFilePath",
        "getName",
        "setName",
        "getFiles",
        "()Lio/dcloud/uts/UTSArray;",
        "setFiles",
        "(Lio/dcloud/uts/UTSArray;)V",
        "getHeader",
        "()Lio/dcloud/uts/UTSJSONObject;",
        "setHeader",
        "(Lio/dcloud/uts/UTSJSONObject;)V",
        "getFormData",
        "setFormData",
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
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;",
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/UTSArray<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;",
            ">;",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;",
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

    .line 166
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 155
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->url:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->filePath:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->name:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->files:Lio/dcloud/uts/UTSArray;

    .line 160
    iput-object p5, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->header:Lio/dcloud/uts/UTSJSONObject;

    .line 161
    iput-object p6, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->formData:Lio/dcloud/uts/UTSJSONObject;

    .line 162
    iput-object p7, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->timeout:Ljava/lang/Number;

    .line 163
    iput-object p8, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 164
    iput-object p9, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 165
    iput-object p10, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p12, p11, 0x2

    const/4 v0, 0x0

    if-eqz p12, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_15

    move-object p5, v0

    :cond_15
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_1a

    move-object p6, v0

    :cond_1a
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_1f

    move-object p7, v0

    :cond_1f
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_24

    move-object p8, v0

    :cond_24
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_29

    move-object p9, v0

    :cond_29
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_2f

    move-object p11, v0

    goto :goto_30

    :cond_2f
    move-object p11, p10

    :goto_30
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 154
    invoke-direct/range {p1 .. p11}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

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

    .line 165
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getFail()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->filePath:Ljava/lang/String;

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

    .line 159
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->files:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getFormData()Lio/dcloud/uts/UTSJSONObject;
    .registers 2

    .line 161
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->formData:Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public getHeader()Lio/dcloud/uts/UTSJSONObject;
    .registers 2

    .line 160
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->header:Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/Number;
    .registers 2

    .line 162
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->timeout:Ljava/lang/Number;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->url:Ljava/lang/String;

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

    .line 165
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setFail(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->filePath:Ljava/lang/String;

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

    .line 159
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->files:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setFormData(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 2

    .line 161
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->formData:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public setHeader(Lio/dcloud/uts/UTSJSONObject;)V
    .registers 2

    .line 160
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->header:Lio/dcloud/uts/UTSJSONObject;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 158
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->name:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setTimeout(Ljava/lang/Number;)V
    .registers 2

    .line 162
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->timeout:Ljava/lang/Number;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->url:Ljava/lang/String;

    return-void
.end method
