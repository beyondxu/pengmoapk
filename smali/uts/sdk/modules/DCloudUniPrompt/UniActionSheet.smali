###### Class uts.sdk.modules.DCloudUniPrompt.UniActionSheet (uts.sdk.modules.DCloudUniPrompt.UniActionSheet)
.class public Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;
.super Landroid/app/Dialog;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010-\u001a\u00020.H\u0016R\u001a\u0010\u0008\u001a\u00020\u0003X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u001cX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020\"X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010$\"\u0004\u0008)\u0010&R\u001a\u0010*\u001a\u00020\"X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010$\"\u0004\u0008,\u0010&\u00a8\u0006/"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "style",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "<init>",
        "(Landroid/app/Activity;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V",
        "hostActivity",
        "getHostActivity",
        "()Landroid/app/Activity;",
        "setHostActivity",
        "(Landroid/app/Activity;)V",
        "hostStyle",
        "getHostStyle",
        "()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "setHostStyle",
        "(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V",
        "title",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "getTitle",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "setTitle",
        "(Landroidx/appcompat/widget/AppCompatTextView;)V",
        "cancel",
        "getCancel",
        "setCancel",
        "myRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getMyRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setMyRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "lineTitle",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "getLineTitle",
        "()Landroidx/appcompat/widget/LinearLayoutCompat;",
        "setLineTitle",
        "(Landroidx/appcompat/widget/LinearLayoutCompat;)V",
        "lineContent",
        "getLineContent",
        "setLineContent",
        "lineCancel",
        "getLineCancel",
        "setLineCancel",
        "dismiss",
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
.field public cancel:Landroidx/appcompat/widget/AppCompatTextView;

.field public hostActivity:Landroid/app/Activity;

.field public hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

.field public lineCancel:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public lineContent:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public lineTitle:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public myRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public title:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Lio/dcloud/uts/prompt/R$style;->uni_app_uni_prompt_ActionsheetDialog:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 767
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setHostActivity(Landroid/app/Activity;)V

    .line 768
    invoke-virtual {p0, p2}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    .line 769
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 770
    sget p1, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_uts_action_sheet_night:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setContentView(I)V

    goto :goto_2b

    .line 772
    :cond_26
    sget p1, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_uts_action_sheet:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setContentView(I)V

    .line 774
    :goto_2b
    sget p1, Lio/dcloud/uts/prompt/R$id;->tvTitle:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setTitle(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 775
    sget p1, Lio/dcloud/uts/prompt/R$id;->tvCancelAction:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setCancel(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 776
    sget p1, Lio/dcloud/uts/prompt/R$id;->line_title:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setLineTitle(Landroidx/appcompat/widget/LinearLayoutCompat;)V

    .line 777
    sget p1, Lio/dcloud/uts/prompt/R$id;->line_content:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setLineContent(Landroidx/appcompat/widget/LinearLayoutCompat;)V

    .line 778
    sget p1, Lio/dcloud/uts/prompt/R$id;->line_cancel:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setLineCancel(Landroidx/appcompat/widget/LinearLayoutCompat;)V

    .line 779
    sget p1, Lio/dcloud/uts/prompt/R$id;->myRecyclerview:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->setMyRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 780
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getMyRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 781
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getCancel()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/CancelClickListener;

    move-object v1, p0

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Luts/sdk/modules/DCloudUniPrompt/CancelClickListener;-><init>(Landroid/app/Dialog;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    new-instance p1, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;-><init>(Landroid/app/Dialog;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    .line 783
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getMyRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 784
    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_e0

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cb

    goto :goto_e0

    .line 785
    :cond_cb
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getLineTitle()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    .line 786
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getTitle()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    :cond_e0
    :goto_e0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_11d

    .line 789
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 790
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p2, 0x51

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 791
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_11d

    .line 792
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget p2, Lio/dcloud/uts/prompt/R$style;->uni_app_uni_prompt_DialogAnimations_slideWindow:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_11d
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 759
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "showActionSheet:fail cancel"

    invoke-direct {v0, v1, v2}, Luts/sdk/modules/DCloudUniPrompt/PromptErrorImpl;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v1

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_1b
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 762
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v1

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :cond_30
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->setComplete(Lkotlin/jvm/functions/Function1;)V

    .line 764
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getCancel()Landroidx/appcompat/widget/AppCompatTextView;
    .registers 2

    .line 753
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->cancel:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "cancel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostActivity()Landroid/app/Activity;
    .registers 2

    .line 750
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "hostActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;
    .registers 2

    .line 751
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "hostStyle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineCancel()Landroidx/appcompat/widget/LinearLayoutCompat;
    .registers 2

    .line 757
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->lineCancel:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "lineCancel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineContent()Landroidx/appcompat/widget/LinearLayoutCompat;
    .registers 2

    .line 756
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->lineContent:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "lineContent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineTitle()Landroidx/appcompat/widget/LinearLayoutCompat;
    .registers 2

    .line 755
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->lineTitle:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "lineTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMyRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 754
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->myRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "myRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Landroidx/appcompat/widget/AppCompatTextView;
    .registers 2

    .line 752
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->title:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "title"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCancel(Landroidx/appcompat/widget/AppCompatTextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->cancel:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public setHostActivity(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->hostActivity:Landroid/app/Activity;

    return-void
.end method

.method public setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    return-void
.end method

.method public setLineCancel(Landroidx/appcompat/widget/LinearLayoutCompat;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->lineCancel:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method

.method public setLineContent(Landroidx/appcompat/widget/LinearLayoutCompat;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->lineContent:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method

.method public setLineTitle(Landroidx/appcompat/widget/LinearLayoutCompat;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->lineTitle:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method

.method public setMyRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->myRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setTitle(Landroidx/appcompat/widget/AppCompatTextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UniActionSheet;->title:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method
