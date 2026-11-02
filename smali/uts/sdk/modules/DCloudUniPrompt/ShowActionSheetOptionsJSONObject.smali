###### Class uts.sdk.modules.DCloudUniPrompt.ShowActionSheetOptionsJSONObject (uts.sdk.modules.DCloudUniPrompt.ShowActionSheetOptionsJSONObject)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010\u001dX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010!R\u001c\u0010%\u001a\u0004\u0018\u00010\u001dX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!\u00a8\u0006("
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "alertText",
        "getAlertText",
        "setAlertText",
        "itemList",
        "Lio/dcloud/uts/UTSArray;",
        "getItemList",
        "()Lio/dcloud/uts/UTSArray;",
        "setItemList",
        "(Lio/dcloud/uts/UTSArray;)V",
        "itemColor",
        "getItemColor",
        "setItemColor",
        "popover",
        "Luts/sdk/modules/DCloudUniPrompt/Popover;",
        "getPopover",
        "()Luts/sdk/modules/DCloudUniPrompt/Popover;",
        "setPopover",
        "(Luts/sdk/modules/DCloudUniPrompt/Popover;)V",
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
.field private alertText:Ljava/lang/String;

.field private complete:Lio/dcloud/uts/UTSCallback;

.field private fail:Lio/dcloud/uts/UTSCallback;

.field private itemColor:Ljava/lang/String;

.field public itemList:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private popover:Luts/sdk/modules/DCloudUniPrompt/Popover;

.field private success:Lio/dcloud/uts/UTSCallback;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 966
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .registers 2

    .line 968
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->alertText:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 974
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getFail()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 973
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getItemColor()Ljava/lang/String;
    .registers 2

    .line 970
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->itemColor:Ljava/lang/String;

    return-object v0
.end method

.method public getItemList()Lio/dcloud/uts/UTSArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 969
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->itemList:Lio/dcloud/uts/UTSArray;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "itemList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopover()Luts/sdk/modules/DCloudUniPrompt/Popover;
    .registers 2

    .line 971
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->popover:Luts/sdk/modules/DCloudUniPrompt/Popover;

    return-object v0
.end method

.method public getSuccess()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 972
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 967
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlertText(Ljava/lang/String;)V
    .registers 2

    .line 968
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->alertText:Ljava/lang/String;

    return-void
.end method

.method public setComplete(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 974
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setFail(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 973
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setItemColor(Ljava/lang/String;)V
    .registers 2

    .line 970
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->itemColor:Ljava/lang/String;

    return-void
.end method

.method public setItemList(Lio/dcloud/uts/UTSArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->itemList:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setPopover(Luts/sdk/modules/DCloudUniPrompt/Popover;)V
    .registers 2

    .line 971
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->popover:Luts/sdk/modules/DCloudUniPrompt/Popover;

    return-void
.end method

.method public setSuccess(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 972
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 967
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->title:Ljava/lang/String;

    return-void
.end method
