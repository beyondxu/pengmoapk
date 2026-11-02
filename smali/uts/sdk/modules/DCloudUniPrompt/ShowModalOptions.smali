###### Class uts.sdk.modules.DCloudUniPrompt.ShowModalOptions (uts.sdk.modules.DCloudUniPrompt.ShowModalOptions)
.class public Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\"\u0008\u0016\u0018\u00002\u00020\u0001B\u008d\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012+\u0008\u0002\u0010\r\u001a%\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0014\u0012>\u0008\u0002\u0010\u0015\u001a8\u0012&\u0012$0\u0016j\u0011`\u0017\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0018\u0012+\u0008\u0002\u0010\u0019\u001a%\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u001b\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010(\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001f\"\u0004\u0008*\u0010!R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001f\"\u0004\u0008,\u0010!R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001f\"\u0004\u0008.\u0010!R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u001f\"\u0004\u00080\u0010!R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010(\u001a\u0004\u00081\u0010%\"\u0004\u00082\u0010\'R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u001f\"\u0004\u00084\u0010!R=\u0010\r\u001a%\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108RP\u0010\u0015\u001a8\u0012&\u0012$0\u0016j\u0011`\u0017\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u00106\"\u0004\u0008:\u00108R=\u0010\u0019\u001a%\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000ej\u0004\u0018\u0001`\u001bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00106\"\u0004\u0008<\u00108\u00a8\u0006="
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
        "Lio/dcloud/uts/UTSObject;",
        "title",
        "",
        "content",
        "showCancel",
        "",
        "cancelText",
        "cancelColor",
        "confirmText",
        "confirmColor",
        "editable",
        "placeholderText",
        "success",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccessCallback;",
        "fail",
        "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalFail;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalFailCallback;",
        "complete",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalCompleteCallback;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getContent",
        "setContent",
        "getShowCancel",
        "()Ljava/lang/Boolean;",
        "setShowCancel",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getCancelText",
        "setCancelText",
        "getCancelColor",
        "setCancelColor",
        "getConfirmText",
        "setConfirmText",
        "getConfirmColor",
        "setConfirmColor",
        "getEditable",
        "setEditable",
        "getPlaceholderText",
        "setPlaceholderText",
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
.field private cancelColor:Ljava/lang/String;

.field private cancelText:Ljava/lang/String;

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

.field private confirmColor:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private editable:Ljava/lang/Boolean;

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

.field private placeholderText:Ljava/lang/String;

.field private showCancel:Ljava/lang/Boolean;

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 16

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
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

    .line 114
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 102
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->title:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->content:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->showCancel:Ljava/lang/Boolean;

    .line 105
    iput-object p4, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->cancelText:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->cancelColor:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->confirmText:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->confirmColor:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->editable:Ljava/lang/Boolean;

    .line 110
    iput-object p9, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->placeholderText:Ljava/lang/String;

    .line 111
    iput-object p10, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->success:Lkotlin/jvm/functions/Function1;

    .line 112
    iput-object p11, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->fail:Lkotlin/jvm/functions/Function1;

    .line 113
    iput-object p12, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p14, p13, 0x1

    const/4 v0, 0x0

    if-eqz p14, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_14

    const/4 p3, 0x1

    .line 104
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :cond_14
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_19

    move-object p4, v0

    :cond_19
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_1e

    move-object p5, v0

    :cond_1e
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_23

    move-object p6, v0

    :cond_23
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_28

    move-object p7, v0

    :cond_28
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_31

    const/4 p8, 0x0

    .line 109
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    :cond_31
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_36

    move-object p9, v0

    :cond_36
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_3b

    move-object p10, v0

    :cond_3b
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_40

    move-object p11, v0

    :cond_40
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_46

    move-object p13, v0

    goto :goto_47

    :cond_46
    move-object p13, p12

    :goto_47
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 101
    invoke-direct/range {p1 .. p13}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public getCancelColor()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->cancelColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelText()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->cancelText:Ljava/lang/String;

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

    .line 113
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getConfirmColor()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->confirmColor:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmText()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->confirmText:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEditable()Ljava/lang/Boolean;
    .registers 2

    .line 109
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->editable:Ljava/lang/Boolean;

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

    .line 112
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->placeholderText:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCancel()Ljava/lang/Boolean;
    .registers 2

    .line 104
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->showCancel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSuccess()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCancelColor(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->cancelColor:Ljava/lang/String;

    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->cancelText:Ljava/lang/String;

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

    .line 113
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->complete:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setConfirmColor(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->confirmColor:Ljava/lang/String;

    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->confirmText:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->content:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Ljava/lang/Boolean;)V
    .registers 2

    .line 109
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->editable:Ljava/lang/Boolean;

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

    .line 112
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setPlaceholderText(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->placeholderText:Ljava/lang/String;

    return-void
.end method

.method public setShowCancel(Ljava/lang/Boolean;)V
    .registers 2

    .line 104
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->showCancel:Ljava/lang/Boolean;

    return-void
.end method

.method public setSuccess(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 102
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->title:Ljava/lang/String;

    return-void
.end method
