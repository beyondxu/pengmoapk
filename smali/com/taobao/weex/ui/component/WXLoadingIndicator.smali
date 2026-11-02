###### Class com.taobao.weex.ui.component.WXLoadingIndicator (com.taobao.weex.ui.component.WXLoadingIndicator)
.class public Lcom/taobao/weex/ui/component/WXLoadingIndicator;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATING:Ljava/lang/String; = "animating"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method private setAnimatingSp(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->start()V

    return-void

    .line 3
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->stop()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->destory()V

    :cond_12
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
    .registers 3

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setAnimating(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "animating"
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->start()V

    return-void

    .line 3
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->stop()V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    if-eqz p1, :cond_1d

    .line 1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/high16 v0, -0x10000

    .line 2
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setColorSchemeColors([I)V

    :cond_1d
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_66

    goto :goto_30

    :sswitch_10
    const-string v0, "animating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_30

    :cond_19
    const/4 v2, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_30

    :cond_24
    const/4 v2, 0x1

    goto :goto_30

    :sswitch_26
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_74

    .line 18
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :pswitch_39
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->setAnimating(Z)V

    :cond_46
    return v1

    .line 22
    :pswitch_47
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 24
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->setColor(Ljava/lang/String;)V

    :cond_50
    return v1

    .line 33
    :pswitch_51
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setShowArrow(Z)V

    return v1

    nop

    :sswitch_data_66
    .sparse-switch
        0x58c7409 -> :sswitch_26
        0x5a72f63 -> :sswitch_1b
        0x42ab1b5e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_51
        :pswitch_47
        :pswitch_39
    .end packed-switch
.end method
