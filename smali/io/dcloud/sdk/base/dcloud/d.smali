###### Class io.dcloud.sdk.base.dcloud.d (io.dcloud.sdk.base.dcloud.d)
.class public Lio/dcloud/sdk/base/dcloud/d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/d;->b:Landroid/view/ViewGroup;

    .line 7
    :cond_16
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/d;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 27
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p1

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, p1

    .line 29
    const-string v3, "e218SWRkZ39OYWRtSWtrbXt7"

    invoke-static {v3}, Lio/dcloud/p/s4;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1}, Lio/dcloud/sdk/core/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 32
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    new-instance v0, Lio/dcloud/sdk/base/dcloud/d$a;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/base/dcloud/d$a;-><init>(Lio/dcloud/sdk/base/dcloud/d;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    invoke-direct {p0}, Lio/dcloud/sdk/base/dcloud/d;->a()V

    .line 80
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    new-instance v0, Lio/dcloud/sdk/base/dcloud/d$b;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/base/dcloud/d$b;-><init>(Lio/dcloud/sdk/base/dcloud/d;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method private a()V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.d.a (io.dcloud.sdk.base.dcloud.d$a)
.class Lio/dcloud/sdk/base/dcloud/d$a;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/d;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/d$a;->a:Lio/dcloud/sdk/base/dcloud/d;

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

    const-string v0, "adh"

    invoke-static {v0, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1388

    const/16 v0, 0x4e20

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/sdk/base/dcloud/c;->a(II)I

    move-result p1

    .line 5
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/d$a;->a:Lio/dcloud/sdk/base/dcloud/d;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/d;->b:Landroid/view/ViewGroup;

    new-instance v1, Lio/dcloud/sdk/base/dcloud/d$a$a;

    invoke-direct {v1, p0, p2}, Lio/dcloud/sdk/base/dcloud/d$a$a;-><init>(Lio/dcloud/sdk/base/dcloud/d$a;Ljava/lang/String;)V

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    if-eqz p2, :cond_c

    const/4 p1, 0x0

    .line 1
    new-array p3, p1, [Ljava/lang/Class;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "proceed"

    invoke-static {p2, v0, p3, p1}, Lio/dcloud/sdk/core/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
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

###### Class io.dcloud.sdk.base.dcloud.d.a.RunnableC0076a (io.dcloud.sdk.base.dcloud.d$a$a)
.class Lio/dcloud/sdk/base/dcloud/d$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/d$a;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/sdk/base/dcloud/d$a;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/d$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/d$a$a;->b:Lio/dcloud/sdk/base/dcloud/d$a;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/d$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/d$a$a;->b:Lio/dcloud/sdk/base/dcloud/d$a;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/d$a;->a:Lio/dcloud/sdk/base/dcloud/d;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_9

    goto :goto_32

    .line 4
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished-remove--url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/d$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adh"

    invoke-static {v1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/d$a$a;->b:Lio/dcloud/sdk/base/dcloud/d$a;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/d$a;->a:Lio/dcloud/sdk/base/dcloud/d;

    iget-object v1, v0, Lio/dcloud/sdk/base/dcloud/d;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_32

    .line 6
    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/d$a$a;->b:Lio/dcloud/sdk/base/dcloud/d$a;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/d$a;->a:Lio/dcloud/sdk/base/dcloud/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/sdk/base/dcloud/d;->a:Landroid/webkit/WebView;

    :cond_32
    :goto_32
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.d.b (io.dcloud.sdk.base.dcloud.d$b)
.class Lio/dcloud/sdk/base/dcloud/d$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/d;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/d$b;->a:Lio/dcloud/sdk/base/dcloud/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    return-void
.end method
