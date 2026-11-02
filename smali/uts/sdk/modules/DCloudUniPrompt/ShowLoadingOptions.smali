###### Class uts.sdk.modules.DCloudUniPrompt.ShowLoadingOptions (uts.sdk.modules.DCloudUniPrompt.ShowLoadingOptions)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0016\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012+\u0008\u0002\u0010\u0006\u001a%\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\r\u0012>\u0008\u0002\u0010\u000e\u001a8\u0012&\u0012$0\u000fj\u0011`\u0010\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0011\u0012+\u0008\u0002\u0010\u0012\u001a%\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR=\u0010\u0006\u001a%\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\rX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#RP\u0010\u000e\u001a8\u0012&\u0012$0\u000fj\u0011`\u0010\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010!\"\u0004\u0008%\u0010#R=\u0010\u0012\u001a%\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010!\"\u0004\u0008\'\u0010#\u00a8\u0006("
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "title",
        "",
        "mask",
        "",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccessCallback;",
        "fail",
        "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingFail;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getMask",
        "()Ljava/lang/Boolean;",
        "setMask",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
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

.field private mask:Ljava/lang/Boolean;

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;",
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;",
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

    .line 87
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 81
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->title:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->mask:Ljava/lang/Boolean;

    .line 84
    iput-object p3, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 85
    iput-object p4, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 86
    iput-object p5, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_16

    move-object p6, v0

    goto :goto_17

    :cond_16
    move-object p6, p5

    :goto_17
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 80
    invoke-direct/range {p1 .. p6}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

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

    .line 86
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->complete:Lkotlin/jvm/functions/Function1;

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

    .line 85
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getMask()Ljava/lang/Boolean;
    .registers 2

    .line 83
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->mask:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->title:Ljava/lang/String;

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

    .line 86
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->complete:Lkotlin/jvm/functions/Function1;

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

    .line 85
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setMask(Ljava/lang/Boolean;)V
    .registers 2

    .line 83
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->mask:Ljava/lang/Boolean;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->title:Ljava/lang/String;

    return-void
.end method
