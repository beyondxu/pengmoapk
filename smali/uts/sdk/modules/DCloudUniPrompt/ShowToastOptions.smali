###### Class uts.sdk.modules.DCloudUniPrompt.ShowToastOptions (uts.sdk.modules.DCloudUniPrompt.ShowToastOptions)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0016\u0018\u00002\u00020\u0001B\u00f1\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u000c\u0012+\u0008\u0002\u0010\r\u001a%\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0014\u0012>\u0008\u0002\u0010\u0015\u001a8\u0012&\u0012$0\u0016j\u0011`\u0017\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0018\u0012+\u0008\u0002\u0010\u0019\u001a%\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u001b\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010\u0004\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001f\"\u0004\u0008%\u0010!R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u0010\u000b\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u001f\"\u0004\u00080\u0010!R=\u0010\r\u001a%\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104RP\u0010\u0015\u001a8\u0012&\u0012$0\u0016j\u0011`\u0017\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00102\"\u0004\u00086\u00104R=\u0010\u0019\u001a%\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u001bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00102\"\u0004\u00088\u00104\u00a8\u00069"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "title",
        "",
        "icon",
        "Luts/sdk/modules/DCloudUniPrompt/Icon;",
        "image",
        "mask",
        "",
        "duration",
        "",
        "position",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastPosition;",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccessCallback;",
        "fail",
        "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastFail;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getIcon",
        "setIcon",
        "getImage",
        "setImage",
        "getMask",
        "()Ljava/lang/Boolean;",
        "setMask",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getDuration",
        "()Ljava/lang/Number;",
        "setDuration",
        "(Ljava/lang/Number;)V",
        "getPosition",
        "setPosition",
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

.field private duration:Ljava/lang/Number;

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

.field private icon:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private mask:Ljava/lang/Boolean;

.field private position:Ljava/lang/String;

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;",
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

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 61
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->title:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->icon:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->image:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->mask:Ljava/lang/Boolean;

    .line 66
    iput-object p5, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->duration:Ljava/lang/Number;

    .line 67
    iput-object p6, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->position:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 69
    iput-object p8, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 70
    iput-object p9, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_15

    move-object p5, v0

    :cond_15
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_1a

    move-object p6, v0

    :cond_1a
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_1f

    move-object p7, v0

    :cond_1f
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_24

    move-object p8, v0

    :cond_24
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_2a

    move-object p10, v0

    goto :goto_2b

    :cond_2a
    move-object p10, p9

    :goto_2b
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 60
    invoke-direct/range {p1 .. p10}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

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

    .line 70
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Number;
    .registers 2

    .line 66
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->duration:Ljava/lang/Number;

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

    .line 69
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getMask()Ljava/lang/Boolean;
    .registers 2

    .line 65
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->mask:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->title:Ljava/lang/String;

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

    .line 70
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setDuration(Ljava/lang/Number;)V
    .registers 2

    .line 66
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->duration:Ljava/lang/Number;

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

    .line 69
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->icon:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->image:Ljava/lang/String;

    return-void
.end method

.method public setMask(Ljava/lang/Boolean;)V
    .registers 2

    .line 65
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->mask:Ljava/lang/Boolean;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->position:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->title:Ljava/lang/String;

    return-void
.end method
