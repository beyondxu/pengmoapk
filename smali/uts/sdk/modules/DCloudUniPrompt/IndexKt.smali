###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt (uts.sdk.modules.DCloudUniPrompt.IndexKt)
.class public final Luts/sdk/modules/DCloudUniPrompt/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0002\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010@\u001a\u00020\n2\u0006\u0010A\u001a\u00020\u0013\u001a\u0006\u0010B\u001a\u00020\n\u001a\u000e\u0010C\u001a\u00020\n2\u0006\u0010D\u001a\u00020\u001e\u001a\u0006\u0010E\u001a\u00020\n\u001a\u0010\u0010F\u001a\u00020\n2\u0008\u0010G\u001a\u0004\u0018\u00010\u0010\u001a\u001e\u0010H\u001a\u00020\n2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010G\u001a\u00020\u00102\u0006\u0010I\u001a\u00020\u0010\u001a\u001e\u0010Q\u001a\u00020\n2\u0006\u0010A\u001a\u00020\u00132\u0006\u0010G\u001a\u00020\u00102\u0006\u0010I\u001a\u00020\u0010\u001a\u000e\u0010X\u001a\u00020\n2\u0006\u0010A\u001a\u00020\'\u001a\u000e\u0010_\u001a\u00020\n2\u0006\u0010A\u001a\u00020/\u001a\u0010\u0010`\u001a\u00020a2\u0008\u0010b\u001a\u0004\u0018\u00010\u0010\u001a\u000e\u0010w\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020x\u001a\u0006\u0010y\u001a\u00020\n\u001a\u000e\u0010z\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020{\u001a\u0006\u0010|\u001a\u00020\n\u001a\u000e\u0010}\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020~\u001a\u000f\u0010\u007f\u001a\u00020\n2\u0007\u0010\u0014\u001a\u00030\u0080\u0001\"\u001c\u00100\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104\"\u001c\u00105\u001a\u0004\u0018\u000106X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:\"\u001c\u0010;\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?\"\"\u0010J\u001a\n\u0012\u0004\u0012\u00020L\u0018\u00010KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010P\"\u001c\u0010R\u001a\u0004\u0018\u00010SX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010W\"\u001c\u0010Y\u001a\u0004\u0018\u00010ZX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^\"0\u0010c\u001a!\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005j\u0002`d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010f\"\u001b\u0010g\u001a\u000c\u0012\u0004\u0012\u00020\n0\u0016j\u0002`h\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008i\u0010j\"0\u0010k\u001a!\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005j\u0002`l\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010f\"\u001b\u0010n\u001a\u000c\u0012\u0004\u0012\u00020\n0\u0016j\u0002`o\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008p\u0010j\"0\u0010q\u001a!\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005j\u0002`r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008s\u0010f\"0\u0010t\u001a!\u0012\u0013\u0012\u00110/\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005j\u0002`u\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008v\u0010f*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*@\u0010\u0004\"\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*S\u0010\u000b\"\u001d\u0012\u0013\u0012\u0011`\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u000520\u0012&\u0012$0\u0003j\u0011`\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010\r\"\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*\n\u0010\u000f\"\u00020\u00102\u00020\u0010*\n\u0010\u0011\"\u00020\u00102\u00020\u0010*@\u0010\u0012\"\u001d\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005*\u0016\u0010\u0015\"\u0008\u0012\u0004\u0012\u00020\n0\u00162\u0008\u0012\u0004\u0012\u00020\n0\u0016*\n\u0010\u0017\"\u00020\u00032\u00020\u0003*@\u0010\u0018\"\u001d\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*S\u0010\u001a\"\u001d\u0012\u0013\u0012\u0011`\u001b\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u000520\u0012&\u0012$0\u0003j\u0011`\u001b\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010\u001c\"\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010\u001d\"\u001d\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005*\u0016\u0010\u001f\"\u0008\u0012\u0004\u0012\u00020\n0\u00162\u0008\u0012\u0004\u0012\u00020\n0\u0016*\n\u0010 \"\u00020\u00032\u00020\u0003*@\u0010!\"\u001d\u0012\u0013\u0012\u00110\"\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\"\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*S\u0010#\"\u001d\u0012\u0013\u0012\u0011`$\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u000520\u0012&\u0012$0\u0003j\u0011`$\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010%\"\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010&\"\u001d\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005*\n\u0010(\"\u00020\u00032\u00020\u0003*@\u0010)\"\u001d\u0012\u0013\u0012\u00110*\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110*\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*S\u0010+\"\u001d\u0012\u0013\u0012\u0011`,\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u000520\u0012&\u0012$0\u0003j\u0011`,\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010-\"\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005*@\u0010.\"\u001d\u0012\u0013\u0012\u00110/\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u00052\u001d\u0012\u0013\u0012\u00110/\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\n0\u0005\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "PromptErrorCode",
        "",
        "ShowToastFail",
        "Luts/sdk/modules/DCloudUniPrompt/IPromptError;",
        "ShowToastSuccessCallback",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "ShowToastFailCallback",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastFail;",
        "ShowToastCompleteCallback",
        "",
        "Icon",
        "",
        "ShowToastPosition",
        "ShowToast",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;",
        "options",
        "HideToast",
        "Lkotlin/Function0;",
        "ShowLoadingFail",
        "ShowLoadingSuccessCallback",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;",
        "ShowLoadingFailCallback",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingFail;",
        "ShowLoadingCompleteCallback",
        "ShowLoading",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;",
        "HideLoading",
        "ShowModalFail",
        "ShowModalSuccessCallback",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;",
        "ShowModalFailCallback",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalFail;",
        "ShowModalCompleteCallback",
        "ShowModal",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
        "ShowActionSheetFail",
        "ShowActionSheetSuccessCallback",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;",
        "ShowActionSheetFailCallback",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetFail;",
        "ShowActionSheetCompleteCallback",
        "ShowActionSheet",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "timeout",
        "getTimeout",
        "()Ljava/lang/Number;",
        "setTimeout",
        "(Ljava/lang/Number;)V",
        "toast",
        "Luts/sdk/modules/DCloudUniPrompt/WaitingView;",
        "getToast",
        "()Luts/sdk/modules/DCloudUniPrompt/WaitingView;",
        "setToast",
        "(Luts/sdk/modules/DCloudUniPrompt/WaitingView;)V",
        "toastType",
        "getToastType",
        "()Ljava/lang/String;",
        "setToastType",
        "(Ljava/lang/String;)V",
        "showToastImpl",
        "style",
        "hideToastImpl",
        "showLoadingImpl",
        "option",
        "hideLoadingImpl",
        "closeToast",
        "type",
        "makeLoading",
        "errMsg",
        "androidToastCache",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/widget/Toast;",
        "getAndroidToastCache",
        "()Ljava/lang/ref/WeakReference;",
        "setAndroidToastCache",
        "(Ljava/lang/ref/WeakReference;)V",
        "makeToast",
        "utsDialog",
        "Luts/sdk/modules/DCloudUniPrompt/UTSDialog;",
        "getUtsDialog",
        "()Luts/sdk/modules/DCloudUniPrompt/UTSDialog;",
        "setUtsDialog",
        "(Luts/sdk/modules/DCloudUniPrompt/UTSDialog;)V",
        "showModalImpl",
        "uniActionSheet",
        "Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;",
        "getUniActionSheet",
        "()Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;",
        "setUniActionSheet",
        "(Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;)V",
        "actionSheetImpl",
        "isValidColor",
        "",
        "colorStr",
        "showToast",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToast;",
        "getShowToast",
        "()Lkotlin/jvm/functions/Function1;",
        "hideToast",
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
        "showToastByJs",
        "Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;",
        "hideToastByJs",
        "showLoadingByJs",
        "Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;",
        "hideLoadingByJs",
        "showModalByJs",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;",
        "showActionSheetByJs",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;",
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
.field private static androidToastCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

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

.field private static timeout:Ljava/lang/Number;

.field private static toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

.field private static toastType:Ljava/lang/String;

.field private static uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

.field private static utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;


# direct methods
.method public static synthetic $r8$lambda$-2VZe_d0DoLrasAU9ke9ht1lMOo(Ljava/lang/Object;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideToast$lambda$8$lambda$7(Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2uBVLydAuz0rLJ8fOG08_W82sac(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoading$lambda$10$lambda$9(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3qMc3PPGxz4wUri7Sq8nHdlriow()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->makeToast$lambda$2()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$4T7mpGSE4goqvHX1c3kaG9KEPjU(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheet$lambda$16(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7Xu-c8QJ7eF9Cj42MZDy9CuQXKg()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->makeLoading$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$8MunkAZTMJdlLl1IKcGJzitFDgQ(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoading$lambda$10(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Au9glluWQa8tx8Xp2LOVc2n82yQ()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->actionSheetImpl$lambda$4()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$DCG5-qrhhnqBxgKRQmQ-NK3uVyw(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoadingByJs$lambda$20(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EigVvDh0Vs1VaGHY-xdhz1eQss8(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheet$lambda$16$lambda$15(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FVIUdm8PEYGzI4UrPxSxWtb3TpU(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModalByJs$lambda$24(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FlCxVzszcq_mA1KFOE4H9cQ59iU(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModalByJs$lambda$23(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KDcBtfaH358tcwIjrvbLlJGjIo8(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToastByJs$lambda$18(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QFMbiwYTHhcASbkuDqnlC0uGKRY(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModal$lambda$14(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QiqMRinnxeY97yELmHRoKe7r9Ho(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoadingByJs$lambda$21(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TjT3sBPxvepLJCvUP1tG7SpPAEs(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoadingByJs$lambda$22(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UOY120Cfnok9nDtKlDV8-WtGBkw(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToast$lambda$6(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_7Uc1N-6-2VqWhpLHqFRxjrS10w()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideLoading$lambda$12()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aZ4poXGgEx4oEbEeZlQpPfJJcmM(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModal$lambda$14$lambda$13(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eC4DwGiISnZUnsELk2uX_9BQ80Y(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheetByJs$lambda$27(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$efSFq5P_CzE4BNdp0cphZZXIelI(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheetByJs$lambda$28(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fPj8VkJsRfqt0h29jKdljaekqOk(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheetByJs$lambda$26(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g6xR925NxlyhIzXgvhnYq0emqnM()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->makeToast$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$i-ZEI4aPta5DBm0jxvNlSiZ3U4o(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModalByJs$lambda$25(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iAQtkNhgD7hPo_rhKeh2IUkCcUM(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToast$lambda$6$lambda$5(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jJQ0fcyF-LSBh9RKzpSIBrbRt3o(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToastByJs$lambda$19(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mAargsskuucqGumvJP-apqq8aOU(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToastByJs$lambda$17(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pBxXL_dE6iyuw_AZH45Xxpd_Dcg()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModalImpl$lambda$3()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$x23X3QYWApgWIi1eA_NBqGX4ZM8(Ljava/lang/Object;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideLoading$lambda$12$lambda$11(Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zOAqCTmmswnWNJqL3hh57S3prXk()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideToast$lambda$8()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 898
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda23;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToast:Lkotlin/jvm/functions/Function1;

    .line 904
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda24;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideToast:Lkotlin/jvm/functions/Function0;

    .line 910
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda25;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoading:Lkotlin/jvm/functions/Function1;

    .line 916
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda26;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideLoading:Lkotlin/jvm/functions/Function0;

    .line 922
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda27;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModal:Lkotlin/jvm/functions/Function1;

    .line 928
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda28;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheet:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final actionSheetImpl(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V
    .registers 4

    const-string v0, "style"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getItemList()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 720
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_91

    .line 719
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getItemList()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v0, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_27

    goto :goto_91

    .line 725
    :cond_27
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getItemList()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_4e

    .line 726
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;

    check-cast v1, Ljava/lang/Number;

    const-string v2, "showActionSheet:fail parameter error: itemList should not be large than 6"

    invoke-direct {v0, v1, v2}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_44
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_ac

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 731
    :cond_4e
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    if-eqz v0, :cond_5a

    if-eqz v0, :cond_57

    .line 732
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->dismiss()V

    :cond_57
    const/4 v0, 0x0

    .line 733
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    .line 735
    :cond_5a
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_63

    goto :goto_ac

    .line 738
    :cond_63
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_ac

    .line 741
    :cond_73
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;-><init>(Landroid/app/Activity;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    .line 742
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->show()V

    .line 743
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSAndroid;->onAppActivityDestroy(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 720
    :cond_91
    :goto_91
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;

    check-cast v1, Ljava/lang/Number;

    const-string v2, "showActionSheet:fail parameter error: parameter.itemList should have at least 1 item"

    invoke-direct {v0, v1, v2}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_a3
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_ac

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac
    :goto_ac
    return-void
.end method

.method private static final actionSheetImpl$lambda$4()Lkotlin/Unit;
    .registers 1

    .line 744
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->dismiss()V

    :cond_7
    const/4 v0, 0x0

    .line 745
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    .line 746
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final closeToast(Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_7

    .line 419
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toastType:Ljava/lang/String;

    if-eq p0, v0, :cond_7

    return-void

    .line 422
    :cond_7
    sget-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->timeout:Ljava/lang/Number;

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {p0, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p0

    if-lez p0, :cond_28

    .line 423
    sget-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->timeout:Ljava/lang/Number;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/dcloud/uts/UTSTimerKt;->clearTimeout(Ljava/lang/Number;)V

    .line 424
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->timeout:Ljava/lang/Number;

    .line 426
    :cond_28
    sget-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    const-string v1, "null cannot be cast to non-null type uts.sdk.modules.DCloudUniPrompt.WaitingView"

    if-eqz p0, :cond_36

    .line 427
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->close()V

    .line 428
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    .line 430
    :cond_36
    sget-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    if-eqz p0, :cond_42

    .line 431
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->close()V

    .line 432
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    .line 434
    :cond_42
    sget-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->androidToastCache:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Toast;

    goto :goto_4e

    :cond_4d
    move-object p0, v0

    :goto_4e
    if-eqz p0, :cond_61

    .line 435
    sget-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->androidToastCache:Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Toast;

    .line 436
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    .line 439
    :cond_61
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toastType:Ljava/lang/String;

    return-void
.end method

.method public static final getAndroidToastCache()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation

    .line 466
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->androidToastCache:Ljava/lang/ref/WeakReference;

    return-object v0
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

    .line 916
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideLoading:Lkotlin/jvm/functions/Function0;

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

    .line 904
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideToast:Lkotlin/jvm/functions/Function0;

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

    .line 928
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheet:Lkotlin/jvm/functions/Function1;

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

    .line 910
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoading:Lkotlin/jvm/functions/Function1;

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

    .line 922
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModal:Lkotlin/jvm/functions/Function1;

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

    .line 898
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToast:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getTimeout()Ljava/lang/Number;
    .registers 1

    .line 403
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->timeout:Ljava/lang/Number;

    return-object v0
.end method

.method public static final getToast()Luts/sdk/modules/DCloudUniPrompt/WaitingView;
    .registers 1

    .line 404
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    return-object v0
.end method

.method public static final getToastType()Ljava/lang/String;
    .registers 1

    .line 405
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toastType:Ljava/lang/String;

    return-object v0
.end method

.method public static final getUniActionSheet()Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;
    .registers 1

    .line 717
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    return-object v0
.end method

.method public static final getUtsDialog()Luts/sdk/modules/DCloudUniPrompt/UTSDialog;
    .registers 1

    .line 696
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    return-object v0
.end method

.method private static final hideLoading$lambda$12()Lkotlin/Unit;
    .registers 4

    .line 917
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    const-string v3, "main"

    invoke-virtual {v0, v3, v1, v2}, Lio/dcloud/uts/UTSAndroid;->dispatchAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 921
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final hideLoading$lambda$12$lambda$11(Ljava/lang/Object;)Lkotlin/Unit;
    .registers 1

    .line 918
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideLoadingImpl()V

    .line 919
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final hideLoadingByJs()V
    .registers 1

    .line 1004
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideLoading:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final hideLoadingImpl()V
    .registers 1

    .line 416
    const-string v0, "loading"

    invoke-static {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->closeToast(Ljava/lang/String;)V

    return-void
.end method

.method private static final hideToast$lambda$8()Lkotlin/Unit;
    .registers 4

    .line 905
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda20;-><init>()V

    const/4 v2, 0x0

    const-string v3, "main"

    invoke-virtual {v0, v3, v1, v2}, Lio/dcloud/uts/UTSAndroid;->dispatchAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 909
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final hideToast$lambda$8$lambda$7(Ljava/lang/Object;)Lkotlin/Unit;
    .registers 1

    .line 906
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideToastImpl()V

    .line 907
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final hideToastByJs()V
    .registers 1

    .line 989
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->hideToast:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final hideToastImpl()V
    .registers 1

    .line 410
    const-string v0, "toast"

    invoke-static {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->closeToast(Ljava/lang/String;)V

    return-void
.end method

.method public static final isValidColor(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 890
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 893
    const-string v3, "#"

    invoke-static {p0, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static final makeLoading(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "style"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 442
    invoke-static {p2}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->closeToast(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3b

    .line 444
    new-instance p1, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;

    const/16 p2, 0x3e9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    const-string v0, "showLoading:title is null"

    invoke-direct {p1, p2, v0}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_31
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_c9

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 448
    :cond_3b
    sput-object p1, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toastType:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p2, p1, [Lkotlin/Pair;

    .line 449
    invoke-static {p2}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    const/4 p2, 0x5

    .line 450
    new-array p2, p2, [Lkotlin/Pair;

    const-string v0, "name"

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "modal"

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->getMask()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "back"

    const-string v0, "transmit"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p2, v0

    const-string p1, "padding"

    const-string v0, "10"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    const-string p1, "size"

    const-string v0, "16"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, p2, v0

    invoke-static {p2}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    .line 451
    const-string p2, "width"

    const-string v0, "140"

    invoke-virtual {p1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    const-string p2, "height"

    const-string v0, "112"

    invoke-virtual {p1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    new-instance p2, Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getTopPageView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;-><init>(Landroid/app/Activity;Lio/dcloud/uts/UTSJSONObject;Landroid/view/View;)V

    .line 454
    sput-object p2, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    .line 455
    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->showWaiting()V

    .line 456
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance p2, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda19;

    invoke-direct {p2}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p1, p2}, Lio/dcloud/uts/UTSAndroid;->onAppActivityDestroy(Lkotlin/jvm/functions/Function0;)V

    .line 461
    new-instance p1, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;-><init>()V

    .line 462
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_c0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_c0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_c9

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c9
    return-void
.end method

.method private static final makeLoading$lambda$0()Lkotlin/Unit;
    .registers 1

    .line 457
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->close()V

    :cond_7
    const/4 v0, 0x0

    .line 458
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    .line 459
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final makeToast(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p1

    const-string v1, "style"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errMsg"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 468
    invoke-static {v1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->closeToast(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_241

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2b

    goto/16 :goto_241

    .line 474
    :cond_2b
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toastType:Ljava/lang/String;

    .line 478
    const-string v1, "top"

    const-string v3, "center"

    const-string v4, "bottom"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 475
    invoke-static {v5}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 479
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getPosition()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_d6

    .line 480
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 481
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getPosition()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x527265d5

    if-eq v7, v8, :cond_9a

    const v4, -0x514d33ab

    if-eq v7, v4, :cond_8a

    const v3, 0x1c155

    if-eq v7, v3, :cond_72

    goto :goto_b1

    :cond_72
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    goto :goto_b1

    .line 483
    :cond_79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    const/16 v4, 0x30

    invoke-virtual {v0, v4, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_b1

    .line 481
    :cond_8a
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    goto :goto_b1

    .line 485
    :cond_91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_b1

    .line 481
    :cond_9a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    goto :goto_b1

    .line 487
    :cond_a1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    const/16 v4, 0x50

    invoke-virtual {v0, v4, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 489
    :cond_b1
    :goto_b1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 490
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->androidToastCache:Ljava/lang/ref/WeakReference;

    .line 491
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;-><init>()V

    .line 492
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_cc

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_cc
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_262

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d6
    new-array v1, v6, [Lkotlin/Pair;

    .line 495
    invoke-static {v1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    .line 496
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getIcon()Ljava/lang/String;

    move-result-object v1

    .line 497
    const-string v3, "error"

    const-string v4, "none"

    const-string v5, "success"

    const-string v7, "loading"

    if-eqz v1, :cond_f7

    .line 501
    filled-new-array {v5, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v8

    .line 497
    invoke-static {v8}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v8

    .line 502
    invoke-virtual {v8, v1}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_f8

    :cond_f7
    move-object v1, v5

    :cond_f8
    const/4 v8, 0x5

    .line 505
    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "name"

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "modal"

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getMask()Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v9, "back"

    const-string v11, "transmit"

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const-string v9, "padding"

    const-string v12, "10"

    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    const-string v9, "size"

    const-string v13, "16"

    invoke-static {v9, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v13, 0x4

    aput-object v9, v8, v13

    invoke-static {v8}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v8

    .line 506
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getImage()Ljava/lang/String;

    move-result-object v9

    const-string v13, ""

    const-string v14, "display"

    const-string v15, "height"

    if-eqz v9, :cond_14f

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_165

    :cond_14f
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_165

    .line 507
    new-array v9, v10, [Lkotlin/Pair;

    invoke-static {v14, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-static {v9}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v4

    invoke-virtual {v8, v7, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_171

    .line 509
    :cond_165
    const-string v4, "width"

    const-string v9, "140"

    invoke-virtual {v8, v4, v9}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    const-string v4, "112"

    invoke-virtual {v8, v15, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    :goto_171
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getImage()Ljava/lang/String;

    move-result-object v4

    const-string v9, "icon"

    const/16 p2, 0x0

    const-string v6, "block"

    if-eqz v4, :cond_1ac

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ac

    .line 513
    new-array v1, v12, [Lkotlin/Pair;

    invoke-static {v14, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, p2

    const-string v3, "55"

    invoke-static {v15, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1e2

    .line 517
    :cond_1ac
    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-static {v3}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v3

    .line 518
    invoke-virtual {v3, v1}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1e2

    .line 519
    new-array v3, v12, [Lkotlin/Pair;

    invoke-static {v14, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, p2

    const-string v4, "36"

    invoke-static {v15, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 520
    const-string v1, "successIcon"

    goto :goto_1d5

    .line 522
    :cond_1d3
    const-string v1, "errorIcon"

    .line 519
    :goto_1d5
    invoke-static {v9, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-static {v3}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    :cond_1e2
    :goto_1e2
    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v4}, Lio/dcloud/uts/UTSAndroid;->getTopPageView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v3, v8, v4}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;-><init>(Landroid/app/Activity;Lio/dcloud/uts/UTSJSONObject;Landroid/view/View;)V

    .line 528
    sput-object v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    .line 529
    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->showWaiting()V

    .line 530
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v3, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSAndroid;->onAppActivityDestroy(Lkotlin/jvm/functions/Function0;)V

    .line 535
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getDuration()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_214

    .line 536
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v1, v3}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v3

    if-gtz v3, :cond_21c

    :cond_214
    const/16 v1, 0x5dc

    .line 537
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    :cond_21c
    if-eq v0, v7, :cond_229

    .line 540
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v0, v1}, Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->timeout:Ljava/lang/Number;

    .line 545
    :cond_229
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;-><init>()V

    .line 546
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_237

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_237
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_262

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 470
    :cond_241
    :goto_241
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v3, "showLoading:title is null"

    invoke-direct {v0, v1, v3}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_259

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_259
    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_262

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_262
    return-void
.end method

.method private static final makeToast$lambda$1()Lkotlin/Unit;
    .registers 1

    .line 531
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->close()V

    :cond_7
    const/4 v0, 0x0

    .line 532
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    .line 533
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final makeToast$lambda$2()Lkotlin/Unit;
    .registers 1

    .line 541
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->close()V

    .line 542
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final setAndroidToastCache(Ljava/lang/ref/WeakReference;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;)V"
        }
    .end annotation

    .line 466
    sput-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->androidToastCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final setTimeout(Ljava/lang/Number;)V
    .registers 1

    .line 403
    sput-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->timeout:Ljava/lang/Number;

    return-void
.end method

.method public static final setToast(Luts/sdk/modules/DCloudUniPrompt/WaitingView;)V
    .registers 1

    .line 404
    sput-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toast:Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    return-void
.end method

.method public static final setToastType(Ljava/lang/String;)V
    .registers 1

    .line 405
    sput-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->toastType:Ljava/lang/String;

    return-void
.end method

.method public static final setUniActionSheet(Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;)V
    .registers 1

    .line 717
    sput-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->uniActionSheet:Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;

    return-void
.end method

.method public static final setUtsDialog(Luts/sdk/modules/DCloudUniPrompt/UTSDialog;)V
    .registers 1

    .line 696
    sput-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    return-void
.end method

.method private static final showActionSheet$lambda$16(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)Lkotlin/Unit;
    .registers 4

    .line 929
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda1;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    const/4 p0, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v2, v1, p0}, Lio/dcloud/uts/UTSAndroid;->dispatchAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 933
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showActionSheet$lambda$16$lambda$15(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    .line 930
    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->actionSheetImpl(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    .line 931
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final showActionSheetByJs(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;)V
    .registers 11

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showActionSheet:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getAlertText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getItemList()Lio/dcloud/uts/UTSArray;

    move-result-object v4

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getItemColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getPopover()Luts/sdk/modules/DCloudUniPrompt/Popover;

    move-result-object v6

    new-instance v7, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda16;

    invoke-direct {v7, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda16;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;)V

    new-instance v8, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda17;

    invoke-direct {v8, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda17;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;)V

    new-instance v9, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda18;

    invoke-direct {v9, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda18;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;)V

    invoke-direct/range {v1 .. v9}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/uts/UTSArray;Ljava/lang/String;Luts/sdk/modules/DCloudUniPrompt/Popover;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showActionSheetByJs$lambda$26(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;
    .registers 4

    .line 1020
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showActionSheetByJs$lambda$27(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 4

    .line 1023
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showActionSheetByJs$lambda$28(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 1026
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showLoading$lambda$10(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)Lkotlin/Unit;
    .registers 4

    .line 911
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda22;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)V

    const/4 p0, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v2, v1, p0}, Lio/dcloud/uts/UTSAndroid;->dispatchAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 915
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showLoading$lambda$10$lambda$9(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    .line 912
    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoadingImpl(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)V

    .line 913
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final showLoadingByJs(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;)V
    .registers 8

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 992
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showLoading:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;->getMask()Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda13;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;)V

    new-instance v5, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda14;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;)V

    new-instance v6, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda15;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;)V

    invoke-direct/range {v1 .. v6}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showLoadingByJs$lambda$20(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;)Lkotlin/Unit;
    .registers 4

    .line 993
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showLoadingByJs$lambda$21(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 4

    .line 996
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showLoadingByJs$lambda$22(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 999
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final showLoadingImpl(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)V
    .registers 3

    const-string v0, "option"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    const-string v0, "loading"

    const-string v1, "showLoading"

    invoke-static {p0, v0, v1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->makeLoading(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final showModal$lambda$14(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)Lkotlin/Unit;
    .registers 4

    .line 923
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda10;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V

    const/4 p0, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v2, v1, p0}, Lio/dcloud/uts/UTSAndroid;->dispatchAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 927
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showModal$lambda$14$lambda$13(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    .line 924
    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModalImpl(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V

    .line 925
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final showModalByJs(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;)V
    .registers 15

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showModal:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getShowCancel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getCancelText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getCancelColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getConfirmText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getConfirmColor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getEditable()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getPlaceholderText()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda2;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;)V

    new-instance v12, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda3;

    invoke-direct {v12, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda3;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;)V

    new-instance v13, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda4;

    invoke-direct {v13, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda4;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;)V

    invoke-direct/range {v1 .. v13}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showModalByJs$lambda$23(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;)Lkotlin/Unit;
    .registers 4

    .line 1008
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showModalByJs$lambda$24(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 4

    .line 1011
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showModalByJs$lambda$25(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 1014
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final showModalImpl(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V
    .registers 3

    const-string v0, "style"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    if-eqz v0, :cond_11

    if-eqz v0, :cond_e

    .line 699
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->dismiss()V

    :cond_e
    const/4 v0, 0x0

    .line 700
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    .line 702
    :cond_11
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_29

    .line 705
    :cond_1a
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_29
    return-void

    .line 708
    :cond_2a
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getTopPageActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    .line 709
    invoke-virtual {v0, p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->initStyle(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V

    .line 710
    sget-object p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->show()V

    .line 711
    :cond_46
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSAndroid;->onAppActivityDestroy(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final showModalImpl$lambda$3()Lkotlin/Unit;
    .registers 1

    .line 712
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->dismiss()V

    :cond_7
    const/4 v0, 0x0

    .line 713
    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->utsDialog:Luts/sdk/modules/DCloudUniPrompt/UTSDialog;

    .line 714
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final showToast$lambda$6(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)Lkotlin/Unit;
    .registers 4

    .line 899
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda12;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)V

    const/4 p0, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v2, v1, p0}, Lio/dcloud/uts/UTSAndroid;->dispatchAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 903
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showToast$lambda$6$lambda$5(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    .line 900
    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToastImpl(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)V

    .line 901
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final showToastByJs(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;)V
    .registers 12

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    sget-object v0, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->showToast:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getMask()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getDuration()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getPosition()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda5;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;)V

    new-instance v9, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda6;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;)V

    new-instance v10, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda7;

    invoke-direct {v10, p0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda7;-><init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;)V

    invoke-direct/range {v1 .. v10}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Number;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showToastByJs$lambda$17(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;)Lkotlin/Unit;
    .registers 4

    .line 978
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showToastByJs$lambda$18(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;
    .registers 4

    .line 981
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showToastByJs$lambda$19(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 984
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final showToastImpl(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)V
    .registers 3

    const-string v0, "style"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    const-string v0, "toast"

    const-string v1, "showToast"

    invoke-static {p0, v0, v1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->makeToast(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$x23X3QYWApgWIi1eA_NBqGX4ZM8(Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$EigVvDh0Vs1VaGHY-xdhz1eQss8(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda10 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda10)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda10;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda10;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$aZ4poXGgEx4oEbEeZlQpPfJJcmM(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda11 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda11)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$g6xR925NxlyhIzXgvhnYq0emqnM()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda12 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda12)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda12;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda12;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$iAQtkNhgD7hPo_rhKeh2IUkCcUM(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda13 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda13)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda13;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda13;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$DCG5-qrhhnqBxgKRQmQ-NK3uVyw(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowLoadingSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda14 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda14)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda14;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda14;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/IPromptError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$QiqMRinnxeY97yELmHRoKe7r9Ho(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda15 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda15)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda15;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda15;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$TjT3sBPxvepLJCvUP1tG7SpPAEs(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda16 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda16)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda16;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda16;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$fPj8VkJsRfqt0h29jKdljaekqOk(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda17 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda17)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda17;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda17;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/IPromptError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$eC4DwGiISnZUnsELk2uX_9BQ80Y(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda18 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda18)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda18;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda18;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$efSFq5P_CzE4BNdp0cphZZXIelI(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda19 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda19)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$7Xu-c8QJ7eF9Cj42MZDy9CuQXKg()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$FlCxVzszcq_mA1KFOE4H9cQ59iU(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda20 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda20)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$-2VZe_d0DoLrasAU9ke9ht1lMOo(Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda21 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda21)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$3qMc3PPGxz4wUri7Sq8nHdlriow()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda22 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda22)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda22;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda22;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$2uBVLydAuz0rLJ8fOG08_W82sac(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda23 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda23)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$UOY120Cfnok9nDtKlDV8-WtGBkw(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda24 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda24)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$zOAqCTmmswnWNJqL3hh57S3prXk()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda25 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda25)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$8MunkAZTMJdlLl1IKcGJzitFDgQ(Luts/sdk/modules/DCloudUniPrompt/ShowLoadingOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda26 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda26)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$_7Uc1N-6-2VqWhpLHqFRxjrS10w()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda27 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda27)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$QFMbiwYTHhcASbkuDqnlC0uGKRY(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda28 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda28)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$4T7mpGSE4goqvHX1c3kaG9KEPjU(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda3;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda3;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/IPromptError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$FVIUdm8PEYGzI4UrPxSxWtb3TpU(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda4 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda4)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda4;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda4;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$i-ZEI4aPta5DBm0jxvNlSiZ3U4o(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda5 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda5)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda5;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda5;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$mAargsskuucqGumvJP-apqq8aOU(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/ShowToastSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda6 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda6)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda6;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda6;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/IPromptError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$KDcBtfaH358tcwIjrvbLlJGjIo8(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Luts/sdk/modules/DCloudUniPrompt/IPromptError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda7 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda7)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda7;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda7;->f$0:Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$jJQ0fcyF-LSBh9RKzpSIBrbRt3o(Luts/sdk/modules/DCloudUniPrompt/ShowToastOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda8 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda8)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$Au9glluWQa8tx8Xp2LOVc2n82yQ()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda9 (uts.sdk.modules.DCloudUniPrompt.IndexKt$$ExternalSyntheticLambda9)
.class public final synthetic Luts/sdk/modules/DCloudUniPrompt/IndexKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->$r8$lambda$pBxXL_dE6iyuw_AZH45Xxpd_Dcg()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
