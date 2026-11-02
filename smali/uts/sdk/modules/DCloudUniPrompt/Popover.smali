###### Class uts.sdk.modules.DCloudUniPrompt.Popover (uts.sdk.modules.DCloudUniPrompt.Popover)
.class public Luts/sdk/modules/DCloudUniPrompt/Popover;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0010\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001e\u0010\u0005\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001e\u0010\u0006\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/Popover;",
        "Lio/dcloud/uts/UTSObject;",
        "top",
        "",
        "left",
        "width",
        "height",
        "<init>",
        "(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V",
        "getTop",
        "()Ljava/lang/Number;",
        "setTop",
        "(Ljava/lang/Number;)V",
        "getLeft",
        "setLeft",
        "getWidth",
        "setWidth",
        "getHeight",
        "setHeight",
        "uni-prompt_release"
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
.field private height:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private left:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private top:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private width:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 6

    const-string v0, "top"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "left"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 121
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->top:Ljava/lang/Number;

    .line 123
    iput-object p2, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->left:Ljava/lang/Number;

    .line 125
    iput-object p3, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->width:Ljava/lang/Number;

    .line 127
    iput-object p4, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->height:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/Number;
    .registers 2

    .line 127
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->height:Ljava/lang/Number;

    return-object v0
.end method

.method public getLeft()Ljava/lang/Number;
    .registers 2

    .line 123
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->left:Ljava/lang/Number;

    return-object v0
.end method

.method public getTop()Ljava/lang/Number;
    .registers 2

    .line 121
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->top:Ljava/lang/Number;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Number;
    .registers 2

    .line 125
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->width:Ljava/lang/Number;

    return-object v0
.end method

.method public setHeight(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->height:Ljava/lang/Number;

    return-void
.end method

.method public setLeft(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->left:Ljava/lang/Number;

    return-void
.end method

.method public setTop(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->top:Ljava/lang/Number;

    return-void
.end method

.method public setWidth(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/Popover;->width:Ljava/lang/Number;

    return-void
.end method
