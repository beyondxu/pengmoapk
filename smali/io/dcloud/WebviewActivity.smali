###### Class io.dcloud.WebviewActivity (io.dcloud.WebviewActivity)
.class public Lio/dcloud/WebviewActivity;
.super Lio/src/dcloud/adapter/DCloudBaseActivity;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/WebviewActivity$e;
    }
.end annotation


# static fields
.field public static final isLocalHtmlParam:Ljava/lang/String; = "isLocalHtml"

.field public static final noPermissionAllowParam:Ljava/lang/String; = "isNoPermissionAllowParam"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lio/dcloud/WebviewActivity$e;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/webkit/WebView;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field public mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$wqWe87jD5Yy_zdrSbJwdpBt4sFI(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    invoke-static {p0, p1}, Lio/dcloud/WebviewActivity;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->k:Z

    .line 28
    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->l:Z

    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    if-eqz p1, :cond_24

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 4
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_24

    .line 5
    invoke-static {}, Landroidx/core/view/ViewCompat$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 6
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 7
    iget v0, p1, Landroidx/core/graphics/Insets;->top:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    :cond_24
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private a(Landroid/webkit/WebView;)V
    .registers 9

    if-eqz p1, :cond_4e

    .line 13
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 23
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 24
    new-array v3, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    .line 25
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 27
    const-string v5, "f2l4TWBgY3tKZWBpTW9vaX9/KjZhM2Q4OGZhLTRiYTAtNDc5Zi05NDIyLWU1YWFiZTE1ODk3Yjc2"

    const/16 v6, 0xc

    invoke-static {v5, v1, v6}, Lio/dcloud/p/e1;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->openJSEnabled(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 33
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 34
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 35
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lio/dcloud/WebviewActivity$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$a;-><init>(Lio/dcloud/WebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 81
    new-instance v0, Lio/dcloud/WebviewActivity$b;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$b;-><init>(Lio/dcloud/WebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 200
    :cond_4e
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->n()V

    if-nez p1, :cond_54

    return-void

    .line 204
    :cond_54
    new-instance v0, Lio/dcloud/WebviewActivity$c;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$c;-><init>(Lio/dcloud/WebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/WebviewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/WebviewActivity;->l:Z

    return p0
.end method

.method static synthetic a(Lio/dcloud/WebviewActivity;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/WebviewActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/WebviewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->k()V

    return-void
.end method

.method static synthetic d(Lio/dcloud/WebviewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/WebviewActivity;->k:Z

    return p0
.end method

.method static synthetic e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->f:Lio/dcloud/WebviewActivity$e;

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/WebviewActivity;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private g()Z
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 4
    iput-boolean v1, p0, Lio/dcloud/WebviewActivity;->i:Z

    .line 5
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 6
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 8
    :cond_1e
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 9
    invoke-virtual {p0}, Lio/dcloud/WebviewActivity;->finish()V

    return v1

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lio/dcloud/WebviewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/WebviewActivity;->i:Z

    return p0
.end method

.method static synthetic h(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private h()V
    .registers 4

    .line 2
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 3
    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_copy_clipboard:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void
.end method

.method static synthetic i(Lio/dcloud/WebviewActivity;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    return-object p0
.end method

.method private i()V
    .registers 6

    const-string/jumbo v0, "title"

    .line 2
    sget v1, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_ACTS_STYLE_ActionSheetStyleIOS7:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 4
    new-instance v1, Lio/dcloud/feature/ui/nativeui/a;

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lio/dcloud/feature/ui/nativeui/a;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 14
    :try_start_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 15
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_refresh:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_copy_link:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 21
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_open_browser:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 24
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_share_page:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :goto_5d
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/nativeui/a;->b(Ljava/lang/String;)Lio/dcloud/feature/ui/nativeui/a;

    .line 30
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/nativeui/a;->a(Lorg/json/JSONArray;)Lio/dcloud/feature/ui/nativeui/a;

    .line 31
    new-instance v0, Lio/dcloud/WebviewActivity$d;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$d;-><init>(Lio/dcloud/WebviewActivity;)V

    .line 72
    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/nativeui/a;->a(Lio/dcloud/feature/ui/nativeui/a$b;)Lio/dcloud/feature/ui/nativeui/a;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/nativeui/a;->a(Z)Lio/dcloud/feature/ui/nativeui/a;

    .line 74
    invoke-virtual {v1}, Lio/dcloud/feature/ui/nativeui/a;->j()V

    return-void
.end method

.method private j()V
    .registers 3

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_open_web:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method static synthetic j(Lio/dcloud/WebviewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->h()V

    return-void
.end method

.method private k()V
    .registers 4

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_share:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method

.method static synthetic k(Lio/dcloud/WebviewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->j()V

    return-void
.end method

.method private l()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    .line 5
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isLocalHtml"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->k:Z

    .line 8
    :cond_34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isNoPermissionAllowParam"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->l:Z

    .line 14
    :cond_4a
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "weixin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string v1, "alipays"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string v1, "alipayqr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private m()V
    .registers 6

    .line 1
    sget v0, Lio/dcloud/base/R$id;->status_bar_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_BACK:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    .line 4
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_CLOSE:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    .line 5
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_TITLE:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->c:Landroid/widget/TextView;

    .line 6
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_REFRESH:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    .line 7
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_MENU:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    .line 8
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_CONTENT:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->g:Landroid/widget/FrameLayout;

    .line 9
    new-instance v0, Lio/dcloud/WebviewActivity$e;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lio/dcloud/WebviewActivity$e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->f:Lio/dcloud/WebviewActivity$e;

    .line 10
    iget-boolean v1, p0, Lio/dcloud/WebviewActivity;->k:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_67

    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_67
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_WEBVIEW:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    .line 17
    invoke-direct {p0, v0}, Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41b80000    # 23.0f

    invoke-static {v1, v0}, Lio/dcloud/common/util/PdrUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "fonts/dcloud_iconfont.ttf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 22
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    const-string/jumbo v4, "\ue601"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    const-string/jumbo v4, "\ue650"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    const-string/jumbo v3, "\ue606"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v1, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .registers 1

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 3
    const-string v2, "ANIM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "POP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    sget v0, Lio/dcloud/base/R$anim;->dcloud_pop_out:I

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    return-void

    .line 6
    :cond_1e
    sget v0, Lio/dcloud/PdrR;->ANIM_DCLOUD_SLIDE_OUT_TO_RIGHT:I

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->g()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 4
    invoke-virtual {p0}, Lio/dcloud/WebviewActivity;->finish()V

    return-void

    .line 6
    :cond_e
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_16

    .line 7
    invoke-virtual {p0}, Lio/dcloud/WebviewActivity;->finish()V

    return-void

    .line 8
    :cond_16
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1d

    .line 9
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->i()V

    :cond_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p0}, Lio/dcloud/WebviewActivity;->setImmersive(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_14

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/Window;Z)V

    .line 5
    :cond_14
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 6
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->l()V

    .line 7
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->m()V

    .line 8
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 9
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2e
    const/16 v0, 0x24

    if-lt p1, v0, :cond_44

    .line 11
    sget p1, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I

    if-lt p1, v0, :cond_44

    .line 12
    sget p1, Lio/dcloud/base/R$id;->webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lio/dcloud/WebviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/dcloud/WebviewActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_44
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_27

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_17
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 6
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 7
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_27
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :goto_2f
    invoke-super {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne v0, p1, :cond_f

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->g()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_e
    return v0

    .line 8
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setImmersive(Landroid/app/Activity;)V
    .registers 5

    if-eqz p1, :cond_39

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x500

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v2, 0x17

    if-lt v0, v2, :cond_32

    .line 12
    :try_start_1a
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    const-string v2, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, 0x2000

    :goto_31
    or-int/2addr v1, v0

    .line 20
    :cond_32
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_39
    return-void
.end method

###### Class io.dcloud.WebviewActivity.a (io.dcloud.WebviewActivity$a)
.class Lio/dcloud/WebviewActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {v0}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 5
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void

    :cond_10
    const/4 v0, 0x1

    .line 7
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 3
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->d(Lio/dcloud/WebviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_66

    .line 6
    :cond_c
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_32

    .line 7
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->f(Lio/dcloud/WebviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {v1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/WebviewActivity$e;->c()V

    goto :goto_48

    .line 9
    :cond_32
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->g(Lio/dcloud/WebviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 10
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1, v0}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;Z)Z

    .line 11
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/WebviewActivity$e;->c()V

    .line 13
    :cond_48
    :goto_48
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/WebviewActivity$e;->b()I

    move-result p1

    if-gt p1, p2, :cond_66

    .line 15
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/WebviewActivity$e;->a(I)V

    :cond_66
    :goto_66
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->b(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 3
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->b(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void
.end method

###### Class io.dcloud.WebviewActivity.b (io.dcloud.WebviewActivity$b)
.class Lio/dcloud/WebviewActivity$b;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p2}, Lio/dcloud/WebviewActivity;->h(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x4

    :goto_12
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    if-eqz p2, :cond_8a

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
    const-string/jumbo v1, "warning"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x1080061

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_safety_warning:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_certificate_continue:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_61
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v0, Lio/dcloud/WebviewActivity$b$b;

    invoke-direct {v0, p0, p1, p3, p2}, Lio/dcloud/WebviewActivity$b$b;-><init>(Lio/dcloud/WebviewActivity$b;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V

    .line 33
    iget-object p2, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    iget-object p2, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    const p3, 0x104000a

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_86
    const/4 p1, 0x1

    .line 37
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Ljava/lang/Object;I)V

    :cond_8a
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "\""

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_15

    .line 3
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_15
    move-object v3, v4

    .line 5
    :goto_16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_15e

    const-string/jumbo v5, "streamapp://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15e

    const-string v7, "http://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15e

    const-string v7, "https://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15e

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15e

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "android.intent.category.BROWSABLE"

    const-string v8, "android.intent.action.VIEW"

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v5, :cond_8e

    .line 8
    iget-object v5, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    iget-object v5, v5, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :cond_51
    if-ge v12, v11, :cond_8e

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Ljava/lang/String;

    .line 9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_51

    .line 11
    :try_start_72
    new-instance v2, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz v1, :cond_88

    .line 13
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 14
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :cond_88
    iget-object v1, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8d} :catch_8d

    :catch_8d
    return v6

    .line 26
    :cond_8e
    :try_start_8e
    const-string v5, "intent://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 27
    invoke-static {v1, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    goto :goto_ae

    .line 34
    :cond_a4
    new-instance v3, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 36
    :goto_ae
    iget-object v3, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_15d

    .line 38
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_15d

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v10, Lio/dcloud/base/R$string;->dcloud_common_soon_open:I

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"Android system\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v10, Lio/dcloud/base/R$string;->dcloud_common_app_open_now:I

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v6, v8, :cond_f4

    .line 44
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 46
    :cond_f4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_122

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v7, Lio/dcloud/base/R$string;->dcloud_common_soon_open:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v4, Lio/dcloud/base/R$string;->dcloud_common_app_open_now:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_122
    move-object v9, v7

    .line 49
    iget-object v2, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    iget-object v8, v2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_open:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lio/dcloud/WebviewActivity$b$a;

    invoke-direct {v12, v0, v1}, Lio/dcloud/WebviewActivity$b$a;-><init>(Lio/dcloud/WebviewActivity$b;Landroid/content/Intent;)V

    iget-object v1, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v19, v1

    .line 56
    invoke-static/range {v8 .. v19}, Lio/dcloud/common/util/DialogUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_15d} :catch_15d

    :catch_15d
    :cond_15d
    return v6

    .line 68
    :cond_15e
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    iget-object v1, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-static {v1, v6}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;Z)Z

    return v6
.end method

###### Class io.dcloud.WebviewActivity.b.a (io.dcloud.WebviewActivity$b$a)
.class Lio/dcloud/WebviewActivity$b$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lio/dcloud/WebviewActivity$b;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$b;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$b$a;->b:Lio/dcloud/WebviewActivity$b;

    iput-object p2, p0, Lio/dcloud/WebviewActivity$b$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$a;->b:Lio/dcloud/WebviewActivity$b;

    iget-object p1, p1, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    iget-object v0, p0, Lio/dcloud/WebviewActivity$b$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.WebviewActivity.b.DialogInterfaceOnClickListenerC0022b (io.dcloud.WebviewActivity$b$b)
.class Lio/dcloud/WebviewActivity$b$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$b;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/net/http/SslError;

.field final synthetic c:Landroid/webkit/SslErrorHandler;

.field final synthetic d:Lio/dcloud/WebviewActivity$b;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$b;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->d:Lio/dcloud/WebviewActivity$b;

    iput-object p2, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/dcloud/WebviewActivity$b$b;->b:Landroid/net/http/SslError;

    iput-object p4, p0, Lio/dcloud/WebviewActivity$b$b;->c:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_e

    .line 1
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_e
    const/4 p1, -0x3

    if-ne p2, p1, :cond_1b

    .line 4
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->b:Landroid/net/http/SslError;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    return-void

    :cond_1b
    const/4 p1, -0x1

    if-ne p2, p1, :cond_29

    .line 6
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->c:Landroid/webkit/SslErrorHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Ljava/lang/Object;I)V

    .line 7
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_29
    return-void
.end method

###### Class io.dcloud.WebviewActivity.c (io.dcloud.WebviewActivity$c)
.class Lio/dcloud/WebviewActivity$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 28

    move-object/from16 v1, p0

    move-wide/from16 v2, p5

    .line 1
    const-string v6, "android.intent.action.VIEW"

    :try_start_6
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v4, 0x8

    if-le v0, v4, :cond_c3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    .line 3
    invoke-static {v5, v7, v0}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    sget v10, Lio/dcloud/base/R$string;->dcloud_common_download_do_file:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    cmp-long v11, v9, v2

    if-gez v11, :cond_82

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u3010"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v2, Ljava/math/BigDecimal;

    const-wide/32 v10, 0x100000

    invoke-direct {v2, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/4 v3, 0x2

    const/4 v10, 0x4

    invoke-virtual {v8, v2, v3, v10}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "MB\u3011"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_82
    move-object v10, v8

    .line 8
    iget-object v2, v1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v9, v2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lio/dcloud/WebviewActivity$c$a;

    move-object v2, v0

    move-object v3, v7

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lio/dcloud/WebviewActivity$c$a;-><init>(Lio/dcloud/WebviewActivity$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    iget-object v0, v1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double v2, v2, v4

    double-to-int v0, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x50

    move/from16 v20, v0

    .line 37
    invoke-static/range {v9 .. v20}, Lio/dcloud/common/util/DialogUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V

    return-void

    .line 67
    :cond_c3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    iget-object v2, v1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d4} :catch_d5

    return-void

    .line 73
    :catch_d5
    :try_start_d5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    iget-object v2, v1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_eb
    return-void
.end method

###### Class io.dcloud.WebviewActivity.c.a (io.dcloud.WebviewActivity$c$a)
.class Lio/dcloud/WebviewActivity$c$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$c;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/WebviewActivity$c;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iput-object p2, p0, Lio/dcloud/WebviewActivity$c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/WebviewActivity$c$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/WebviewActivity$c$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p1, p1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;

    move-result-object v0

    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p1, p1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v2, p0, Lio/dcloud/WebviewActivity$c$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/WebviewActivity$c$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/WebviewActivity$c$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    new-instance v6, Lio/dcloud/WebviewActivity$c$a$a;

    invoke-direct {v6, p0}, Lio/dcloud/WebviewActivity$c$a$a;-><init>(Lio/dcloud/WebviewActivity$c$a;)V

    invoke-virtual/range {v0 .. v6}, Lio/dcloud/common/adapter/util/DownloadUtil;->startRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)J

    return-void
.end method

###### Class io.dcloud.WebviewActivity.c.a.C0023a (io.dcloud.WebviewActivity$c$a$a)
.class Lio/dcloud/WebviewActivity$c$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$c$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity$c$a;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$c$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const/4 v0, 0x0

    if-nez p3, :cond_28

    const/4 v1, -0x1

    if-ne p1, v1, :cond_28

    if-nez p2, :cond_28

    .line 1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    iget-object p2, p1, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p2, p2, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v3, p1, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    sget p1, Lio/dcloud/base/R$string;->dcloud_common_download_failed:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v6, -0x1

    invoke-static/range {v2 .. v9}, Lio/dcloud/common/util/NotificationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IIIZ)V

    return-object v0

    .line 5
    :cond_28
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 7
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x7

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_3d
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p3, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    iget-object p3, p3, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p3, p3, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object p3, p3, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p1, p3}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 14
    :cond_5d
    invoke-static {p2, p1, p3}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 15
    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    iget-object p2, p1, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p2, p2, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v1, p2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v2, p1, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    sget p1, Lio/dcloud/base/R$string;->dcloud_common_download_complete:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lio/dcloud/PdrR;->DRAWABLE_DCLOUD_WEBVIEW_DOWNLOAD_PIN_AROUND:I

    sget v6, Lio/dcloud/PdrR;->DRAWABLE_DCLOUD_WEBVIEW_DOWNLOAD_PIN:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/NotificationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IIIZ)V

    return-object v0
.end method

###### Class io.dcloud.WebviewActivity.d (io.dcloud.WebviewActivity$d)
.class Lio/dcloud/WebviewActivity$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/ui/nativeui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initCancelText(Landroid/widget/TextView;)V
    .registers 2

    return-void
.end method

.method public initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onDismiss(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    goto :goto_35

    .line 1
    :cond_d
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->c(Lio/dcloud/WebviewActivity;)V

    return-void

    .line 2
    :cond_13
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->k(Lio/dcloud/WebviewActivity;)V

    return-void

    .line 3
    :cond_19
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->j(Lio/dcloud/WebviewActivity;)V

    return-void

    .line 4
    :cond_1f
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->i(Lio/dcloud/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 5
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1, v0}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;Z)Z

    .line 6
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->i(Lio/dcloud/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_35
    :goto_35
    return-void
.end method

###### Class io.dcloud.WebviewActivity.e (io.dcloud.WebviewActivity$e)
.class Lio/dcloud/WebviewActivity$e;
.super Landroid/view/View;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:Landroid/graphics/Paint;

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->c:I

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/dcloud/WebviewActivity$e;->d:Landroid/graphics/Paint;

    .line 4
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->e:I

    .line 5
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->f:I

    const/16 v0, 0xff

    .line 6
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->g:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lio/dcloud/WebviewActivity$e;->a:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lio/dcloud/common/util/PdrUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/WebviewActivity$e;->b:F

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/WebviewActivity$e$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$e$a;-><init>(Lio/dcloud/WebviewActivity$e;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(I)V
    .registers 5

    .line 2
    iput p1, p0, Lio/dcloud/WebviewActivity$e;->h:I

    .line 3
    iget v0, p0, Lio/dcloud/WebviewActivity$e;->a:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 4
    iget p1, p0, Lio/dcloud/WebviewActivity$e;->e:I

    iget v1, p0, Lio/dcloud/WebviewActivity$e;->f:I

    if-lt p1, v1, :cond_18

    .line 5
    new-instance p1, Lio/dcloud/WebviewActivity$e$b;

    invoke-direct {p1, p0}, Lio/dcloud/WebviewActivity$e$b;-><init>(Lio/dcloud/WebviewActivity$e;)V

    const-wide/16 v1, 0x5

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_18
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->f:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/WebviewActivity$e;->h:I

    return v0
.end method

.method public c()V
    .registers 2

    const/16 v0, 0xff

    .line 1
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->g:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->e:I

    .line 3
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->f:I

    .line 4
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->h:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e;->d:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/WebviewActivity$e;->g:I

    const/16 v2, 0x99

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Lio/dcloud/WebviewActivity$e;->c:I

    int-to-float v3, v0

    iget v0, p0, Lio/dcloud/WebviewActivity$e;->e:I

    int-to-float v4, v0

    iget v0, p0, Lio/dcloud/WebviewActivity$e;->b:F

    add-float v5, v3, v0

    iget-object v6, p0, Lio/dcloud/WebviewActivity$e;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lio/dcloud/WebviewActivity$e;->a:I

    iget p2, p0, Lio/dcloud/WebviewActivity$e;->c:I

    iget v0, p0, Lio/dcloud/WebviewActivity$e;->b:F

    float-to-int v0, v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

###### Class io.dcloud.WebviewActivity.e.a (io.dcloud.WebviewActivity$e$a)
.class Lio/dcloud/WebviewActivity$e$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity$e;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    iget v1, v0, Lio/dcloud/WebviewActivity$e;->g:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Lio/dcloud/WebviewActivity$e;->g:I

    if-lez v1, :cond_10

    const-wide/16 v1, 0x5

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 5
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 7
    iget-object v1, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class io.dcloud.WebviewActivity.e.b (io.dcloud.WebviewActivity$e$b)
.class Lio/dcloud/WebviewActivity$e$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity$e;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$e$b;->a:Lio/dcloud/WebviewActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$b;->a:Lio/dcloud/WebviewActivity$e;

    iget v1, v0, Lio/dcloud/WebviewActivity$e;->f:I

    iget v2, v0, Lio/dcloud/WebviewActivity$e;->e:I

    sub-int v3, v1, v2

    const/16 v4, 0xa

    div-int/2addr v3, v4

    if-le v3, v4, :cond_e

    goto :goto_13

    :cond_e
    const/4 v4, 0x1

    if-ge v3, v4, :cond_12

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    add-int/2addr v2, v4

    .line 7
    iput v2, v0, Lio/dcloud/WebviewActivity$e;->e:I

    if-le v1, v2, :cond_1e

    const-wide/16 v1, 0x5

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 10
    :cond_1e
    iget v2, v0, Lio/dcloud/WebviewActivity$e;->a:I

    if-lt v1, v2, :cond_25

    .line 11
    invoke-virtual {v0}, Lio/dcloud/WebviewActivity$e;->a()V

    .line 13
    :cond_25
    :goto_25
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$b;->a:Lio/dcloud/WebviewActivity$e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class io.dcloud.WebviewActivity$$ExternalSyntheticLambda0 (io.dcloud.WebviewActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/WebviewActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lio/dcloud/WebviewActivity;->$r8$lambda$wqWe87jD5Yy_zdrSbJwdpBt4sFI(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
