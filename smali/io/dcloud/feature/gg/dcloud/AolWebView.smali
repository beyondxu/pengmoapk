###### Class io.dcloud.feature.gg.dcloud.AolWebView (io.dcloud.feature.gg.dcloud.AolWebView)
.class public Lio/dcloud/feature/gg/dcloud/AolWebView;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field mRootView:Landroid/view/ViewGroup;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_17

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mRootView:Landroid/view/ViewGroup;

    goto :goto_27

    .line 5
    :cond_17
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mRootView:Landroid/view/ViewGroup;

    .line 7
    :goto_27
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->openJSEnabled(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;)V

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 24
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setFileAccess(Ljava/lang/Object;Z)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 27
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lio/dcloud/feature/gg/dcloud/AolWebView$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/AolWebView$1;-><init>(Lio/dcloud/feature/gg/dcloud/AolWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/AolWebView;->removeUnSafeJavascriptInterface()V

    .line 113
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lio/dcloud/feature/gg/dcloud/AolWebView$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/AolWebView$2;-><init>(Lio/dcloud/feature/gg/dcloud/AolWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method private removeUnSafeJavascriptInterface()V
    .registers 1

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolWebView.AnonymousClass1 (io.dcloud.feature.gg.dcloud.AolWebView$1)
.class Lio/dcloud/feature/gg/dcloud/AolWebView$1;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AolWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/AolWebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageFinished---url="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aol"

    invoke-static {v0, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1388

    const/16 v0, 0x4e20

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/feature/gg/dcloud/ADSim;->getRandomInt(II)I

    move-result p1

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;-><init>(Lio/dcloud/feature/gg/dcloud/AolWebView$1;Ljava/lang/String;)V

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    if-eqz p2, :cond_7f

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->untrustedca:Ljava/lang/String;

    .line 2
    const-string v1, "refuse"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void

    .line 4
    :cond_10
    const-string v1, "warning"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x1080061

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 8
    const-string v1, "\u5b89\u5168\u8b66\u544a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u6b64\u7ad9\u70b9\u5b89\u5168\u8bc1\u4e66\u5b58\u5728\u95ee\u9898,\u662f\u5426\u7ee7\u7eed?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_52

    .line 15
    :cond_50
    const-string v1, "\u6b64\u7ad9\u70b9\u5b89\u5168\u8bc1\u4e66\u5b58\u5728\u95ee\u9898,\u662f\u5426\u7ee7\u7eed?"

    .line 18
    :goto_52
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v1, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;

    invoke-direct {v1, p0, v0, p3, p2}, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;-><init>(Lio/dcloud/feature/gg/dcloud/AolWebView$1;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    invoke-virtual {v0, p3, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_7b
    const/4 p1, 0x1

    .line 38
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Ljava/lang/Object;I)V

    :cond_7f
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.feature.gg.dcloud.AolWebView.AnonymousClass1.RunnableC00431 (io.dcloud.feature.gg.dcloud.AolWebView$1$1)
.class Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AolWebView$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/gg/dcloud/AolWebView$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/AolWebView$1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;->this$1:Lio/dcloud/feature/gg/dcloud/AolWebView$1;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;->this$1:Lio/dcloud/feature/gg/dcloud/AolWebView$1;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/AolWebView$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_9

    goto :goto_32

    .line 4
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished-remove--url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aol"

    invoke-static {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;->this$1:Lio/dcloud/feature/gg/dcloud/AolWebView$1;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/AolWebView$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;

    iget-object v1, v0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_32

    .line 6
    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$1;->this$1:Lio/dcloud/feature/gg/dcloud/AolWebView$1;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/AolWebView$1;->this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/feature/gg/dcloud/AolWebView;->mWebView:Landroid/webkit/WebView;

    :cond_32
    :goto_32
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolWebView.AnonymousClass1.AnonymousClass2 (io.dcloud.feature.gg.dcloud.AolWebView$1$2)
.class Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AolWebView$1;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/gg/dcloud/AolWebView$1;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/AolWebView$1;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->this$1:Lio/dcloud/feature/gg/dcloud/AolWebView$1;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$ad:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$error:Landroid/net/http/SslError;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_e

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_e
    const/4 p1, -0x3

    if-ne p2, p1, :cond_1b

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$error:Landroid/net/http/SslError;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    return-void

    :cond_1b
    const/4 p1, -0x1

    if-ne p2, p1, :cond_29

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$handler:Landroid/webkit/SslErrorHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Ljava/lang/Object;I)V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$1$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_29
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AolWebView.AnonymousClass2 (io.dcloud.feature.gg.dcloud.AolWebView$2)
.class Lio/dcloud/feature/gg/dcloud/AolWebView$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AolWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/AolWebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AolWebView$2;->this$0:Lio/dcloud/feature/gg/dcloud/AolWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    return-void
.end method
