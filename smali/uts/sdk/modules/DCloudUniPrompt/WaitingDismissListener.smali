###### Class uts.sdk.modules.DCloudUniPrompt.WaitingDismissListener (uts.sdk.modules.DCloudUniPrompt.WaitingDismissListener)
.class public Luts/sdk/modules/DCloudUniPrompt/WaitingDismissListener;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/WaitingDismissListener;",
        "Landroid/widget/PopupWindow$OnDismissListener;",
        "<init>",
        "()V",
        "onDismiss",
        "",
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    return-void
.end method
