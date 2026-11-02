###### Class io.dcloud.feature.weex_barcode.BarcodePlugin (io.dcloud.feature.weex_barcode.BarcodePlugin)
.class public Lio/dcloud/feature/weex_barcode/BarcodePlugin;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPlugin(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string p0, "barcode"

    :try_start_2
    const-class v0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 2
    const-string v0, "barcodeScan"

    const-class v1, Lio/dcloud/feature/weex_barcode/BarcodeModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 3
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-class v1, Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    invoke-virtual {v0, p0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_17
    .catch Lcom/taobao/weex/common/WXException; {:try_start_2 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
