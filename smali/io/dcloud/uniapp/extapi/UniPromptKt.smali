###### Class io.dcloud.uniapp.extapi.UniPromptKt (io.dcloud.uniapp.extapi.UniPromptKt)
.class public final Lio/dcloud/uniapp/extapi/UniPromptKt;
.super Ljava/lang/Object;
.source "uniPrompt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"0\u0010$\u001a!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020)0%j\u0002`*\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,\"\u001b\u0010-\u001a\u000c\u0012\u0004\u0012\u00020)0.j\u0002`/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101\"0\u00102\u001a!\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020)0%j\u0002`3\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010,\"\u001b\u00105\u001a\u000c\u0012\u0004\u0012\u00020)0.j\u0002`6\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00101\"0\u00108\u001a!\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020)0%j\u0002`9\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010,\"0\u0010;\u001a!\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020)0%j\u0002`<\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010,*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*\n\u0010\u0006\"\u00020\u00072\u00020\u0007*\n\u0010\u0008\"\u00020\t2\u00020\t*\n\u0010\n\"\u00020\u000b2\u00020\u000b*\n\u0010\u000c\"\u00020\r2\u00020\r*\n\u0010\u000e\"\u00020\u000f2\u00020\u000f*\n\u0010\u0010\"\u00020\u00112\u00020\u0011*\n\u0010\u0012\"\u00020\u00132\u00020\u0013*\u000e\u0010\u0014\"\u0002`\u00152\u00060\u0016j\u0002`\u0015*\u000e\u0010\u0017\"\u0002`\u00182\u00060\u0013j\u0002`\u0018*\u000e\u0010\u0019\"\u0002`\u001a2\u00060\u001bj\u0002`\u001a*\u000e\u0010\u001c\"\u0002`\u001d2\u00060\u001bj\u0002`\u001d*\u000e\u0010\u001e\"\u0002`\u001f2\u00060\u0013j\u0002`\u001f*\u000e\u0010 \"\u0002`!2\u00060\u0013j\u0002`!*\u000e\u0010\"\"\u0002`#2\u00060\u0013j\u0002`#\u00a8\u0006>"
    }
    d2 = {
        "ShowToastSuccess",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;",
        "ShowToastOptions",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;",
        "ShowLoadingSuccess",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;",
        "ShowLoadingOptions",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;",
        "ShowModalSuccess",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
        "ShowModalOptions",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
        "ShowActionSheetSuccess",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
        "Popover",
        "Luts/sdk/modules/DCloudUniPrompt/Popover;",
        "ShowActionSheetOptions",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "IPromptError",
        "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
        "PromptErrorCode",
        "Luts/sdk/modules/DCloudUniPrompt/PromptErrorCode;",
        "",
        "ShowToastFail",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastFail;",
        "Icon",
        "Luts/sdk/modules/DCloudUniPrompt/Icon;",
        "",
        "ShowToastPosition",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastPosition;",
        "ShowLoadingFail",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingFail;",
        "ShowModalFail",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalFail;",
        "ShowActionSheetFail",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetFail;",
        "showToast",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "options",
        "",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToast;",
        "getShowToast",
        "()Lkotlin/jvm/functions/Function1;",
        "hideToast",
        "Lkotlin/Function0;",
        "Luts/sdk/modules/DCloudUniPrompt/HideToast;",
        "getHideToast",
        "()Lkotlin/jvm/functions/Function0;",
        "showLoading",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoading;",
        "getShowLoading",
        "hideLoading",
        "Luts/sdk/modules/DCloudUniPrompt/HideLoading;",
        "getHideLoading",
        "showModal",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModal;",
        "getShowModal",
        "showActionSheet",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheet;",
        "getShowActionSheet",
        "uni-prompt_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final hideLoading:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final hideToast:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final showActionSheet:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final showLoading:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final showModal:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final showToast:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->getShowToast()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showToast:Lkotlin/jvm/functions/Function1;

    .line 45
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->getHideToast()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->hideToast:Lkotlin/jvm/functions/Function0;

    .line 46
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->getShowLoading()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showLoading:Lkotlin/jvm/functions/Function1;

    .line 47
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->getHideLoading()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->hideLoading:Lkotlin/jvm/functions/Function0;

    .line 48
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->getShowModal()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showModal:Lkotlin/jvm/functions/Function1;

    .line 49
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->getShowActionSheet()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showActionSheet:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getHideLoading()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->hideLoading:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getHideToast()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->hideToast:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getShowActionSheet()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showActionSheet:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getShowLoading()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showLoading:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getShowModal()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showModal:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getShowToast()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPromptKt;->showToast:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
