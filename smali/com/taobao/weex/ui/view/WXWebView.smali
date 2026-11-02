###### Class com.taobao.weex.ui.view.WXWebView (com.taobao.weex.ui.view.WXWebView)
.class public Lcom/taobao/weex/ui/view/WXWebView;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;
    }
.end annotation


# static fields
.field private static final BRIDGE_NAME:Ljava/lang/String; = "__WEEX_WEB_VIEW_BRIDGE"

.field private static final DOWNGRADE_JS_INTERFACE:Z

.field private static final POST_MESSAGE:I = 0x1

.field private static final SDK_VERSION:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageHandler:Landroid/os/Handler;

.field private mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

.field private mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

.field private mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

.field private mOrigin:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowLoading:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    .line 15
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    return-object p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showWebView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateJS(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_c

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->openJSEnabled(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 11
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$1;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$2;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 106
    sget-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    if-nez v0, :cond_3a

    .line 107
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$3;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    const-string v1, "__WEEX_WEB_VIEW_BRIDGE"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    if-eqz v0, :cond_3a

    .line 3
    :try_start_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "data"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p1, "origin"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string/jumbo p1, "type"

    const-string p2, "message"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    .line 8
    iput p2, p1, Landroid/os/Message;->what:I

    .line 9
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_32
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_8 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3a
    return-void
.end method

.method private showProgressBar(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    :goto_c
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private showWebView(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 6
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 7
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    .line 8
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .line 9
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    :cond_2b
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 8
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V

    .line 13
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    .line 15
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    new-instance v1, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;-><init>(Lcom/taobao/weex/ui/view/WXWebView;Lcom/taobao/weex/ui/view/WXWebView$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public goBack()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public goForward()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    const/4 v6, 0x0

    const-string/jumbo v4, "text/html"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .registers 6

    const-string v0, "javascript:(function () {var initData = "

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 4
    :cond_9
    :try_start_9
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 5
    const-string/jumbo v2, "type"

    const-string v3, "message"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string p1, "origin"

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";try {var event = new MessageEvent(\'message\', initData);window.dispatchEvent(event);} catch (e) {}})();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_3a
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_9 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reload()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-void
.end method

.method public setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    return-void
.end method

.method public setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-void
.end method

.method public setShowLoading(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXWebView.AnonymousClass1 (com.taobao.weex.ui.view.WXWebView$1)
.class Lcom/taobao/weex/ui/view/WXWebView$1;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-interface {v0, p2, v1, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageFinish(Ljava/lang/String;ZZ)V

    .line 6
    :cond_30
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:(window.postMessage = function(message, targetOrigin) {if (message == null || !targetOrigin) return;"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/taobao/weex/ui/view/WXWebView;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 10
    const-string v0, "prompt(\'__WEEX_WEB_VIEW_BRIDGE://postMessage?message=\' + JSON.stringify(message) + \'&targetOrigin=\' + targetOrigin)"

    goto :goto_4c

    .line 11
    :cond_4a
    const-string v0, "__WEEX_WEB_VIEW_BRIDGE.postMessage(JSON.stringify(message), targetOrigin);"

    :goto_4c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "})"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$400(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onPageStarted "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "tag"

    invoke-static {p3, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageStart(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "page error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "http error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "ssl error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageOverride "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tag"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.taobao.weex.ui.view.WXWebView.AnonymousClass2 (com.taobao.weex.ui.view.WXWebView$2)
.class Lcom/taobao/weex/ui/view/WXWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 12

    .line 1
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "__WEEX_WEB_VIEW_BRIDGE"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string p2, "postMessage"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 5
    const-string p1, "message"

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    const-string/jumbo p2, "targetOrigin"

    invoke-virtual {v0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object p3, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p3, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string/jumbo p1, "success"

    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_3a

    .line 10
    :cond_35
    const-string p1, "fail"

    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :goto_3a
    const/4 p1, 0x1

    return p1

    :cond_3c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 14
    invoke-super/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne p2, v2, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-static {p1, v3}, Lcom/taobao/weex/ui/view/WXWebView;->access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    if-eq p2, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageProgressChanged "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tag"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 3
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

###### Class com.taobao.weex.ui.view.WXWebView.AnonymousClass3 (com.taobao.weex.ui.view.WXWebView$3)
.class Lcom/taobao/weex/ui/view/WXWebView$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$3;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$3;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXWebView.MessageHandler (com.taobao.weex.ui.view.WXWebView$MessageHandler)
.class Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;
.super Landroid/os/Handler;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mWv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/view/WXWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;Lcom/taobao/weex/ui/view/WXWebView$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    goto :goto_32

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;->onMessage(Ljava/util/Map;)V

    :cond_32
    :goto_32
    return-void
.end method
