###### Class io.dcloud.feature.weex.extend.DCCoverImageComponent (io.dcloud.feature.weex.extend.DCCoverImageComponent)
.class public Lio/dcloud/feature/weex/extend/DCCoverImageComponent;
.super Lcom/taobao/weex/ui/component/WXImage;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    .line 3
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    .line 6
    new-instance p1, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;-><init>(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    return p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    return p0
.end method


# virtual methods
.method synthetic lambda$onImageFinish$0$io-dcloud-feature-weex-extend-DCCoverImageComponent()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public onImageFinish(ZLjava/util/Map;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->onImageFinish(ZLjava/util/Map;)V

    .line 2
    const-string p1, "width"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    .line 3
    const-string p1, "height"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 5
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance p2, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)V

    invoke-virtual {p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_31
    return-void
.end method

.method protected setImage(Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1, p2}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCCoverImageComponent.AnonymousClass1 (io.dcloud.feature.weex.extend.DCCoverImageComponent$1)
.class Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;
.super Lio/dcloud/feature/uniapp/layout/UniContentBoxMeasurement;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCCoverImageComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-direct {p0}, Lio/dcloud/feature/uniapp/layout/UniContentBoxMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutAfter(FF)V
    .registers 3

    return-void
.end method

.method public layoutBefore()V
    .registers 1

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 5

    if-eqz p3, :cond_10

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 2
    :cond_10
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->access$000(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    :cond_19
    if-nez p4, :cond_24

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->access$100(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    :cond_24
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCCoverImageComponent$$ExternalSyntheticLambda0 (io.dcloud.feature.weex.extend.DCCoverImageComponent$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/feature/weex/extend/DCCoverImageComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->lambda$onImageFinish$0$io-dcloud-feature-weex-extend-DCCoverImageComponent()V

    return-void
.end method
