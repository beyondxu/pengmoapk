###### Class uts.sdk.modules.DCloudUniPrompt.ShowModalSuccess (uts.sdk.modules.DCloudUniPrompt.ShowModalSuccess)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
        "Lio/dcloud/uts/UTSObject;",
        "confirm",
        "",
        "cancel",
        "content",
        "",
        "<init>",
        "(ZZLjava/lang/String;)V",
        "getConfirm",
        "()Z",
        "setConfirm",
        "(Z)V",
        "getCancel",
        "setCancel",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
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
.field private cancel:Z
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private confirm:Z
    .annotation runtime Lio/dcloud/uts/JsonNotNull;
    .end annotation
.end field

.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .registers 4

    .line 96
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 91
    iput-boolean p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->confirm:Z

    .line 93
    iput-boolean p2, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->cancel:Z

    .line 95
    iput-object p3, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->content:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p1, 0x0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    const/4 p3, 0x0

    .line 90
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCancel()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->cancel:Z

    return v0
.end method

.method public getConfirm()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->confirm:Z

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setCancel(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->cancel:Z

    return-void
.end method

.method public setConfirm(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->confirm:Z

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->content:Ljava/lang/String;

    return-void
.end method
