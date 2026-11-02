###### Class com.taobao.weex.common.WXInstanceWrap (com.taobao.weex.common.WXInstanceWrap)
.class public Lcom/taobao/weex/common/WXInstanceWrap;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_31

    if-eqz p3, :cond_19

    .line 3
    const-string v1, "downgrade_to_root"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4
    :goto_e
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getParentInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 5
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getParentInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    goto :goto_e

    .line 8
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method
