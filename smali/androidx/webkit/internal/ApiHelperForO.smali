###### Class androidx.webkit.internal.ApiHelperForO (androidx.webkit.internal.ApiHelperForO)
.class public Landroidx/webkit/internal/ApiHelperForO;
.super Ljava/lang/Object;
.source "ApiHelperForO.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 1

    .line 81
    invoke-static {}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSafeBrowsingEnabled(Landroid/webkit/WebSettings;)Z
    .registers 1

    .line 54
    invoke-static {p0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/webkit/WebSettings;)Z

    move-result p0

    return p0
.end method

.method public static getWebChromeClient(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    .registers 1

    .line 72
    invoke-static {p0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;

    move-result-object p0

    return-object p0
.end method

.method public static getWebViewClient(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .registers 1

    .line 63
    invoke-static {p0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public static setSafeBrowsingEnabled(Landroid/webkit/WebSettings;Z)V
    .registers 2

    .line 46
    invoke-static {p0, p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/webkit/WebSettings;Z)V

    return-void
.end method
