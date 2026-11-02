###### Class com.taobao.weex.ui.component.helper.WXTimeInputHelper (com.taobao.weex.ui.component.helper.WXTimeInputHelper)
.class public Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pickDate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;

    invoke-direct {v5, v0, p2}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;-><init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    return-void
.end method

.method public static pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;

    invoke-direct {v3, v0, p0}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;-><init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    const/4 p0, 0x0

    .line 6
    invoke-static {v1, v2, v3, p0}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickTime(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.helper.WXTimeInputHelper.AnonymousClass1 (com.taobao.weex.ui.component.helper.WXTimeInputHelper$1)
.class Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickDate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$target:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;->val$target:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;->val$target:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->performOnChange(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

###### Class com.taobao.weex.ui.component.helper.WXTimeInputHelper.AnonymousClass2 (com.taobao.weex.ui.component.helper.WXTimeInputHelper$2)
.class Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$target:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$target:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$target:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->performOnChange(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
