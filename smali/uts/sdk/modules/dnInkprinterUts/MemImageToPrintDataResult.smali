###### Class uts.sdk.modules.dnInkprinterUts.MemImageToPrintDataResult (uts.sdk.modules.dnInkprinterUts.MemImageToPrintDataResult)
.class public Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;",
        "Lio/dcloud/uts/UTSObject;",
        "data",
        "Lio/dcloud/uts/Uint8Array;",
        "length",
        "",
        "<init>",
        "(Lio/dcloud/uts/Uint8Array;Ljava/lang/Number;)V",
        "getData",
        "()Lio/dcloud/uts/Uint8Array;",
        "setData",
        "(Lio/dcloud/uts/Uint8Array;)V",
        "getLength",
        "()Ljava/lang/Number;",
        "setLength",
        "(Ljava/lang/Number;)V",
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
.field private data:Lio/dcloud/uts/Uint8Array;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private length:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/uts/Uint8Array;Ljava/lang/Number;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "length"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 63
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;->data:Lio/dcloud/uts/Uint8Array;

    .line 65
    iput-object p2, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;->length:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getData()Lio/dcloud/uts/Uint8Array;
    .registers 2

    .line 63
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;->data:Lio/dcloud/uts/Uint8Array;

    return-object v0
.end method

.method public getLength()Ljava/lang/Number;
    .registers 2

    .line 65
    iget-object v0, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;->length:Ljava/lang/Number;

    return-object v0
.end method

.method public setData(Lio/dcloud/uts/Uint8Array;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;->data:Lio/dcloud/uts/Uint8Array;

    return-void
.end method

.method public setLength(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataResult;->length:Ljava/lang/Number;

    return-void
.end method
