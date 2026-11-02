###### Class com.taobao.weex.ui.component.WXText (com.taobao.weex.ui.component.WXText)
.class public Lcom/taobao/weex/ui/component/WXText;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/flat/FlatComponent;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXText$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/WXTextView;",
        ">;",
        "Lcom/taobao/weex/ui/flat/FlatComponent<",
        "Lcom/taobao/weex/ui/flat/widget/TextWidget;",
        ">;"
    }
.end annotation


# instance fields
.field private mFontFamily:Ljava/lang/String;

.field private mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

.field private mTypefaceObserver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 3
    new-instance p1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-direct {p1, p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXText;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXText;->mFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXText;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXText;->forceRelayout()V

    return-void
.end method

.method private forceRelayout()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXText$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXText$2;-><init>(Lcom/taobao/weex/ui/component/WXText;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerTypefaceObserver(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2
    const-string p1, "WXText"

    const-string v0, "ApplicationContent is null on register typeface observer"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_e
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXText;->mFontFamily:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_15

    return-void

    .line 10
    :cond_15
    new-instance p1, Lcom/taobao/weex/ui/component/WXText$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXText$1;-><init>(Lcom/taobao/weex/ui/component/WXText;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    .line 35
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "type_face_available"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 7
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_25
    const-string p1, "black"

    return-object p1
.end method

.method protected createViewImpl()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXText;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    :cond_a
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_24

    .line 3
    const-string v0, "WXText"

    const-string v1, "Unregister the typeface observer"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    :cond_24
    return-void
.end method

.method public getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/TextWidget;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

    if-nez v0, :cond_13

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/flat/widget/TextWidget;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/ui/flat/widget/TextWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

    .line 5
    :cond_13
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

    return-object v0
.end method

.method public bridge synthetic getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/TextWidget;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;
    .registers 3

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXTextView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXTextView;->holdComponent(Lcom/taobao/weex/ui/component/WXText;)V

    return-object v0
.end method

.method public isVirtualComponent()Z
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXText;->promoteToView(Z)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected layoutDirectionDidChanged(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXText;->forceRelayout()V

    return-void
.end method

.method public promoteToView(Z)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {v0, p0, p1, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->promoteToView(Lcom/taobao/weex/ui/component/WXComponent;ZLjava/lang/Class;)Z

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 2
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXText;

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getExtra()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->updateExtra(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXTextView;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setAriaLabel(Ljava/lang/String;)V

    :cond_b
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

    sparse-switch v0, :sswitch_data_a8

    goto/16 :goto_96

    :sswitch_11
    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_96

    :cond_1b
    const/16 v2, 0xa

    goto/16 :goto_96

    :sswitch_1f
    const-string/jumbo v0, "textOverflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_96

    :cond_2a
    const/16 v2, 0x9

    goto/16 :goto_96

    :sswitch_2e
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_96

    :cond_39
    const/16 v2, 0x8

    goto/16 :goto_96

    :sswitch_3d
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_96

    :cond_46
    const/4 v2, 0x7

    goto :goto_96

    :sswitch_48
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_96

    :cond_51
    const/4 v2, 0x6

    goto :goto_96

    :sswitch_53
    const-string v0, "lineHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_96

    :cond_5c
    const/4 v2, 0x5

    goto :goto_96

    :sswitch_5e
    const-string v0, "fontWeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_96

    :cond_67
    const/4 v2, 0x4

    goto :goto_96

    :sswitch_69
    const-string/jumbo v0, "textDecoration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_96

    :cond_73
    const/4 v2, 0x3

    goto :goto_96

    :sswitch_75
    const-string/jumbo v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_96

    :cond_7f
    const/4 v2, 0x2

    goto :goto_96

    :sswitch_81
    const-string v0, "fontFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_96

    :cond_8a
    const/4 v2, 0x1

    goto :goto_96

    :sswitch_8c
    const-string v0, "fontStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_96

    :cond_95
    const/4 v2, 0x0

    :goto_96
    packed-switch v2, :pswitch_data_d6

    .line 19
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_9e
    if-eqz p2, :cond_a7

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->registerTypefaceObserver(Ljava/lang/String;)V

    :cond_a7
    :pswitch_a7
    return v1

    :sswitch_data_a8
    .sparse-switch
        -0x5c71855e -> :sswitch_8c
        -0x48ff636d -> :sswitch_81
        -0x3f826a28 -> :sswitch_75
        -0x3468fa43 -> :sswitch_69
        -0x2bc67c59 -> :sswitch_5e
        -0x1ebe99c5 -> :sswitch_53
        0x5a72f63 -> :sswitch_48
        0x6234eff -> :sswitch_3d
        0x6ac9171 -> :sswitch_2e
        0xf94e04f -> :sswitch_1f
        0x15caa0f0 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_9e
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
    .end packed-switch
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->updateExtra(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Landroid/text/Layout;

    if-eqz v0, :cond_41

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/text/Layout;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXText;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_19

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/TextWidget;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/flat/widget/TextWidget;->updateTextDrawable(Landroid/text/Layout;)V

    return-void

    .line 6
    :cond_19
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXTextView;->setTextLayout(Landroid/text/Layout;)V

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_41
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXText.AnonymousClass1 (com.taobao.weex.ui.component.WXText$1)
.class Lcom/taobao/weex/ui/component/WXText$1;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXText;->registerTypefaceObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXText;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const-string p1, "fontFamily"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXText;->access$000(Lcom/taobao/weex/ui/component/WXText;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_61

    .line 6
    :cond_13
    invoke-static {p1}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 7
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_61

    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_61

    .line 8
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXTextView;

    .line 9
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 11
    invoke-virtual {p2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_48

    .line 13
    :cond_41
    const-string p1, "WXText"

    const-string p2, "Layout not created"

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_48
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->markDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXText;->access$100(Lcom/taobao/weex/ui/component/WXText;)V

    :cond_61
    :goto_61
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXText.AnonymousClass2 (com.taobao.weex.ui.component.WXText$2)
.class Lcom/taobao/weex/ui/component/WXText$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXText;->forceRelayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXText;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXText$2;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText$2;->this$0:Lcom/taobao/weex/ui/component/WXText;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    instance-of v1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-virtual {v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->forceRelayout()V

    :cond_d
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXText.Creator (com.taobao.weex.ui.component.WXText$Creator)
.class public Lcom/taobao/weex/ui/component/WXText$Creator;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/component/WXText;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method
