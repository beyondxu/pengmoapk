###### Class io.dcloud.feature.weex.adapter.JSExceptionAdapter (io.dcloud.feature.weex.adapter.JSExceptionAdapter)
.class public Lio/dcloud/feature/weex/adapter/JSExceptionAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJSException(Lcom/taobao/weex/common/WXJSExceptionInfo;)V
    .registers 4

    if-eqz p1, :cond_46

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    const-string v1, "__UNI__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_46

    .line 4
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportJSException >>>> exception function:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getFunction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getException()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    const-string v0, "__ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 7
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_41
    const-string v0, "ERROR"

    invoke-static {p1, v0}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void
.end method
