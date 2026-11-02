###### Class io.dcloud.sdk.activity.WebViewActivity (io.dcloud.sdk.activity.WebViewActivity)
.class public Lio/dcloud/sdk/activity/WebViewActivity;
.super Landroid/app/Activity;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/activity/WebViewActivity$e;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lio/dcloud/sdk/activity/WebViewActivity$e;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/webkit/WebView;

.field private i:Z

.field private j:Ljava/lang/String;

.field public k:Ljava/util/ArrayList;

.field private l:Z

.field private m:Z

.field public n:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->j:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->k:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->l:Z

    .line 28
    iput-boolean v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->m:Z

    .line 35
    new-instance v0, Lio/dcloud/sdk/activity/WebViewActivity$a;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/activity/WebViewActivity$a;-><init>(Lio/dcloud/sdk/activity/WebViewActivity;)V

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->n:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .registers 8

    if-eqz p1, :cond_4b

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 13
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 14
    new-array v3, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    .line 15
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 18
    const-string v5, "e218SWRkZ39OYWRtSWtrbXt7"

    invoke-static {v5}, Lio/dcloud/p/s4;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2, v3}, Lio/dcloud/sdk/core/util/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 24
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 25
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 26
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lio/dcloud/sdk/activity/WebViewActivity$b;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/activity/WebViewActivity$b;-><init>(Lio/dcloud/sdk/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 72
    new-instance v0, Lio/dcloud/sdk/activity/WebViewActivity$c;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/activity/WebViewActivity$c;-><init>(Lio/dcloud/sdk/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    :cond_4b
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->h()V

    return-void
.end method

.method private a()Z
    .registers 4

    .line 202
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_2a

    .line 203
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 204
    iput-boolean v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->i:Z

    .line 205
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 206
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 208
    :cond_1e
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 209
    invoke-virtual {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->finish()V

    return v1

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lio/dcloud/sdk/activity/WebViewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->m:Z

    return p0
.end method

.method static synthetic a(Lio/dcloud/sdk/activity/WebViewActivity;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 2
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 3
    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u62f7\u8d1d\u5230\u526a\u5207\u677f"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private c()V
    .registers 6

    .line 2
    const-string v0, "title"

    .line 3
    new-instance v1, Lio/dcloud/p/g;

    invoke-direct {v1, p0}, Lio/dcloud/p/g;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 13
    :try_start_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 14
    const-string v4, "\u5237\u65b0"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 16
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string v4, "\u590d\u5236\u94fe\u63a5"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 19
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 20
    const-string v4, "\u4f7f\u7528\u6d4f\u89c8\u5668\u6253\u5f00"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 22
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 23
    const-string v4, "\u5206\u4eab\u9875\u9762"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :goto_45
    const-string v0, "\u53d6\u6d88"

    invoke-virtual {v1, v0}, Lio/dcloud/p/g;->a(Ljava/lang/String;)Lio/dcloud/p/g;

    .line 29
    invoke-virtual {v1, v2}, Lio/dcloud/p/g;->a(Lorg/json/JSONArray;)Lio/dcloud/p/g;

    .line 30
    new-instance v0, Lio/dcloud/sdk/activity/WebViewActivity$d;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/activity/WebViewActivity$d;-><init>(Lio/dcloud/sdk/activity/WebViewActivity;)V

    .line 71
    invoke-virtual {v1, v0}, Lio/dcloud/p/g;->a(Lio/dcloud/p/g$b;)Lio/dcloud/p/g;

    const/4 v0, 0x1

    .line 72
    invoke-virtual {v1, v0}, Lio/dcloud/p/g;->a(Z)Lio/dcloud/p/g;

    .line 73
    invoke-virtual {v1}, Lio/dcloud/p/g;->i()V

    return-void
.end method

.method static synthetic c(Lio/dcloud/sdk/activity/WebViewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->e()V

    return-void
.end method

.method private d()V
    .registers 3

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    const-string v1, "\u6253\u5f00\u7f51\u9875"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method static synthetic d(Lio/dcloud/sdk/activity/WebViewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->l:Z

    return p0
.end method

.method static synthetic e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->f:Lio/dcloud/sdk/activity/WebViewActivity$e;

    return-object p0
.end method

.method private e()V
    .registers 4

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    const-string v1, "\u5206\u4eab"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_30

    :catch_30
    return-void
.end method

.method static synthetic f(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private f()V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->j:Ljava/lang/String;

    .line 6
    :cond_1c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isLocalHtml"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->l:Z

    .line 9
    :cond_33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isNoPermissionAllowParam"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->m:Z

    .line 15
    :cond_49
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->k:Ljava/util/ArrayList;

    const-string v1, "weixin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->k:Ljava/util/ArrayList;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->k:Ljava/util/ArrayList;

    const-string v1, "alipays"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->k:Ljava/util/ArrayList;

    const-string v1, "alipayqr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()V
    .registers 6

    .line 2
    sget v0, Lio/dcloud/base/R$id;->back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->a:Landroid/widget/TextView;

    .line 3
    sget v0, Lio/dcloud/base/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    .line 4
    sget v0, Lio/dcloud/base/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->c:Landroid/widget/TextView;

    .line 5
    sget v0, Lio/dcloud/base/R$id;->refresh:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->e:Landroid/widget/TextView;

    .line 6
    sget v0, Lio/dcloud/base/R$id;->menu:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->d:Landroid/widget/TextView;

    .line 7
    sget v0, Lio/dcloud/base/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->g:Landroid/widget/FrameLayout;

    .line 8
    new-instance v0, Lio/dcloud/sdk/activity/WebViewActivity$e;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/activity/WebViewActivity$e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->f:Lio/dcloud/sdk/activity/WebViewActivity$e;

    .line 9
    iget-boolean v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->l:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_52

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_52
    sget v0, Lio/dcloud/base/R$id;->webview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    .line 16
    invoke-direct {p0, v0}, Lio/dcloud/sdk/activity/WebViewActivity;->a(Landroid/webkit/WebView;)V

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41b80000    # 23.0f

    invoke-static {v1, v0}, Lio/dcloud/sdk/activity/WebViewActivity;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 21
    :try_start_6d
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "dcloud_uni_ad/dcloud_iconfont.ttf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_78

    goto :goto_82

    .line 23
    :catch_78
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "fonts/dcloud_iconfont.ttf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 25
    :goto_82
    iget-object v3, p0, Lio/dcloud/sdk/activity/WebViewActivity;->a:Landroid/widget/TextView;

    const-string v4, "\ue601"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v3, p0, Lio/dcloud/sdk/activity/WebViewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object v3, p0, Lio/dcloud/sdk/activity/WebViewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    iget-object v3, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    const-string v4, "\ue650"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v3, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object v3, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v3, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->e:Landroid/widget/TextView;

    const-string v3, "\ue606"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, p0, Lio/dcloud/sdk/activity/WebViewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lio/dcloud/sdk/activity/WebViewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->i:Z

    return p0
.end method

.method static synthetic h(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private h()V
    .registers 1

    return-void
.end method

.method static synthetic i(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic j(Lio/dcloud/sdk/activity/WebViewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->b()V

    return-void
.end method

.method static synthetic k(Lio/dcloud/sdk/activity/WebViewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->d()V

    return-void
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 210
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 213
    invoke-virtual {v1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 p3, 0x1

    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 218
    array-length p3, p4

    if-nez p3, :cond_14

    move-object p4, v0

    :cond_14
    invoke-virtual {p2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    return-object v0
.end method

.method public finish()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->a:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->a()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->finish()V

    return-void

    .line 6
    :cond_e
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_16

    .line 7
    invoke-virtual {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->finish()V

    return-void

    .line 8
    :cond_16
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1d

    .line 9
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->c()V

    :cond_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Lio/dcloud/base/R$layout;->dcloud_ad_activity_webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->f()V

    .line 5
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->g()V

    .line 6
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 7
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->n:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_23
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_27

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_17
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 6
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 7
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_27
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity;->h:Landroid/webkit/WebView;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :goto_2f
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne v0, p1, :cond_f

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/activity/WebViewActivity;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_e
    return v0

    .line 8
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.a (io.dcloud.sdk.activity.WebViewActivity$a)
.class Lio/dcloud/sdk/activity/WebViewActivity$a;
.super Ljava/util/HashMap;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/WebViewActivity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$a;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string p1, "X-Requested-With"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.b (io.dcloud.sdk.activity.WebViewActivity$b)
.class Lio/dcloud/sdk/activity/WebViewActivity$b;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/activity/WebViewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/WebViewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {v0}, Lio/dcloud/sdk/activity/WebViewActivity;->a(Lio/dcloud/sdk/activity/WebViewActivity;)Z

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
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->d(Lio/dcloud/sdk/activity/WebViewActivity;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_66

    .line 6
    :cond_c
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_32

    .line 7
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->f(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {v1}, Lio/dcloud/sdk/activity/WebViewActivity;->e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/sdk/activity/WebViewActivity$e;->c()V

    goto :goto_48

    .line 9
    :cond_32
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->g(Lio/dcloud/sdk/activity/WebViewActivity;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 10
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1, v0}, Lio/dcloud/sdk/activity/WebViewActivity;->a(Lio/dcloud/sdk/activity/WebViewActivity;Z)Z

    .line 11
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/sdk/activity/WebViewActivity$e;->c()V

    .line 13
    :cond_48
    :goto_48
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/sdk/activity/WebViewActivity$e;->b()I

    move-result p1

    if-gt p1, p2, :cond_66

    .line 15
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->e(Lio/dcloud/sdk/activity/WebViewActivity;)Lio/dcloud/sdk/activity/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/sdk/activity/WebViewActivity$e;->a(I)V

    :cond_66
    :goto_66
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->b(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/widget/TextView;

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
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$b;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->b(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.c (io.dcloud.sdk.activity.WebViewActivity$c)
.class Lio/dcloud/sdk/activity/WebViewActivity$c;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/activity/WebViewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/WebViewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p2}, Lio/dcloud/sdk/activity/WebViewActivity;->h(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/widget/TextView;

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
    .registers 6

    if-eqz p2, :cond_e

    .line 1
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "proceed"

    invoke-virtual {p1, p2, v1, v0, p3}, Lio/dcloud/sdk/activity/WebViewActivity;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_f

    .line 3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, v1

    .line 5
    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_106

    const-string v2, "streamapp://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_106

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_106

    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_106

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_106

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "android.intent.category.BROWSABLE"

    const-string v4, "android.intent.action.VIEW"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_83

    .line 8
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    iget-object p1, p1, Lio/dcloud/sdk/activity/WebViewActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :cond_4a
    if-ge v8, v7, :cond_83

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 11
    :try_start_6b
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object p2, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_82} :catch_82

    :catch_82
    return v3

    .line 27
    :cond_83
    :try_start_83
    const-string p1, "intent://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 28
    invoke-static {p2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    goto :goto_a2

    .line 35
    :cond_99
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    :goto_a2
    iget-object p2, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 38
    invoke-virtual {p2, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_105

    .line 42
    const-string v2, "\u5373\u5c06\u6253\u5f00\"Android system\"\u5e94\u7528, \n\u7acb\u5373\u6253\u5f00?"

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_c6

    .line 45
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    :cond_c6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e2

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5373\u5c06\u6253\u5f00\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\"\u5e94\u7528, \n\u7acb\u5373\u6253\u5f00?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    :cond_e2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "\u6253\u5f00"

    new-instance v1, Lio/dcloud/sdk/activity/WebViewActivity$c$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/sdk/activity/WebViewActivity$c$a;-><init>(Lio/dcloud/sdk/activity/WebViewActivity$c;Landroid/content/Intent;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    .line 55
    invoke-virtual {p1, p2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_105} :catch_105

    :catch_105
    :cond_105
    return v3

    .line 69
    :cond_106
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    iget-object v0, v0, Lio/dcloud/sdk/activity/WebViewActivity;->n:Ljava/util/Map;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1, v3}, Lio/dcloud/sdk/activity/WebViewActivity;->a(Lio/dcloud/sdk/activity/WebViewActivity;Z)Z

    return v3
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.c.a (io.dcloud.sdk.activity.WebViewActivity$c$a)
.class Lio/dcloud/sdk/activity/WebViewActivity$c$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/activity/WebViewActivity$c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lio/dcloud/sdk/activity/WebViewActivity$c;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/WebViewActivity$c;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$c$a;->b:Lio/dcloud/sdk/activity/WebViewActivity$c;

    iput-object p2, p0, Lio/dcloud/sdk/activity/WebViewActivity$c$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$c$a;->b:Lio/dcloud/sdk/activity/WebViewActivity$c;

    iget-object p1, p1, Lio/dcloud/sdk/activity/WebViewActivity$c;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    iget-object p2, p0, Lio/dcloud/sdk/activity/WebViewActivity$c$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.d (io.dcloud.sdk.activity.WebViewActivity$d)
.class Lio/dcloud/sdk/activity/WebViewActivity$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/activity/WebViewActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/WebViewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$d;->a:Lio/dcloud/sdk/activity/WebViewActivity;

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
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$d;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->c(Lio/dcloud/sdk/activity/WebViewActivity;)V

    return-void

    .line 2
    :cond_13
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$d;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->k(Lio/dcloud/sdk/activity/WebViewActivity;)V

    return-void

    .line 3
    :cond_19
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$d;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->j(Lio/dcloud/sdk/activity/WebViewActivity;)V

    return-void

    .line 4
    :cond_1f
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$d;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->i(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 5
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$d;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1, v0}, Lio/dcloud/sdk/activity/WebViewActivity;->a(Lio/dcloud/sdk/activity/WebViewActivity;Z)Z

    .line 6
    iget-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$d;->a:Lio/dcloud/sdk/activity/WebViewActivity;

    invoke-static {p1}, Lio/dcloud/sdk/activity/WebViewActivity;->i(Lio/dcloud/sdk/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_35
    :goto_35
    return-void
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.e (io.dcloud.sdk.activity.WebViewActivity$e)
.class Lio/dcloud/sdk/activity/WebViewActivity$e;
.super Landroid/view/View;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/activity/WebViewActivity;
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
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->c:I

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->d:Landroid/graphics/Paint;

    .line 4
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->e:I

    .line 5
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->f:I

    const/16 v0, 0xff

    .line 6
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->g:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->a:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lio/dcloud/sdk/activity/WebViewActivity;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->b:F

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/sdk/activity/WebViewActivity$e$a;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/activity/WebViewActivity$e$a;-><init>(Lio/dcloud/sdk/activity/WebViewActivity$e;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(I)V
    .registers 5

    .line 2
    iput p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->h:I

    .line 3
    iget v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->a:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 4
    iget p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->e:I

    iget v1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->f:I

    if-lt p1, v1, :cond_18

    .line 5
    new-instance p1, Lio/dcloud/sdk/activity/WebViewActivity$e$b;

    invoke-direct {p1, p0}, Lio/dcloud/sdk/activity/WebViewActivity$e$b;-><init>(Lio/dcloud/sdk/activity/WebViewActivity$e;)V

    const-wide/16 v1, 0x5

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_18
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->f:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->h:I

    return v0
.end method

.method public c()V
    .registers 2

    const/16 v0, 0xff

    .line 1
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->g:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->e:I

    .line 3
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->f:I

    .line 4
    iput v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->h:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->d:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->g:I

    const/16 v2, 0x99

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->c:I

    int-to-float v3, v0

    iget v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->e:I

    int-to-float v4, v0

    iget v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->b:F

    add-float v5, v3, v0

    iget-object v6, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->d:Landroid/graphics/Paint;

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
    iget p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->a:I

    iget p2, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->c:I

    iget v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e;->b:F

    float-to-int v0, v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.e.a (io.dcloud.sdk.activity.WebViewActivity$e$a)
.class Lio/dcloud/sdk/activity/WebViewActivity$e$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/activity/WebViewActivity$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/activity/WebViewActivity$e;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/WebViewActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e$a;->a:Lio/dcloud/sdk/activity/WebViewActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e$a;->a:Lio/dcloud/sdk/activity/WebViewActivity$e;

    iget v1, v0, Lio/dcloud/sdk/activity/WebViewActivity$e;->g:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Lio/dcloud/sdk/activity/WebViewActivity$e;->g:I

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
    iget-object v1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e$a;->a:Lio/dcloud/sdk/activity/WebViewActivity$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e$a;->a:Lio/dcloud/sdk/activity/WebViewActivity$e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class io.dcloud.sdk.activity.WebViewActivity.e.b (io.dcloud.sdk.activity.WebViewActivity$e$b)
.class Lio/dcloud/sdk/activity/WebViewActivity$e$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/activity/WebViewActivity$e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/activity/WebViewActivity$e;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/WebViewActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/WebViewActivity$e$b;->a:Lio/dcloud/sdk/activity/WebViewActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e$b;->a:Lio/dcloud/sdk/activity/WebViewActivity$e;

    iget v1, v0, Lio/dcloud/sdk/activity/WebViewActivity$e;->f:I

    iget v2, v0, Lio/dcloud/sdk/activity/WebViewActivity$e;->e:I

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
    iput v2, v0, Lio/dcloud/sdk/activity/WebViewActivity$e;->e:I

    if-le v1, v2, :cond_1e

    const-wide/16 v1, 0x5

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 10
    :cond_1e
    iget v2, v0, Lio/dcloud/sdk/activity/WebViewActivity$e;->a:I

    if-lt v1, v2, :cond_25

    .line 11
    invoke-virtual {v0}, Lio/dcloud/sdk/activity/WebViewActivity$e;->a()V

    .line 13
    :cond_25
    :goto_25
    iget-object v0, p0, Lio/dcloud/sdk/activity/WebViewActivity$e$b;->a:Lio/dcloud/sdk/activity/WebViewActivity$e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
