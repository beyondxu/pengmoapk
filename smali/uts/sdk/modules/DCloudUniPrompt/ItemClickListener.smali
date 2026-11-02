###### Class uts.sdk.modules.DCloudUniPrompt.ItemClickListener (uts.sdk.modules.DCloudUniPrompt.ItemClickListener)
.class public Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u001a\u0010\n\u001a\u00020\u0003X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0007X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "dialog",
        "Landroid/app/Dialog;",
        "style",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "index",
        "",
        "<init>",
        "(Landroid/app/Dialog;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;Ljava/lang/Number;)V",
        "host",
        "getHost",
        "()Landroid/app/Dialog;",
        "setHost",
        "(Landroid/app/Dialog;)V",
        "hostStyle",
        "getHostStyle",
        "()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "setHostStyle",
        "(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V",
        "hostIndex",
        "getHostIndex",
        "()Ljava/lang/Number;",
        "setHostIndex",
        "(Ljava/lang/Number;)V",
        "onClick",
        "",
        "v",
        "Landroid/view/View;",
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
.field public host:Landroid/app/Dialog;

.field public hostIndex:Ljava/lang/Number;

.field public hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;Ljava/lang/Number;)V
    .registers 5

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->setHost(Landroid/app/Dialog;)V

    .line 803
    invoke-virtual {p0, p2}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    .line 804
    invoke-virtual {p0, p3}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->setHostIndex(Ljava/lang/Number;)V

    return-void
.end method


# virtual methods
.method public getHost()Landroid/app/Dialog;
    .registers 2

    .line 798
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->host:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "host"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostIndex()Ljava/lang/Number;
    .registers 2

    .line 800
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->hostIndex:Ljava/lang/Number;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "hostIndex"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;
    .registers 2

    .line 799
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "hostStyle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 807
    new-instance p1, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->getHostIndex()Ljava/lang/Number;

    move-result-object v0

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetSuccess;-><init>(Ljava/lang/Number;)V

    .line 808
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_16
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 810
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_2b
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->setComplete(Lkotlin/jvm/functions/Function1;)V

    .line 812
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 813
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->getHost()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setHost(Landroid/app/Dialog;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->host:Landroid/app/Dialog;

    return-void
.end method

.method public setHostIndex(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->hostIndex:Ljava/lang/Number;

    return-void
.end method

.method public setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    return-void
.end method
