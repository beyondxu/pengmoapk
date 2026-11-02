###### Class io.dcloud.feature.weex_text.DCWXText (io.dcloud.feature.weex_text.DCWXText)
.class public Lio/dcloud/feature/weex_text/DCWXText;
.super Lcom/taobao/weex/ui/component/WXText;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_text/DCWXText$Creator;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 2
    new-instance p1, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method


# virtual methods
.method public setSelectable(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "selectable"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXTextView;->enableCopy(Z)V

    return-void
.end method

###### Class io.dcloud.feature.weex_text.DCWXText.Creator (io.dcloud.feature.weex_text.DCWXText$Creator)
.class public Lio/dcloud/feature/weex_text/DCWXText$Creator;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_text/DCWXText;
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
    new-instance v0, Lio/dcloud/feature/weex_text/DCWXText;

    invoke-direct {v0, p1, p2, p3}, Lio/dcloud/feature/weex_text/DCWXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method
