###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent (io.dcloud.feature.weex.adapter.FrescoImageComponent)
.class public Lio/dcloud/feature/weex/adapter/FrescoImageComponent;
.super Lcom/taobao/weex/ui/component/WXImage;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;
    }
.end annotation


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mResizeMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 2
    const-string p1, "scaleToFill"

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    .line 5
    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    .line 9
    new-instance p1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;

    invoke-direct {p1, p0, p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    return p0
.end method

.method private setStyleHeight(F)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;F)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setStyleWidth(F)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;F)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBorderRadius()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 5
    new-instance v3, Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v4

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderInnerRadius(Landroid/graphics/RectF;)[F

    move-result-object v0

    goto :goto_3e

    :cond_22
    const/16 v0, 0x8

    .line 8
    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v2, v0, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 10
    :goto_3e
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii([F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 4

    .line 2
    new-instance v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    return-object v0
.end method

.method public onImageFinish(ZLjava/util/Map;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->onImageFinish(ZLjava/util/Map;)V

    if-eqz p2, :cond_88

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "heightFix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "height"

    const-string v2, "width"

    if-nez v0, :cond_54

    const-string v0, "widthFix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_88

    .line 5
    :cond_1f
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    .line 8
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 9
    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_88

    .line 11
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setStyleHeight(F)V

    return-void

    .line 16
    :cond_54
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    .line 17
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    .line 19
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 20
    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 21
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_88

    .line 22
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setStyleWidth(F)V

    :cond_88
    :goto_88
    return-void
.end method

.method public setFadeAnim(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fadeShow"
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->setFadeShow(Z)V

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

    sparse-switch v0, :sswitch_data_58

    goto :goto_30

    :sswitch_10
    const-string v0, "resizeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_30

    :cond_19
    const/4 v2, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_30

    :cond_24
    const/4 v2, 0x1

    goto :goto_30

    :sswitch_26
    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_66

    .line 21
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 22
    :pswitch_39
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 24
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_42
    return v1

    .line 34
    :pswitch_43
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 36
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_4c
    return v1

    .line 37
    :pswitch_4d
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 39
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_56
    return v1

    nop

    :sswitch_data_58
    .sparse-switch
        -0x37b2634c -> :sswitch_26
        0x3339a3 -> :sswitch_1b
        0x7a2cd077 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_43
        :pswitch_39
    .end packed-switch
.end method

.method public setResizeMode(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    .line 2
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_126

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_130

    goto/16 :goto_d9

    :sswitch_20
    const-string v2, "contain"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_d9

    :cond_2a
    const/16 v3, 0xe

    goto/16 :goto_d9

    :sswitch_2e
    const-string v2, "bottom right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto/16 :goto_d9

    :cond_38
    const/16 v3, 0xd

    goto/16 :goto_d9

    :sswitch_3c
    const-string v2, "aspectFill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto/16 :goto_d9

    :cond_46
    const/16 v3, 0xc

    goto/16 :goto_d9

    :sswitch_4a
    const-string v2, "right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto/16 :goto_d9

    :cond_54
    const/16 v3, 0xb

    goto/16 :goto_d9

    :sswitch_58
    const-string v2, "cover"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto/16 :goto_d9

    :cond_62
    const/16 v3, 0xa

    goto/16 :goto_d9

    :sswitch_66
    const-string v2, "left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto/16 :goto_d9

    :cond_70
    const/16 v3, 0x9

    goto/16 :goto_d9

    :sswitch_74
    const-string v2, "top"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    goto/16 :goto_d9

    :cond_7e
    const/16 v3, 0x8

    goto/16 :goto_d9

    :sswitch_82
    const-string v2, "bottom left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_d9

    :cond_8b
    const/4 v3, 0x7

    goto :goto_d9

    :sswitch_8d
    const-string v2, "top left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto :goto_d9

    :cond_96
    const/4 v3, 0x6

    goto :goto_d9

    :sswitch_98
    const-string v2, "aspectFit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a1

    goto :goto_d9

    :cond_a1
    const/4 v3, 0x5

    goto :goto_d9

    :sswitch_a3
    const-string v2, "center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ac

    goto :goto_d9

    :cond_ac
    const/4 v3, 0x4

    goto :goto_d9

    :sswitch_ae
    const-string v2, "bottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    goto :goto_d9

    :cond_b7
    const/4 v3, 0x3

    goto :goto_d9

    :sswitch_b9
    const-string v2, "widthFix"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c2

    goto :goto_d9

    :cond_c2
    const/4 v3, 0x2

    goto :goto_d9

    :sswitch_c4
    const-string v2, "heightFix"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cd

    goto :goto_d9

    :cond_cd
    const/4 v3, 0x1

    goto :goto_d9

    :sswitch_cf
    const-string v2, "top right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d8

    goto :goto_d9

    :cond_d8
    const/4 v3, 0x0

    :goto_d9
    const/high16 p1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    packed-switch v3, :pswitch_data_16e

    goto :goto_126

    .line 10
    :pswitch_e2
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_126

    .line 49
    :pswitch_e5
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 50
    :pswitch_eb
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_126

    .line 65
    :pswitch_ee
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 66
    :pswitch_f4
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_126

    .line 93
    :pswitch_f7
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v2, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 94
    :pswitch_fd
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, v2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 115
    :pswitch_103
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v2, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 116
    :pswitch_109
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v2, v2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 117
    :pswitch_10f
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_126

    .line 129
    :pswitch_112
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 130
    :pswitch_118
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_126

    .line 155
    :pswitch_11e
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_126

    .line 156
    :pswitch_121
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, v2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    .line 172
    :cond_126
    :goto_126
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    return-void

    :sswitch_data_130
    .sparse-switch
        -0x648e7c6f -> :sswitch_cf
        -0x603b6292 -> :sswitch_c4
        -0x52ae3791 -> :sswitch_b9
        -0x527265d5 -> :sswitch_ae
        -0x514d33ab -> :sswitch_a3
        -0x512e7f67 -> :sswitch_98
        -0x3d0fa40e -> :sswitch_8d
        -0x27c76724 -> :sswitch_82
        0x1c155 -> :sswitch_74
        0x32a007 -> :sswitch_66
        0x5a753b7 -> :sswitch_58
        0x677c21c -> :sswitch_4a
        0x2b5e91fb -> :sswitch_3c
        0x2f30e3e7 -> :sswitch_2e
        0x38b724d4 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_121
        :pswitch_11e
        :pswitch_11e
        :pswitch_118
        :pswitch_112
        :pswitch_10f
        :pswitch_109
        :pswitch_103
        :pswitch_fd
        :pswitch_f7
        :pswitch_f4
        :pswitch_ee
        :pswitch_eb
        :pswitch_e5
        :pswitch_e2
    .end packed-switch
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->updateProperties(Ljava/util/Map;)V

    .line 3
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->updateBorderRadius()V

    :cond_c
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent.AnonymousClass1 (io.dcloud.feature.weex.adapter.FrescoImageComponent$1)
.class Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

.field final synthetic val$basicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->val$basicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-direct {p0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>()V

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
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->val$basicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "flex"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureExactly:Z

    const/4 v1, 0x1

    if-nez p3, :cond_62

    .line 4
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$000(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "heightFix"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4c

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$100(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p3

    if-lez p3, :cond_4c

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$200(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p3

    if-lez p3, :cond_4c

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_4c

    .line 5
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$100(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 6
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$200(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p2

    iput p3, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    .line 7
    iput-boolean v1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureExactly:Z

    goto :goto_62

    :cond_4c
    if-nez v0, :cond_62

    .line 9
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p2

    const/high16 p3, 0x43a00000    # 320.0f

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    :cond_62
    :goto_62
    if-nez p4, :cond_b4

    .line 13
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$000(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "widthFix"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$100(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p2

    if-lez p2, :cond_9e

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$200(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p2

    if-lez p2, :cond_9e

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_9e

    .line 14
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$200(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 15
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->access$100(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    iput p2, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    .line 16
    iput-boolean v1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureExactly:Z

    return-void

    :cond_9e
    if-nez v0, :cond_b4

    .line 18
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    const/high16 p2, 0x43700000    # 240.0f

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    :cond_b4
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent.AnonymousClass2 (io.dcloud.feature.weex.adapter.FrescoImageComponent$2)
.class Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setStyleHeight(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

.field final synthetic val$height:F


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;->val$height:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;->val$height:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_1d
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent.AnonymousClass3 (io.dcloud.feature.weex.adapter.FrescoImageComponent$3)
.class Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setStyleWidth(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->val$width:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->val$width:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_1d
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent.CustomScaleType (io.dcloud.feature.weex.adapter.FrescoImageComponent$CustomScaleType)
.class public Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomScaleType"
.end annotation


# instance fields
.field private dxf:F

.field private dyf:F

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dxf:F

    .line 3
    iput p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dyf:F

    return-void
.end method


# virtual methods
.method public getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .registers 8

    int-to-float p3, p3

    .line 1
    iget-object p5, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {p5}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p5

    invoke-static {p3, p5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p5

    div-float/2addr p5, p3

    .line 3
    iget p6, p2, Landroid/graphics/Rect;->left:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, p5

    sub-float/2addr v0, p3

    iget p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dxf:F

    mul-float v0, v0, p3

    add-float/2addr p6, v0

    .line 4
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p5

    sub-float/2addr p2, p4

    iget p4, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dyf:F

    mul-float p2, p2, p4

    add-float/2addr p3, p2

    .line 6
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7
    invoke-virtual {p1, p6, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method
