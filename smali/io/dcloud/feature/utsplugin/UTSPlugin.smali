###### Class io.dcloud.feature.utsplugin.UTSPlugin (io.dcloud.feature.utsplugin.UTSPlugin)
.class public Lio/dcloud/feature/utsplugin/UTSPlugin;
.super Ljava/lang/Object;
.source "UTSPlugin.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPlugin(Landroid/content/Context;)V
    .registers 2

    .line 14
    :try_start_0
    const-string p0, "UTS-Proxy"

    const-class v0, Lio/dcloud/feature/utsplugin/ProxyModule;

    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_7
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXException;->printStackTrace()V

    return-void
.end method
