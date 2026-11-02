###### Class uts.sdk.modules.DCloudUniPrompt.ShowActionSheetSuccess (uts.sdk.modules.DCloudUniPrompt.ShowActionSheetSuccess)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
        "Lio/dcloud/uts/UTSObject;",
        "tapIndex",
        "",
        "<init>",
        "(Ljava/lang/Number;)V",
        "getTapIndex",
        "()Ljava/lang/Number;",
        "setTapIndex",
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
.field private tapIndex:Ljava/lang/Number;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "tapIndex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 117
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;->tapIndex:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getTapIndex()Ljava/lang/Number;
    .registers 2

    .line 117
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;->tapIndex:Ljava/lang/Number;

    return-object v0
.end method

.method public setTapIndex(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;->tapIndex:Ljava/lang/Number;

    return-void
.end method
