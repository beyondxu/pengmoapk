###### Class uts.sdk.modules.DCloudUniPrompt.PromptErrorImpl (uts.sdk.modules.DCloudUniPrompt.PromptErrorImpl)
.class public Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;
.super Lio/dcloud/uniapp/UniError;
.source "index.kt"

# interfaces
.implements Luts/sdk/modules/DCloudUniPrompt/IPromptError;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0008\u0016\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;",
        "Lio/dcloud/uniapp/UniError;",
        "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
        "errCode",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/PromptErrorCode;",
        "errMsg",
        "",
        "<init>",
        "(Ljava/lang/Number;Ljava/lang/String;)V",
        "getErrCode",
        "()Ljava/lang/Number;",
        "setErrCode",
        "(Ljava/lang/Number;)V",
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
.field public errCode:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .registers 4

    const-string v0, "errCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lio/dcloud/uniapp/UniError;-><init>()V

    .line 398
    const-string v0, "uni-prompt"

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;->setErrSubject(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;->setErrCode(Ljava/lang/Number;)V

    .line 400
    invoke-virtual {p0, p2}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;->setErrMsg(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrCode()Ljava/lang/Number;
    .registers 2

    .line 396
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;->errCode:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "errCode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setErrCode(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;->errCode:Ljava/lang/Number;

    return-void
.end method
