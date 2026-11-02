###### Class io.dcloud.feature.weex.adapter.ScalableViewComponent (io.dcloud.feature.weex.adapter.ScalableViewComponent)
.class public Lio/dcloud/feature/weex/adapter/ScalableViewComponent;
.super Lcom/taobao/weex/ui/component/WXDiv;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/ScalableViewComponent$Ceator;
    }
.end annotation


# instance fields
.field private isScalable:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .registers 3

    .line 2
    new-instance v0, Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex/adapter/ScalableView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->holdComponent(Lcom/taobao/weex/ui/component/WXDiv;)V

    return-object v0
.end method

.method public isScalable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable:Z

    return v0
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual/range {p0 .. p7}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXFrameLayout;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/WXFrameLayout;IIIIII)V
    .registers 17

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 3
    invoke-super/range {v1 .. v8}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    return-void

    .line 5
    :cond_13
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    return-void
.end method

.method public setScalable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable:Z

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.ScalableViewComponent.Ceator (io.dcloud.feature.weex.adapter.ScalableViewComponent$Ceator)
.class public Lio/dcloud/feature/weex/adapter/ScalableViewComponent$Ceator;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/ScalableViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ceator"
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
    new-instance v0, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;

    invoke-direct {v0, p1, p2, p3}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method
