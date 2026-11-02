###### Class uts.sdk.modules.dnInkprinterUts.Img2PrintDataOptions (uts.sdk.modules.dnInkprinterUts.Img2PrintDataOptions)
.class public Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u001a\u0008\u0016\u0018\u00002\u00020\u0001B\u00ac\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012%\u0008\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012%\u0008\u0002\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012%\u0008\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u001e\u0010\u0005\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001e\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001e\"\u0004\u0008\"\u0010 R\u001e\u0010\u0008\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 R\u001e\u0010\t\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u001e\"\u0004\u0008%\u0010 R7\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R7\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\'\"\u0004\u0008+\u0010)R7\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\'\"\u0004\u0008-\u0010)\u00a8\u0006."
    }
    d2 = {
        "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "imgPath",
        "",
        "outputPath",
        "iInk",
        "",
        "iOutColor",
        "printTimes",
        "isPhotoPaper",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataResult;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "fail",
        "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataFail;",
        "complete",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getImgPath",
        "()Ljava/lang/String;",
        "setImgPath",
        "(Ljava/lang/String;)V",
        "getOutputPath",
        "setOutputPath",
        "getIInk",
        "()Ljava/lang/Number;",
        "setIInk",
        "(Ljava/lang/Number;)V",
        "getIOutColor",
        "setIOutColor",
        "getPrintTimes",
        "setPrintTimes",
        "setPhotoPaper",
        "getSuccess",
        "()Lkotlin/jvm/functions/Function1;",
        "setSuccess",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getFail",
        "setFail",
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
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataFail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private iInk:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private iOutColor:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private imgPath:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private isPhotoPaper:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private outputPath:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private printTimes:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataFail;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imgPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iInk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iOutColor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "printTimes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isPhotoPaper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 19
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->imgPath:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->outputPath:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->iInk:Ljava/lang/Number;

    .line 25
    iput-object p4, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->iOutColor:Ljava/lang/Number;

    .line 27
    iput-object p5, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->printTimes:Ljava/lang/Number;

    .line 29
    iput-object p6, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->isPhotoPaper:Ljava/lang/Number;

    .line 31
    iput-object p7, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 32
    iput-object p8, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 33
    iput-object p9, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x40

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_b

    move-object p8, v0

    :cond_b
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_11

    move-object p10, v0

    goto :goto_12

    :cond_11
    move-object p10, p9

    :goto_12
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 18
    invoke-direct/range {p1 .. p10}, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

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

    .line 33
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getFail()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataFail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getIInk()Ljava/lang/Number;
    .registers 2

    .line 23
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->iInk:Ljava/lang/Number;

    return-object v0
.end method

.method public getIOutColor()Ljava/lang/Number;
    .registers 2

    .line 25
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->iOutColor:Ljava/lang/Number;

    return-object v0
.end method

.method public getImgPath()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->imgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputPath()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->outputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintTimes()Ljava/lang/Number;
    .registers 2

    .line 27
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->printTimes:Ljava/lang/Number;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public isPhotoPaper()Ljava/lang/Number;
    .registers 2

    .line 29
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->isPhotoPaper:Ljava/lang/Number;

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

    .line 33
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setFail(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataFail;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setIInk(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->iInk:Ljava/lang/Number;

    return-void
.end method

.method public setIOutColor(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->iOutColor:Ljava/lang/Number;

    return-void
.end method

.method public setImgPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->imgPath:Ljava/lang/String;

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->outputPath:Ljava/lang/String;

    return-void
.end method

.method public setPhotoPaper(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->isPhotoPaper:Ljava/lang/Number;

    return-void
.end method

.method public setPrintTimes(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->printTimes:Ljava/lang/Number;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method
