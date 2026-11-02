###### Class uts.sdk.modules.DCloudUniNetwork.UploadFileFailImpl (uts.sdk.modules.DCloudUniNetwork.UploadFileFailImpl)
.class public Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;
.super Lio/dcloud/uniapp/UniError;
.source "index.kt"

# interfaces
.implements Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0008\u0016\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;",
        "Lio/dcloud/uniapp/UniError;",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;",
        "errCode",
        "",
        "Luts/sdk/modules/DCloudUniNetwork/RequestErrorCode;",
        "<init>",
        "(Ljava/lang/Number;)V",
        "getErrCode",
        "()Ljava/lang/Number;",
        "setErrCode",
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
.field public errCode:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "errCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lio/dcloud/uniapp/UniError;-><init>()V

    .line 275
    const-string v0, "uni-uploadFile"

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;->setErrSubject(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;->setErrCode(Ljava/lang/Number;)V

    .line 277
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getNetWorkUniErrors()Lio/dcloud/uts/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1e

    const-string p1, ""

    :cond_1e
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;->setErrMsg(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrCode()Ljava/lang/Number;
    .registers 2

    .line 273
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;->errCode:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "errCode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setErrCode(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadFileFailImpl;->errCode:Ljava/lang/Number;

    return-void
.end method
