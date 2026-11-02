###### Class io.dcloud.common.util.ErrorDialogUtil (io.dcloud.common.util.ErrorDialogUtil)
.class public Lio/dcloud/common/util/ErrorDialogUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/util/ErrorDialogUtil;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/ErrorDialogUtil;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static checkAppKeyErrorTips(Landroid/app/Activity;)V
    .registers 5

    .line 1
    sget v0, Lio/dcloud/base/R$string;->dcloud_offline_fail_tips:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isNavigationBarExist(Landroid/app/Activity;)Z

    move-result v1

    .line 4
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->getAppDarkMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, -0x3e7

    goto :goto_15

    :cond_13
    const/16 v2, -0x3e6

    .line 7
    :goto_15
    new-instance v3, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    invoke-direct {v3, p0, v2, v1}, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 8
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/dcloud/common/util/ErrorDialogUtil$7;

    invoke-direct {v0}, Lio/dcloud/common/util/ErrorDialogUtil$7;-><init>()V

    const/4 v1, -0x2

    invoke-virtual {v3, v1, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 15
    new-instance p0, Lio/dcloud/common/util/ErrorDialogUtil$8;

    invoke-direct {p0}, Lio/dcloud/common/util/ErrorDialogUtil$8;-><init>()V

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 p0, 0x0

    .line 24
    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 25
    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static getLossDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 7

    .line 1
    sget-object v0, Lio/dcloud/common/util/ErrorDialogUtil;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_a
    sget-object v0, Lio/dcloud/common/util/ErrorDialogUtil;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isNavigationBarExist(Landroid/app/Activity;)Z

    move-result v0

    .line 8
    new-instance v1, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    sget v2, Lio/dcloud/PdrR;->FEATURE_LOSS_STYLE:I

    invoke-direct {v1, p0, v2, v0}, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 9
    const-string v0, "HTML5+ Runtime"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x108009b

    .line 10
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 11
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 12
    sget p1, Lio/dcloud/base/R$string;->dcloud_common_view_details:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/dcloud/common/util/ErrorDialogUtil$1;

    invoke-direct {v0, p2, p0}, Lio/dcloud/common/util/ErrorDialogUtil$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    const/4 p2, -0x1

    invoke-virtual {v1, p2, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 23
    sget p1, Lio/dcloud/base/R$string;->dcloud_common_ignore:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/dcloud/common/util/ErrorDialogUtil$2;

    invoke-direct {p1}, Lio/dcloud/common/util/ErrorDialogUtil$2;-><init>()V

    const/4 p2, -0x2

    invoke-virtual {v1, p2, p0, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 29
    new-instance p0, Lio/dcloud/common/util/ErrorDialogUtil$3;

    invoke-direct {p0, p3}, Lio/dcloud/common/util/ErrorDialogUtil$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v1
.end method

.method public static getLossDialog(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 8

    .line 30
    sget-object v0, Lio/dcloud/common/util/ErrorDialogUtil;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 33
    :cond_a
    sget-object v0, Lio/dcloud/common/util/ErrorDialogUtil;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_67

    .line 34
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_67

    .line 37
    :cond_18
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNavigationBarExist(Landroid/app/Activity;)Z

    move-result v0

    .line 39
    new-instance v1, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lio/dcloud/PdrR;->FEATURE_LOSS_STYLE:I

    invoke-direct {v1, v2, v3, v0}, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 40
    const-string v0, "HTML5+ Runtime"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x108009b

    .line 41
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 42
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_view_details:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/dcloud/common/util/ErrorDialogUtil$4;

    invoke-direct {v0, p2, p0}, Lio/dcloud/common/util/ErrorDialogUtil$4;-><init>(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    const/4 p2, -0x1

    invoke-virtual {v1, p2, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lio/dcloud/base/R$string;->dcloud_common_ignore:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/dcloud/common/util/ErrorDialogUtil$5;

    invoke-direct {p1}, Lio/dcloud/common/util/ErrorDialogUtil$5;-><init>()V

    const/4 p2, -0x2

    invoke-virtual {v1, p2, p0, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    new-instance p0, Lio/dcloud/common/util/ErrorDialogUtil$6;

    invoke-direct {p0, p3}, Lio/dcloud/common/util/ErrorDialogUtil$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_67
    :goto_67
    return-object v1
.end method

.method public static showErrorTipsAlert(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isNavigationBarExist(Landroid/app/Activity;)Z

    move-result v0

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->getAppDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, -0x3e7

    goto :goto_f

    :cond_d
    const/16 v1, -0x3e6

    .line 6
    :goto_f
    new-instance v2, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    invoke-direct {v2, p0, v1, v0}, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 7
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x104000a

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x2

    invoke-virtual {v2, p1, p0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9
    new-instance p0, Lio/dcloud/common/util/ErrorDialogUtil$9;

    invoke-direct {p0}, Lio/dcloud/common/util/ErrorDialogUtil$9;-><init>()V

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 p0, 0x0

    .line 18
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    invoke-virtual {v2}, Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;->show()V

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass1 (io.dcloud.common.util.ErrorDialogUtil$1)
.class Lio/dcloud/common/util/ErrorDialogUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ErrorDialogUtil$1;->val$link:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/common/util/ErrorDialogUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string p2, "android.intent.action.VIEW"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p2, p0, Lio/dcloud/common/util/ErrorDialogUtil$1;->val$link:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lio/dcloud/common/util/ErrorDialogUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass2 (io.dcloud.common.util.ErrorDialogUtil$2)
.class Lio/dcloud/common/util/ErrorDialogUtil$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass3 (io.dcloud.common.util.ErrorDialogUtil$3)
.class Lio/dcloud/common/util/ErrorDialogUtil$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ErrorDialogUtil$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ErrorDialogUtil;->access$000()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/util/ErrorDialogUtil$3;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass4 (io.dcloud.common.util.ErrorDialogUtil$4)
.class Lio/dcloud/common/util/ErrorDialogUtil$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ErrorDialogUtil$4;->val$link:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/common/util/ErrorDialogUtil$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string p2, "android.intent.action.VIEW"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p2, p0, Lio/dcloud/common/util/ErrorDialogUtil$4;->val$link:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lio/dcloud/common/util/ErrorDialogUtil$4;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass5 (io.dcloud.common.util.ErrorDialogUtil$5)
.class Lio/dcloud/common/util/ErrorDialogUtil$5;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass6 (io.dcloud.common.util.ErrorDialogUtil$6)
.class Lio/dcloud/common/util/ErrorDialogUtil$6;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ErrorDialogUtil$6;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ErrorDialogUtil;->access$000()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/util/ErrorDialogUtil$6;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass7 (io.dcloud.common.util.ErrorDialogUtil$7)
.class Lio/dcloud/common/util/ErrorDialogUtil$7;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->checkAppKeyErrorTips(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass8 (io.dcloud.common.util.ErrorDialogUtil$8)
.class Lio/dcloud/common/util/ErrorDialogUtil$8;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->checkAppKeyErrorTips(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.util.ErrorDialogUtil.AnonymousClass9 (io.dcloud.common.util.ErrorDialogUtil$9)
.class Lio/dcloud/common/util/ErrorDialogUtil$9;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ErrorDialogUtil;->showErrorTipsAlert(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
