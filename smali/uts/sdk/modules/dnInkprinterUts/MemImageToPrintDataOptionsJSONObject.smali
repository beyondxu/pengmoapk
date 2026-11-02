###### Class uts.sdk.modules.dnInkprinterUts.MemImageToPrintDataOptionsJSONObject (uts.sdk.modules.dnInkprinterUts.MemImageToPrintDataOptionsJSONObject)
.class public Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u000bX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u000fR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR\u001c\u0010!\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "imgStream",
        "Lio/dcloud/uts/Uint8Array;",
        "getImgStream",
        "()Lio/dcloud/uts/Uint8Array;",
        "setImgStream",
        "(Lio/dcloud/uts/Uint8Array;)V",
        "iInk",
        "",
        "getIInk",
        "()Ljava/lang/Number;",
        "setIInk",
        "(Ljava/lang/Number;)V",
        "iOutColor",
        "getIOutColor",
        "setIOutColor",
        "printTimes",
        "getPrintTimes",
        "setPrintTimes",
        "isPhotoPaper",
        "setPhotoPaper",
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
        "dn-inkprinter-uts_release"
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

.field public iInk:Ljava/lang/Number;

.field public iOutColor:Ljava/lang/Number;

.field public imgStream:Lio/dcloud/uts/Uint8Array;

.field public isPhotoPaper:Ljava/lang/Number;

.field public printTimes:Ljava/lang/Number;

.field private success:Lio/dcloud/uts/UTSCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getComplete()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 224
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getFail()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 223
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getIInk()Ljava/lang/Number;
    .registers 2

    .line 218
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->iInk:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "iInk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIOutColor()Ljava/lang/Number;
    .registers 2

    .line 219
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->iOutColor:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "iOutColor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImgStream()Lio/dcloud/uts/Uint8Array;
    .registers 2

    .line 217
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->imgStream:Lio/dcloud/uts/Uint8Array;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "imgStream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrintTimes()Ljava/lang/Number;
    .registers 2

    .line 220
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->printTimes:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "printTimes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuccess()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 222
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public isPhotoPaper()Ljava/lang/Number;
    .registers 2

    .line 221
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->isPhotoPaper:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "isPhotoPaper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setComplete(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 224
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setFail(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 223
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setIInk(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->iInk:Ljava/lang/Number;

    return-void
.end method

.method public setIOutColor(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->iOutColor:Ljava/lang/Number;

    return-void
.end method

.method public setImgStream(Lio/dcloud/uts/Uint8Array;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->imgStream:Lio/dcloud/uts/Uint8Array;

    return-void
.end method

.method public setPhotoPaper(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->isPhotoPaper:Ljava/lang/Number;

    return-void
.end method

.method public setPrintTimes(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->printTimes:Ljava/lang/Number;

    return-void
.end method

.method public setSuccess(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 222
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-void
.end method
