###### Class uts.sdk.modules.dnInkprinterUts.FailResult (uts.sdk.modules.dnInkprinterUts.FailResult)
.class public Luts/sdk/modules/dnInkprinterUts/FailResult;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Luts/sdk/modules/dnInkprinterUts/FailResult;",
        "Lio/dcloud/uts/UTSObject;",
        "code",
        "",
        "message",
        "",
        "<init>",
        "(Ljava/lang/Number;Ljava/lang/String;)V",
        "getCode",
        "()Ljava/lang/Number;",
        "setCode",
        "(Ljava/lang/Number;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
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
.field private code:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 112
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/FailResult;->code:Ljava/lang/Number;

    .line 114
    iput-object p2, p0, Luts/sdk/modules/dnInkprinterUts/FailResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Number;
    .registers 2

    .line 112
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/FailResult;->code:Ljava/lang/Number;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/FailResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/FailResult;->code:Ljava/lang/Number;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/FailResult;->message:Ljava/lang/String;

    return-void
.end method
