###### Class uts.sdk.modules.DCloudUniPrompt.ShowModalOptionsJSONObject (uts.sdk.modules.DCloudUniPrompt.ShowModalOptionsJSONObject)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;
.super Lio/dcloud/uts/UTSJSONObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\tR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\tR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0007\"\u0004\u0008\u001c\u0010\tR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0007\"\u0004\u0008\u001f\u0010\tR\u001e\u0010 \u001a\u0004\u0018\u00010\u000eX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008!\u0010\u0010\"\u0004\u0008\"\u0010\u0012R\u001c\u0010#\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0007\"\u0004\u0008%\u0010\tR\u001c\u0010&\u001a\u0004\u0018\u00010\'X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010,\u001a\u0004\u0018\u00010\'X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010)\"\u0004\u0008.\u0010+R\u001c\u0010/\u001a\u0004\u0018\u00010\'X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010)\"\u0004\u00081\u0010+\u00a8\u00062"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "<init>",
        "()V",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "content",
        "getContent",
        "setContent",
        "showCancel",
        "",
        "getShowCancel",
        "()Ljava/lang/Boolean;",
        "setShowCancel",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "cancelText",
        "getCancelText",
        "setCancelText",
        "cancelColor",
        "getCancelColor",
        "setCancelColor",
        "confirmText",
        "getConfirmText",
        "setConfirmText",
        "confirmColor",
        "getConfirmColor",
        "setConfirmColor",
        "editable",
        "getEditable",
        "setEditable",
        "placeholderText",
        "getPlaceholderText",
        "setPlaceholderText",
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
.field private cancelColor:Ljava/lang/String;

.field private cancelText:Ljava/lang/String;

.field private complete:Lio/dcloud/uts/UTSCallback;

.field private confirmColor:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private editable:Ljava/lang/Boolean;

.field private fail:Lio/dcloud/uts/UTSCallback;

.field private placeholderText:Ljava/lang/String;

.field private showCancel:Ljava/lang/Boolean;

.field private success:Lio/dcloud/uts/UTSCallback;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 952
    invoke-direct {p0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    const/4 v0, 0x1

    .line 955
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->showCancel:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 960
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->editable:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getCancelColor()Ljava/lang/String;
    .registers 2

    .line 957
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->cancelColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelText()Ljava/lang/String;
    .registers 2

    .line 956
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->cancelText:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 964
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getConfirmColor()Ljava/lang/String;
    .registers 2

    .line 959
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->confirmColor:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmText()Ljava/lang/String;
    .registers 2

    .line 958
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->confirmText:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 954
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEditable()Ljava/lang/Boolean;
    .registers 2

    .line 960
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->editable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFail()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 963
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/String;
    .registers 2

    .line 961
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->placeholderText:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCancel()Ljava/lang/Boolean;
    .registers 2

    .line 955
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->showCancel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSuccess()Lio/dcloud/uts/UTSCallback;
    .registers 2

    .line 962
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 953
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCancelColor(Ljava/lang/String;)V
    .registers 2

    .line 957
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->cancelColor:Ljava/lang/String;

    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .registers 2

    .line 956
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->cancelText:Ljava/lang/String;

    return-void
.end method

.method public setComplete(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 964
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->complete:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setConfirmColor(Ljava/lang/String;)V
    .registers 2

    .line 959
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->confirmColor:Ljava/lang/String;

    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .registers 2

    .line 958
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->confirmText:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 954
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Ljava/lang/Boolean;)V
    .registers 2

    .line 960
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->editable:Ljava/lang/Boolean;

    return-void
.end method

.method public setFail(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 963
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->fail:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setPlaceholderText(Ljava/lang/String;)V
    .registers 2

    .line 961
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->placeholderText:Ljava/lang/String;

    return-void
.end method

.method public setShowCancel(Ljava/lang/Boolean;)V
    .registers 2

    .line 955
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->showCancel:Ljava/lang/Boolean;

    return-void
.end method

.method public setSuccess(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 962
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->success:Lio/dcloud/uts/UTSCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 953
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->title:Ljava/lang/String;

    return-void
.end method
