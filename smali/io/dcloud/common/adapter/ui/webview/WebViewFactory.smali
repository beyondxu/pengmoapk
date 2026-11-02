###### Class io.dcloud.common.adapter.ui.webview.WebViewFactory (io.dcloud.common.adapter.ui.webview.WebViewFactory)
.class public Lio/dcloud/common/adapter/ui/webview/WebViewFactory;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static isAllowFileAccessFromFileURLs:Z

.field private static isLoadOtherTimeOut:Z

.field private static isOther:Z

.field private static isOtherInitSuccess:Z

.field private static isOtherInitialised:Z

.field private static isSysWebViewCreate:Z

.field private static otherCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field private static otherDelyedRunnable:Ljava/lang/Runnable;

.field private static sOtherWebViewFactory:Lio/dcloud/common/DHInterface/IWebViewFactory;

.field public static sStreamPermissionRequest:Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;

.field public static sUsePermissionWebviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/adapter/ui/webview/PerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static webViewInstallListener:Lio/dcloud/common/DHInterface/IWebViewInstallListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sUsePermissionWebviews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sStreamPermissionRequest:Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOther:Z

    .line 6
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isSysWebViewCreate:Z

    .line 8
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitSuccess:Z

    .line 9
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitialised:Z

    .line 13
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isLoadOtherTimeOut:Z

    .line 17
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v0, :cond_1c

    .line 18
    invoke-static {}, Landroid/webkit/WebView;->enableSlowWholeDocumentDraw()V

    .line 38
    :cond_1c
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory$1;

    invoke-direct {v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory$1;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherDelyedRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 258
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isAllowFileAccessFromFileURLs:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isLoadOtherTimeOut:Z

    return p0
.end method

.method static synthetic access$100()Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object v0
.end method

.method static synthetic access$102(Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method public static getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebViewFactory;->getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 2
    :cond_f
    const-string v0, ""

    .line 5
    :goto_11
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 6
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object v0
.end method

.method private static getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isIsOtherInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sOtherWebViewFactory:Lio/dcloud/common/DHInterface/IWebViewFactory;

    if-eqz v0, :cond_f

    sget-boolean v1, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isSysWebViewCreate:Z

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;)Lio/dcloud/common/adapter/ui/webview/DCWebView;
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IWebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isSysWebViewCreate:Z

    .line 6
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/SysWebView;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/adapter/ui/webview/SysWebView;-><init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaWebview;)V

    :cond_1a
    return-object v0
.end method

.method public static getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/adapter/ui/webview/DCWebView;
    .registers 4

    .line 7
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 8
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/dcloud/common/DHInterface/IWebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isSysWebViewCreate:Z

    .line 12
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/SysWebView;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView;-><init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V

    :cond_1a
    return-object v0
.end method

.method public static getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)Lio/dcloud/common/adapter/ui/webview/DCWebView;
    .registers 4

    .line 13
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 14
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getOtherWebViewFactory()Lio/dcloud/common/DHInterface/IWebViewFactory;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/dcloud/common/DHInterface/IWebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isSysWebViewCreate:Z

    .line 18
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/SysWebView;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView;-><init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)V

    :cond_1a
    return-object v0
.end method

.method public static getWebViewInstallListener()Lio/dcloud/common/DHInterface/IWebViewInstallListener;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->webViewInstallListener:Lio/dcloud/common/DHInterface/IWebViewInstallListener;

    return-object v0
.end method

.method public static getWebViewUserAgentVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebViewUserAgentVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWebViewUserAgentVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 4
    invoke-static {p0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    .line 6
    :cond_14
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    .line 8
    :cond_16
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 9
    array-length p1, p0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_1f
    const-string v1, "0"

    if-lez p1, :cond_41

    .line 10
    aget-object v2, p0, p1

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chrome"

    invoke-static {v3, v4}, Lio/dcloud/common/util/PdrUtil;->isContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 12
    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 13
    array-length p1, p0

    if-le p1, v0, :cond_3d

    .line 14
    aget-object p0, p0, v0

    return-object p0

    :cond_3d
    return-object v1

    :cond_3e
    add-int/lit8 p1, p1, -0x1

    goto :goto_1f

    :cond_41
    return-object v1
.end method

.method public static initOther(ZJ)V
    .registers 5

    .line 1
    sput-boolean p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOther:Z

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_d

    .line 4
    sget-object p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherDelyedRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_d
    return-void
.end method

.method public static isIsLoadOtherTimeOut()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isLoadOtherTimeOut:Z

    return v0
.end method

.method public static isIsOtherInitSuccess()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitSuccess:Z

    return v0
.end method

.method public static isOther()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOther:Z

    return v0
.end method

.method public static isOtherInitialised()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitialised:Z

    return v0
.end method

.method public static openJSEnabled(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 6

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v3

    .line 6
    const-string v2, "e218Qml+aVtremF4fEtpZkd4bWZfYWZsZ397SX18Z2VpfGFraWRkcQ=="

    if-eqz p1, :cond_1b

    .line 7
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_1b
    invoke-static {v2}, Lio/dcloud/p/e1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    const-string v3, "e218Qml+aVtremF4fE1maWpkbWw="

    if-eqz p1, :cond_2c

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object p1

    invoke-interface {p1, v3}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    :cond_2c
    invoke-static {v3}, Lio/dcloud/p/e1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_30
    invoke-static {p0, v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p0, p1, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeDelayRunnable()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherDelyedRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherDelyedRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method public static resetSysWebViewState()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isSysWebViewCreate:Z

    return-void
.end method

.method public static resetUA()V
    .registers 1

    .line 1
    const-string v0, ""

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static setFileAccess(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;Z)V
    .registers 10

    if-eqz p0, :cond_60

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_60

    const/4 v0, 0x1

    .line 3
    :try_start_9
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 7
    const-string v2, "eW9+S2ZmZX1fZGN8b3h5a2ZLaWlveXlMeGVnTGNmb19YRnkqNmEzZDg4ZmEtNGJhMC00NzlmLTk0MjItZTVhYWJlMTU4OTdiNzQ="

    const/16 v3, 0xa

    if-eqz p1, :cond_27

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v5

    invoke-interface {v5, v2, v0, v3}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 9
    :cond_27
    invoke-static {v2, v0, v3}, Lio/dcloud/p/e1;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    .line 11
    :goto_2b
    const-string v3, "eG5/SmdnZHxNYmduSmhobnh4TXlkZk1iZ25eWUd4KjZhM2Q4OGZhLTRiYTAtNDc5Zi05NDIyLWU1YWFiZTE1ODk3Yjc1"

    const/16 v5, 0xb

    if-eqz p1, :cond_3a

    .line 12
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v6

    invoke-interface {v6, v3, v0, v5}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3e

    .line 13
    :cond_3a
    invoke-static {v3, v0, v5}, Lio/dcloud/p/e1;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    .line 15
    :goto_3e
    const-string v5, "f2l4TWBgY3tKZWBpTW9vaX9/KjZhM2Q4OGZhLTRiYTAtNDc5Zi05NDIyLWU1YWFiZTE1ODk3Yjc2"

    const/16 v6, 0xc

    if-eqz p1, :cond_4d

    .line 16
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object p1

    invoke-interface {p1, v5, v0, v6}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    .line 17
    :cond_4d
    invoke-static {v5, v0, v6}, Lio/dcloud/p/e1;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_51
    sget-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isAllowFileAccessFromFileURLs:Z

    if-nez v0, :cond_57

    if-nez p2, :cond_5d

    .line 19
    :cond_57
    invoke-static {p0, v2, v1, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p0, v3, v1, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_5d
    invoke-static {p0, p1, v1, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    return-void
.end method

.method public static setFileAccess(Ljava/lang/Object;Z)V
    .registers 3

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setFileAccess(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;Z)V

    :cond_6
    return-void
.end method

.method public static setOtherCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isLoadOtherTimeOut:Z

    .line 2
    sput-object p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method public static setOtherState(ZLio/dcloud/common/DHInterface/IWebViewFactory;)V
    .registers 3

    .line 1
    sput-boolean p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitSuccess:Z

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitialised:Z

    .line 4
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_2a

    .line 5
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherDelyedRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->otherCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_23

    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_23

    :cond_1f
    const/4 p0, 0x0

    .line 13
    sput-boolean p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitSuccess:Z

    return-void

    .line 14
    :cond_23
    :goto_23
    sget-boolean p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitSuccess:Z

    if-eqz p0, :cond_2e

    .line 15
    sput-object p1, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sOtherWebViewFactory:Lio/dcloud/common/DHInterface/IWebViewFactory;

    return-void

    :cond_2a
    if-eqz p0, :cond_2e

    .line 23
    sput-object p1, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sOtherWebViewFactory:Lio/dcloud/common/DHInterface/IWebViewFactory;

    :cond_2e
    return-void
.end method

.method public static setSslHandlerState(Ljava/lang/Object;I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 1
    const-string p1, ""

    goto :goto_e

    .line 8
    :cond_9
    const-string p1, "cancel"

    goto :goto_e

    .line 9
    :cond_c
    const-string p1, "proceed"

    :goto_e
    const/4 v0, 0x0

    .line 17
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setWebViewInstallListener(Lio/dcloud/common/DHInterface/IWebViewInstallListener;)V
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->webViewInstallListener:Lio/dcloud/common/DHInterface/IWebViewInstallListener;

    return-void
.end method

.method public static verifyVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_c
    array-length v2, p0

    const/4 v3, 0x1

    if-lt v1, v2, :cond_15

    array-length v2, p1

    if-ge v1, v2, :cond_14

    goto :goto_15

    :cond_14
    return v3

    .line 5
    :cond_15
    :goto_15
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 6
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 8
    :goto_20
    array-length v4, p1

    if-ge v1, v4, :cond_2a

    .line 9
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-le v2, v4, :cond_2e

    return v3

    :cond_2e
    if-ge v2, v4, :cond_31

    return v0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebViewFactory.AnonymousClass1 (io.dcloud.common.adapter.ui.webview.WebViewFactory$1)
.class Lio/dcloud/common/adapter/ui/webview/WebViewFactory$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/webview/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$002(Z)Z

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$100()Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$100()Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$102(Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    :cond_16
    return-void
.end method
