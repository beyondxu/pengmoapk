###### Class io.dcloud.common.ui.a (io.dcloud.common.ui.a)
.class public Lio/dcloud/common/ui/a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/a$d;,
        Lio/dcloud/common/ui/a$c;,
        Lio/dcloud/common/ui/a$e;,
        Lio/dcloud/common/ui/a$f;,
        Lio/dcloud/common/ui/a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lio/dcloud/common/ui/a$c;

.field private c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

.field private d:Lio/dcloud/common/ui/PrivacyManager$b;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Lio/dcloud/common/ui/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/ui/a;->c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    .line 157
    sget v0, Lio/dcloud/PdrR;->UNI_CUSTOM_PRIVACY_DIALOG_LAYOUT:I

    iput v0, p0, Lio/dcloud/common/ui/a;->f:I

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lio/dcloud/common/ui/a;->g:Z

    .line 193
    iput-object p1, p0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .registers 3

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method static synthetic a(Lio/dcloud/common/ui/a;Landroid/content/Context;F)I
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/ui/a;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lio/dcloud/common/ui/a;Ljava/lang/String;)I
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/ui/a;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_44

    goto :goto_35

    :sswitch_15
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v1, 0x2

    goto :goto_35

    :sswitch_20
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_35

    :cond_29
    const/4 v1, 0x1

    goto :goto_35

    :sswitch_2b
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    packed-switch v1, :pswitch_data_52

    goto :goto_40

    :pswitch_39
    const/4 p1, 0x5

    return p1

    :pswitch_3b
    const/4 p1, 0x3

    return p1

    :pswitch_3d
    const/16 p1, 0x50

    return p1

    :cond_40
    :goto_40
    const/16 p1, 0x11

    return p1

    nop

    :sswitch_data_44
    .sparse-switch
        -0x527265d5 -> :sswitch_2b
        0x32a007 -> :sswitch_20
        0x677c21c -> :sswitch_15
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
    .end packed-switch
.end method

.method static synthetic a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/ui/a;->c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    return-object p0
.end method

.method private a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lio/dcloud/common/ui/a$e;)V
    .registers 8

    .line 15
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 16
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 17
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 19
    new-instance v3, Lio/dcloud/common/ui/a$a;

    invoke-direct {v3, p0, p3, p2}, Lio/dcloud/common/ui/a$a;-><init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;Landroid/text/style/URLSpan;)V

    .line 86
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/ui/a;->h:Lio/dcloud/common/ui/a$d;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/common/ui/a;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/common/ui/a;->g:Z

    return p0
.end method

.method static synthetic d(Lio/dcloud/common/ui/a;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/ui/a;->f:I

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/dcloud/common/ui/a$e;)Ljava/lang/CharSequence;
    .registers 7

    .line 10
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 11
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 13
    array-length v1, p1

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    .line 14
    invoke-direct {p0, v0, v3, p2}, Lio/dcloud/common/ui/a;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lio/dcloud/common/ui/a$e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    return-object v0
.end method

.method public a()V
    .registers 2

    .line 87
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    if-eqz v0, :cond_a

    .line 88
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    :cond_a
    return-void
.end method

.method public a(I)V
    .registers 2

    if-eqz p1, :cond_4

    .line 6
    iput p1, p0, Lio/dcloud/common/ui/a;->f:I

    :cond_4
    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;ZLio/dcloud/common/ui/a$d;)V
    .registers 4

    .line 7
    iput-object p1, p0, Lio/dcloud/common/ui/a;->c:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    .line 8
    iput-boolean p2, p0, Lio/dcloud/common/ui/a;->g:Z

    .line 9
    iput-object p3, p0, Lio/dcloud/common/ui/a;->h:Lio/dcloud/common/ui/a$d;

    return-void
.end method

.method public a(Lio/dcloud/common/ui/PrivacyManager$b;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lio/dcloud/common/ui/a;->d:Lio/dcloud/common/ui/PrivacyManager$b;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lio/dcloud/common/ui/a;->e:Z

    return-void
.end method

.method public b()Lio/dcloud/common/ui/PrivacyManager$b;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a;->d:Lio/dcloud/common/ui/PrivacyManager$b;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lio/dcloud/common/ui/a;->e:Z

    return v0
.end method

.method public d()Z
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 6
    :cond_6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/ui/a$c;

    iget-object v1, p0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lio/dcloud/common/ui/a$c;-><init>(Lio/dcloud/common/ui/a;Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    invoke-static {v0}, Lio/dcloud/common/ui/a$c;->a(Lio/dcloud/common/ui/a$c;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/ui/a;->b:Lio/dcloud/common/ui/a$c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.C0038a (io.dcloud.common.ui.a$a)
.class Lio/dcloud/common/ui/a$a;
.super Lio/dcloud/common/ui/a$b;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Lio/dcloud/common/ui/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/text/style/URLSpan;

.field final synthetic d:Lio/dcloud/common/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;Landroid/text/style/URLSpan;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$a;->d:Lio/dcloud/common/ui/a;

    iput-object p3, p0, Lio/dcloud/common/ui/a$a;->c:Landroid/text/style/URLSpan;

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/ui/a$b;-><init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const-string p1, "file://"

    const-string v0, "file:///android_asset/apps/"

    .line 1
    :try_start_4
    const-string/jumbo v1, "system"

    iget-object v2, p0, Lio/dcloud/common/ui/a$a;->d:Lio/dcloud/common/ui/a;

    invoke-static {v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->hrefLoader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_10d

    const-string v2, "android.intent.action.VIEW"

    if-eqz v1, :cond_34

    .line 2
    :try_start_17
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lio/dcloud/common/ui/a$a;->c:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lio/dcloud/common/ui/a$a;->d:Lio/dcloud/common/ui/a;

    iget-object v0, v0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 12
    :cond_34
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    iget-object v3, p0, Lio/dcloud/common/ui/a$a;->d:Lio/dcloud/common/ui/a;

    iget-object v3, v3, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    const-class v4, Lio/dcloud/WebviewActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    iget-object v3, p0, Lio/dcloud/common/ui/a$a;->c:Landroid/text/style/URLSpan;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "HTTP://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "HTTPS://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_da

    .line 21
    const-string v4, "./"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x2

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_7b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/www/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lio/dcloud/common/ui/PrivacyManager;->getIsAppAsset()Z

    move-result v4

    if-nez v4, :cond_c2

    .line 33
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_ce

    .line 41
    :cond_c2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_ce
    move-object v3, p1

    .line 45
    const-string p1, "isLocalHtml"

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const-string p1, "isNoPermissionAllowParam"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    :cond_da
    const-string/jumbo p1, "url"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 54
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    const-string p1, "ANIM"

    const-string v0, "POP"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object p1, p0, Lio/dcloud/common/ui/a$a;->d:Lio/dcloud/common/ui/a;

    iget-object p1, p1, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    sget v0, Lio/dcloud/base/R$anim;->dcloud_pop_in:I

    sget v2, Lio/dcloud/base/R$anim;->dcloud_pop_in_out:I

    invoke-static {p1, v0, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lio/dcloud/common/ui/a$a;->d:Lio/dcloud/common/ui/a;

    iget-object v0, v0, Lio/dcloud/common/ui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_10d} :catch_10d

    :catch_10d
    return-void
.end method

###### Class io.dcloud.common.ui.a.b (io.dcloud.common.ui.a$b)
.class public abstract Lio/dcloud/common/ui/a$b;
.super Landroid/text/style/ClickableSpan;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field a:Lio/dcloud/common/ui/a$e;

.field final synthetic b:Lio/dcloud/common/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a;Lio/dcloud/common/ui/a$e;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$b;->b:Lio/dcloud/common/ui/a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/common/ui/a$b;->a:Lio/dcloud/common/ui/a$e;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a$b;->a:Lio/dcloud/common/ui/a$e;

    if-eqz v0, :cond_14

    .line 4
    iget-boolean v0, v0, Lio/dcloud/common/ui/a$e;->b:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/ui/a$b;->a:Lio/dcloud/common/ui/a$e;

    iget v0, v0, Lio/dcloud/common/ui/a$e;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_14
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    const v0, -0xffff01

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c (io.dcloud.common.ui.a$c)
.class Lio/dcloud/common/ui/a$c;
.super Landroid/app/Dialog;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/LinearLayout;

.field final synthetic h:Lio/dcloud/common/ui/a;


# direct methods
.method public constructor <init>(Lio/dcloud/common/ui/a;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4
    iput-object p2, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lio/dcloud/common/ui/a$c;->c()V

    .line 7
    invoke-direct {p0}, Lio/dcloud/common/ui/a$c;->a()V

    .line 9
    iget-object p1, p0, Lio/dcloud/common/ui/a$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 10
    iget-object p1, p0, Lio/dcloud/common/ui/a$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    .line 9
    :cond_24
    const-string p1, ""

    .line 12
    :goto_26
    invoke-static {p1}, Lio/dcloud/common/ui/a$f;->a(Ljava/lang/String;)Lio/dcloud/common/ui/a$f;

    move-result-object p1

    .line 13
    iget-boolean p1, p1, Lio/dcloud/common/ui/a$f;->a:Z

    if-eqz p1, :cond_36

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_36
    return-void
.end method

.method private a()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$f;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$f;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$g;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$g;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/Button;

    if-eqz v0, :cond_20

    .line 17
    new-instance v1, Lio/dcloud/common/ui/a$c$h;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$h;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    return-void
.end method

.method static synthetic a(Lio/dcloud/common/ui/a$c;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/ui/a$c;->b()V

    return-void
.end method

.method private b()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$a;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$a;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/Button;

    if-eqz v0, :cond_16

    .line 10
    new-instance v1, Lio/dcloud/common/ui/a$c$b;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$b;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_16
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->c(Lio/dcloud/common/ui/a;)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "left"

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_f2

    .line 22
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 23
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v6}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_45
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 29
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 30
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    :cond_67
    invoke-static {v3}, Lio/dcloud/common/ui/a$e;->a(Ljava/lang/String;)Lio/dcloud/common/ui/a$e;

    move-result-object v0

    .line 36
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 37
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 38
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v6}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v7

    iget-object v7, v7, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v7, v7, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lio/dcloud/common/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/ui/a$e;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v3, v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    :cond_97
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 44
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_bb
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_eb

    .line 50
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v1}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$c;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$c;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1ab

    .line 61
    :cond_eb
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1ab

    .line 66
    :cond_f2
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 67
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v6}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_10d
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 73
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 74
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    :cond_12d
    invoke-static {v3}, Lio/dcloud/common/ui/a$e;->a(Ljava/lang/String;)Lio/dcloud/common/ui/a$e;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 81
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 82
    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v6}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v7

    iget-object v7, v7, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lio/dcloud/common/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/ui/a$e;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v3, v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    :cond_15b
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17b

    .line 89
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_17b
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 95
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v1}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    new-instance v1, Lio/dcloud/common/ui/a$c$d;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/a$c$d;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1ab

    .line 106
    :cond_1a6
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :goto_1ab
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    if-eqz v0, :cond_2fb

    .line 114
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_212

    .line 117
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e0

    .line 118
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    goto :goto_1e2

    .line 117
    :cond_1e0
    const-string v0, "10px"

    .line 123
    :goto_1e2
    :try_start_1e2
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v1}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1f0} :catch_1f1

    goto :goto_1f2

    :catch_1f1
    const/4 v1, -0x1

    .line 128
    :goto_1f2
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 129
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xa

    .line 130
    invoke-static {v0, v4, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v0

    .line 131
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    iget-object v3, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v1, v3, v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 133
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_212
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_238

    .line 141
    :try_start_220
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_230} :catch_231

    goto :goto_233

    :catch_231
    const/high16 v0, -0x1000000

    .line 145
    :goto_233
    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    :cond_238
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->content:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ContentDTO;

    if-eqz v0, :cond_25c

    .line 152
    :try_start_244
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->content:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ContentDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ContentDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_254} :catch_255

    goto :goto_257

    :catch_255
    const/high16 v0, -0x1000000

    .line 156
    :goto_257
    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    :cond_25c
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    if-eqz v0, :cond_292

    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_292

    .line 163
    :try_start_27a
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_28a} :catch_28b

    goto :goto_28d

    :catch_28b
    const/high16 v0, -0x1000000

    .line 168
    :goto_28d
    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :cond_292
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    if-eqz v0, :cond_2c8

    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c8

    .line 174
    :try_start_2b0
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2c0} :catch_2c1

    goto :goto_2c3

    :catch_2c1
    const/high16 v0, -0x1000000

    .line 178
    :goto_2c3
    iget-object v2, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    :cond_2c8
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonVisitor:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    if-eqz v0, :cond_2fb

    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonVisitor:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2fb

    .line 184
    :try_start_2e6
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonVisitor:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_2f6} :catch_2f6

    .line 188
    :catch_2f6
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    :cond_2fb
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->backToExit:Z

    if-eqz v0, :cond_30d

    .line 195
    new-instance v0, Lio/dcloud/common/ui/a$c$e;

    invoke-direct {v0, p0}, Lio/dcloud/common/ui/a$c$e;-><init>(Lio/dcloud/common/ui/a$c;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_30d
    return-void
.end method

.method private c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v1}, Lio/dcloud/common/ui/a;->d(Lio/dcloud/common/ui/a;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 7
    sget v1, Lio/dcloud/base/R$id;->btn_custom_privacy_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->e:Landroid/widget/Button;

    .line 8
    sget v1, Lio/dcloud/base/R$id;->btn_custom_privacy_sure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->d:Landroid/widget/Button;

    .line 9
    sget v1, Lio/dcloud/base/R$id;->btn_custom_privacy_visitor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/Button;

    .line 11
    sget v1, Lio/dcloud/base/R$id;->tv_privacy_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    .line 12
    sget v1, Lio/dcloud/base/R$id;->tv_custom_privacy_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/dcloud/common/ui/a$c;->b:Landroid/widget/TextView;

    .line 13
    sget v1, Lio/dcloud/base/R$id;->ll_content_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/dcloud/common/ui/a$c;->g:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {p0}, Lio/dcloud/common/ui/a$c;->d()V

    .line 19
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/Button;

    if-eqz v0, :cond_7d

    .line 20
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->visitorEntry:Z

    if-eqz v0, :cond_76

    .line 22
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 24
    :cond_76
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7d
    return-void
.end method


# virtual methods
.method public d()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 5
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    return-void

    .line 7
    :cond_2e
    iget-object v1, p0, Lio/dcloud/common/ui/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.ViewOnClickListenerC0039a (io.dcloud.common.ui.a$c$a)
.class Lio/dcloud/common/ui/a$c$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {p1}, Lio/dcloud/common/ui/a;->b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/ui/a$c$a;->a:Lio/dcloud/common/ui/a$c;

    iget-object v0, v0, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/dcloud/common/ui/a$d;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.b (io.dcloud.common.ui.a$c$b)
.class Lio/dcloud/common/ui/a$c$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$b;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$b;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$b;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {p1}, Lio/dcloud/common/ui/a;->b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/ui/a$d;->a()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.ViewOnClickListenerC0040c (io.dcloud.common.ui.a$c$c)
.class Lio/dcloud/common/ui/a$c$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$c;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$c;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$c;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {p1}, Lio/dcloud/common/ui/a;->b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/ui/a$d;->onCancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.d (io.dcloud.common.ui.a$c$d)
.class Lio/dcloud/common/ui/a$c$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$d;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$d;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$d;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->h:Lio/dcloud/common/ui/a;

    invoke-static {p1}, Lio/dcloud/common/ui/a;->b(Lio/dcloud/common/ui/a;)Lio/dcloud/common/ui/a$d;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/ui/a$d;->onCancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.e (io.dcloud.common.ui.a$c$e)
.class Lio/dcloud/common/ui/a$c$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$e;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_22

    .line 3
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$e;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$e;->a:Lio/dcloud/common/ui/a$c;

    iget-object p1, p1, Lio/dcloud/common/ui/a$c;->a:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_19

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 7
    :cond_19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.ui.a.c.f (io.dcloud.common.ui.a$c$f)
.class Lio/dcloud/common/ui/a$c$f;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$f;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$f;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.g (io.dcloud.common.ui.a$c$g)
.class Lio/dcloud/common/ui/a$c$g;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$g;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$g;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.c.h (io.dcloud.common.ui.a$c$h)
.class Lio/dcloud/common/ui/a$c$h;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/a$c;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/a$c$h;->a:Lio/dcloud/common/ui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/a$c$h;->a:Lio/dcloud/common/ui/a$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.ui.a.d (io.dcloud.common.ui.a$d)
.class public interface abstract Lio/dcloud/common/ui/a$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract onCancel()V
.end method

###### Class io.dcloud.common.ui.a.e (io.dcloud.common.ui.a$e)
.class public Lio/dcloud/common/ui/a$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/common/ui/a$e;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/ui/a$e;

    invoke-direct {v0}, Lio/dcloud/common/ui/a$e;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 6
    :cond_c
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 8
    const-string v1, "linkLine"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lio/dcloud/common/ui/a$e;->b:Z

    .line 9
    const-string v1, "linkColor"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lio/dcloud/common/ui/a$e;->a:I

    return-object v0
.end method

###### Class io.dcloud.common.ui.a.f (io.dcloud.common.ui.a$f)
.class public Lio/dcloud/common/ui/a$f;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/ui/a$f;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/common/ui/a$f;
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/common/ui/a$f;

    invoke-direct {v0}, Lio/dcloud/common/ui/a$f;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_22

    .line 6
    :cond_c
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 7
    const-string v1, "fullscreen"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lio/dcloud/common/ui/a$f;->a:Z

    :cond_22
    :goto_22
    return-object v0
.end method
