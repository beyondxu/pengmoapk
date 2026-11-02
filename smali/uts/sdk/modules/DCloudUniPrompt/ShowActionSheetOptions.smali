###### Class uts.sdk.modules.DCloudUniPrompt.ShowActionSheetOptions (uts.sdk.modules.DCloudUniPrompt.ShowActionSheetOptions)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0016\u0018\u00002\u00020\u0001B\u00df\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012+\u0008\u0002\u0010\n\u001a%\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u0011\u0012>\u0008\u0002\u0010\u0012\u001a8\u0012&\u0012$0\u0013j\u0011`\u0014\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u0015\u0012+\u0008\u0002\u0010\u0016\u001a%\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u0018\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001c\"\u0004\u0008 \u0010\u001eR$\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001c\"\u0004\u0008&\u0010\u001eR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R=\u0010\n\u001a%\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.RP\u0010\u0012\u001a8\u0012&\u0012$0\u0013j\u0011`\u0014\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u0015X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010,\"\u0004\u00080\u0010.R=\u0010\u0016\u001a%\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010,\"\u0004\u00082\u0010.\u00a8\u00063"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "title",
        "",
        "alertText",
        "itemList",
        "Lio/dcloud/uts/UTSArray;",
        "itemColor",
        "popover",
        "Luts/sdk/modules/DCloudUniPrompt/Popover;",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccessCallback;",
        "fail",
        "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetFail;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Ljava/lang/String;Luts/sdk/modules/DCloudUniPrompt/Popover;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getAlertText",
        "setAlertText",
        "getItemList",
        "()Lio/dcloud/uts/UTSArray;",
        "setItemList",
        "(Lio/dcloud/uts/UTSArray;)V",
        "getItemColor",
        "setItemColor",
        "getPopover",
        "()Luts/sdk/modules/DCloudUniPrompt/Popover;",
        "setPopover",
        "(Luts/sdk/modules/DCloudUniPrompt/Popover;)V",
        "getSuccess",
        "()Lkotlin/jvm/functions/Function1;",
        "setSuccess",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getFail",
        "setFail",
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
            "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private itemColor:Ljava/lang/String;

.field private itemList:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private popover:Luts/sdk/modules/DCloudUniPrompt/Popover;

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Ljava/lang/String;Luts/sdk/modules/DCloudUniPrompt/Popover;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Luts/sdk/modules/DCloudUniPrompt/Popover;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 135
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->title:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->alertText:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->itemList:Lio/dcloud/uts/UTSArray;

    .line 139
    iput-object p4, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->itemColor:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->popover:Luts/sdk/modules/DCloudUniPrompt/Popover;

    .line 141
    iput-object p6, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 142
    iput-object p7, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 143
    iput-object p8, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Ljava/lang/String;Luts/sdk/modules/DCloudUniPrompt/Popover;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_15

    move-object p5, v0

    :cond_15
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_1a

    move-object p6, v0

    :cond_1a
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_1f

    move-object p7, v0

    :cond_1f
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_25

    move-object p9, v0

    goto :goto_26

    :cond_25
    move-object p9, p8

    :goto_26
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 134
    invoke-direct/range {p1 .. p9}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Ljava/lang/String;Luts/sdk/modules/DCloudUniPrompt/Popover;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->alertText:Ljava/lang/String;

    return-object v0
.end method

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

    .line 143
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getFail()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getItemColor()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->itemColor:Ljava/lang/String;

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

    .line 137
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->itemList:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public getPopover()Luts/sdk/modules/DCloudUniPrompt/Popover;
    .registers 2

    .line 140
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->popover:Luts/sdk/modules/DCloudUniPrompt/Popover;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlertText(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->alertText:Ljava/lang/String;

    return-void
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

    .line 143
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setFail(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setItemColor(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->itemColor:Ljava/lang/String;

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

    .line 137
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->itemList:Lio/dcloud/uts/UTSArray;

    return-void
.end method

.method public setPopover(Luts/sdk/modules/DCloudUniPrompt/Popover;)V
    .registers 2

    .line 140
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->popover:Luts/sdk/modules/DCloudUniPrompt/Popover;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->title:Ljava/lang/String;

    return-void
.end method
