###### Class uts.sdk.modules.DCloudUniPrompt.UTSDialog (uts.sdk.modules.DCloudUniPrompt.UTSDialog)
.class public Luts/sdk/modules/DCloudUniPrompt/UTSDialog;
.super Landroid/app/Dialog;
.source "index.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020#H\u0016J\u0010\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020\u001dH\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\u001a\u0010\u0010\u001a\u00020\u0011X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\n\"\u0004\u0008\u0018\u0010\u000cR\u001a\u0010\u0019\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\n\"\u0004\u0008\u001b\u0010\u000cR\u001a\u0010\u001c\u001a\u00020\u001dX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006."
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/UTSDialog;",
        "Landroid/app/Dialog;",
        "Landroid/view/View$OnClickListener;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "tv_title",
        "Landroid/widget/TextView;",
        "getTv_title",
        "()Landroid/widget/TextView;",
        "setTv_title",
        "(Landroid/widget/TextView;)V",
        "tv_content",
        "getTv_content",
        "setTv_content",
        "et_content",
        "Landroid/widget/EditText;",
        "getEt_content",
        "()Landroid/widget/EditText;",
        "setEt_content",
        "(Landroid/widget/EditText;)V",
        "tvCancelAction",
        "getTvCancelAction",
        "setTvCancelAction",
        "tvSureAction",
        "getTvSureAction",
        "setTvSureAction",
        "view_split_line_v",
        "Landroid/view/View;",
        "getView_split_line_v",
        "()Landroid/view/View;",
        "setView_split_line_v",
        "(Landroid/view/View;)V",
        "hostStyle",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
        "getHostStyle",
        "()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
        "setHostStyle",
        "(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V",
        "dismiss",
        "",
        "initStyle",
        "style",
        "onClick",
        "view",
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
.field public et_content:Landroid/widget/EditText;

.field private hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

.field public tvCancelAction:Landroid/widget/TextView;

.field public tvSureAction:Landroid/widget/TextView;

.field public tv_content:Landroid/widget/TextView;

.field public tv_title:Landroid/widget/TextView;

.field public view_split_line_v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 559
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 560
    sget p1, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_modal_dialog_night:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setContentView(I)V

    goto :goto_1b

    .line 562
    :cond_16
    sget p1, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_modal_dialog:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setContentView(I)V

    .line 564
    :goto_1b
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_27

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 565
    :cond_27
    sget p1, Lio/dcloud/uts/prompt/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTv_title(Landroid/widget/TextView;)V

    .line 566
    sget p1, Lio/dcloud/uts/prompt/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTv_content(Landroid/widget/TextView;)V

    .line 567
    sget p1, Lio/dcloud/uts/prompt/R$id;->et_content:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setEt_content(Landroid/widget/EditText;)V

    .line 568
    sget p1, Lio/dcloud/uts/prompt/R$id;->tvCancelAction:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTvCancelAction(Landroid/widget/TextView;)V

    .line 569
    sget p1, Lio/dcloud/uts/prompt/R$id;->tvSureAction:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTvSureAction(Landroid/widget/TextView;)V

    .line 570
    sget p1, Lio/dcloud/uts/prompt/R$id;->view_split_line_v:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setView_split_line_v(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 7

    .line 574
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 575
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_19
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 577
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->setComplete(Lkotlin/jvm/functions/Function1;)V

    .line 579
    :cond_2a
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getEt_content()Landroid/widget/EditText;
    .registers 2

    .line 554
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->et_content:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "et_content"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;
    .registers 2

    .line 572
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    return-object v0
.end method

.method public getTvCancelAction()Landroid/widget/TextView;
    .registers 2

    .line 555
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvCancelAction:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "tvCancelAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTvSureAction()Landroid/widget/TextView;
    .registers 2

    .line 556
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvSureAction:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "tvSureAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTv_content()Landroid/widget/TextView;
    .registers 2

    .line 553
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_content:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "tv_content"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTv_title()Landroid/widget/TextView;
    .registers 2

    .line 552
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "tv_title"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView_split_line_v()Landroid/view/View;
    .registers 2

    .line 557
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->view_split_line_v:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "view_split_line_v"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initStyle(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V
    .registers 8

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setCanceledOnTouchOutside(Z)V

    .line 584
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getShowCancel()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v1, :cond_54

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getShowCancel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 585
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getView_split_line_v()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 587
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 589
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_right_night:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_84

    .line 591
    :cond_4a
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_right:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_84

    .line 594
    :cond_54
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getView_split_line_v()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 596
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 598
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_total_night:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_84

    .line 600
    :cond_7b
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_total:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 603
    :goto_84
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getEditable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_121

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getEditable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 604
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 605
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e3

    .line 607
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 608
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 609
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 610
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 613
    :cond_e3
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getPlaceholderText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f6

    .line 614
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getPlaceholderText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 616
    :cond_f6
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_118

    .line 617
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_227

    .line 620
    :cond_118
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_227

    .line 623
    :cond_121
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 624
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_149

    .line 625
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_150

    .line 628
    :cond_149
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    :goto_150
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1bb

    .line 631
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 634
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 635
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_227

    .line 637
    :cond_1a0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_227

    .line 641
    :cond_1bb
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_220

    .line 642
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v0

    if-eqz v0, :cond_205

    .line 646
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_227

    .line 648
    :cond_205
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_227

    .line 651
    :cond_220
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    :cond_227
    :goto_227
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23a

    .line 656
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :cond_23a
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_251

    .line 660
    :try_start_240
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_24f
    .catchall {:try_start_240 .. :try_end_24f} :catchall_250

    goto :goto_251

    :catchall_250
    nop

    .line 664
    :cond_251
    :goto_251
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_264

    .line 665
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_264
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_279

    .line 669
    :try_start_26a
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_279
    .catchall {:try_start_26a .. :try_end_279} :catchall_279

    .line 673
    :catchall_279
    :cond_279
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lio/dcloud/uts/prompt/R$id;->tvCancelAction:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_21

    const/4 p1, 0x0

    .line 679
    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setConfirm(Z)V

    const/4 p1, 0x1

    .line 680
    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setCancel(Z)V

    goto :goto_4c

    .line 681
    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lio/dcloud/uts/prompt/R$id;->tvSureAction:I

    if-ne p1, v0, :cond_4c

    .line 682
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    .line 683
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 684
    invoke-virtual {v1, v3}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setContent(Ljava/lang/String;)V

    .line 686
    :cond_49
    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setContent(Ljava/lang/String;)V

    .line 688
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_5b
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_6a
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 691
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->setComplete(Lkotlin/jvm/functions/Function1;)V

    .line 693
    :cond_7a
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->dismiss()V

    return-void
.end method

.method public setEt_content(Landroid/widget/EditText;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->et_content:Landroid/widget/EditText;

    return-void
.end method

.method public setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V
    .registers 2

    .line 572
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    return-void
.end method

.method public setTvCancelAction(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvCancelAction:Landroid/widget/TextView;

    return-void
.end method

.method public setTvSureAction(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvSureAction:Landroid/widget/TextView;

    return-void
.end method

.method public setTv_content(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_content:Landroid/widget/TextView;

    return-void
.end method

.method public setTv_title(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_title:Landroid/widget/TextView;

    return-void
.end method

.method public setView_split_line_v(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->view_split_line_v:Landroid/view/View;

    return-void
.end method
