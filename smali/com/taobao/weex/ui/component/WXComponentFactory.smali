###### Class com.taobao.weex.ui.component.WXComponentFactory (com.taobao.weex.ui.component.WXComponentFactory)
.class public Lcom/taobao/weex/ui/component/WXComponentFactory;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_77

    .line 1
    iget-object v1, p2, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_77

    .line 5
    :cond_c
    iget-object v1, p2, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/IFComponentHolder;

    move-result-object v1

    if-nez v1, :cond_59

    .line 7
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WXComponentFactory error type:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] class not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 13
    :cond_32
    const-string v1, "container"

    invoke-static {v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/IFComponentHolder;

    move-result-object v1

    if-nez v1, :cond_59

    .line 15
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_COMPONENT_NOT_REGISTER:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not registered"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "createComponent"

    invoke-static {p0, p1, v1, p2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 23
    :cond_59
    :try_start_59
    invoke-interface {v1, p0, p1, p2}, Lcom/taobao/weex/ui/ComponentCreator;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5e

    return-object p0

    :catchall_5e
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "WXComponentFactory Exception type:["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    return-object v0
.end method
