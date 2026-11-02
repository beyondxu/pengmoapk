###### Class uts.sdk.modules.DCloudUniPrompt.MainThreadRunnable (uts.sdk.modules.DCloudUniPrompt.MainThreadRunnable)
.class public Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;",
        "Ljava/lang/Runnable;",
        "pop",
        "Landroid/widget/PopupWindow;",
        "<init>",
        "(Landroid/widget/PopupWindow;)V",
        "getPop",
        "()Landroid/widget/PopupWindow;",
        "setPop",
        "run",
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


# instance fields
.field public pop:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;)V
    .registers 3

    const-string v0, "pop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;->setPop(Landroid/widget/PopupWindow;)V

    return-void
.end method


# virtual methods
.method public getPop()Landroid/widget/PopupWindow;
    .registers 2

    .line 375
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;->pop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "pop"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 2

    .line 380
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;->getPop()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public setPop(Landroid/widget/PopupWindow;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;->pop:Landroid/widget/PopupWindow;

    return-void
.end method
