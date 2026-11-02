###### Class io.dcloud.p.o4 (io.dcloud.p.o4)
.class public Lio/dcloud/p/o4;
.super Landroid/widget/RelativeLayout;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lio/dcloud/p/v2$c;

.field private g:Lio/dcloud/sdk/base/entry/AdData;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/p/v2$c;Lio/dcloud/sdk/base/entry/AdData;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1388

    .line 2
    iput p1, p0, Lio/dcloud/p/o4;->h:I

    .line 7
    iput-object p2, p0, Lio/dcloud/p/o4;->f:Lio/dcloud/p/v2$c;

    .line 8
    iput-object p3, p0, Lio/dcloud/p/o4;->g:Lio/dcloud/sdk/base/entry/AdData;

    .line 9
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->i()I

    move-result p1

    iput p1, p0, Lio/dcloud/p/o4;->h:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lio/dcloud/base/R$layout;->dcloud_ad_splash_container:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/dcloud/p/o4;->b:Landroid/view/ViewGroup;

    .line 11
    sget p2, Lio/dcloud/base/R$id;->ad_dcloud_main_skip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/o4;->c:Landroid/view/View;

    .line 12
    iget-object p1, p0, Lio/dcloud/p/o4;->b:Landroid/view/ViewGroup;

    sget p2, Lio/dcloud/base/R$id;->ad_dcloud_main_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/dcloud/p/o4;->d:Landroid/widget/ImageView;

    .line 13
    iget-object p1, p0, Lio/dcloud/p/o4;->b:Landroid/view/ViewGroup;

    sget p2, Lio/dcloud/base/R$id;->ad_dcloud_main_click:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/dcloud/p/o4;->e:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lio/dcloud/p/o4;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lio/dcloud/p/o4;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lio/dcloud/p/o4;->b:Landroid/view/ViewGroup;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 18
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 20
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object p2

    const-string v0, "gif"

    if-nez p2, :cond_b3

    .line 21
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 22
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9f

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 25
    :try_start_7f
    new-instance p1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8a} :catch_8b

    return-void

    .line 27
    :catch_8b
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 28
    new-instance p2, Lio/dcloud/p/m4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lio/dcloud/p/m4;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_f8

    .line 31
    :cond_9f
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 32
    new-instance p2, Lio/dcloud/p/m4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lio/dcloud/p/m4;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;

    return-void

    .line 35
    :cond_b3
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object p2

    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 36
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f9

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 39
    :try_start_d4
    new-instance p1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>([B)V

    iput-object p1, p0, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_df} :catch_e0

    return-void

    .line 41
    :catch_e0
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object p1

    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 42
    new-instance p2, Lio/dcloud/p/m4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lio/dcloud/p/m4;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;

    :goto_f8
    return-void

    .line 45
    :cond_f9
    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object p1

    invoke-virtual {p3}, Lio/dcloud/sdk/base/entry/AdData;->g()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 46
    new-instance p2, Lio/dcloud/p/m4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lio/dcloud/p/m4;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/o4;->f:Lio/dcloud/p/v2$c;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/p/o4;)Lio/dcloud/sdk/base/entry/AdData;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/o4;->g:Lio/dcloud/sdk/base/entry/AdData;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/p/o4;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/o4;->d:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    new-instance v0, Lio/dcloud/p/o4$a;

    invoke-direct {v0, p0}, Lio/dcloud/p/o4$a;-><init>(Lio/dcloud/p/o4;)V

    iget v1, p0, Lio/dcloud/p/o4;->h:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    new-instance v0, Lio/dcloud/p/o4$b;

    invoke-direct {v0, p0, p1}, Lio/dcloud/p/o4$b;-><init>(Lio/dcloud/p/o4;Landroid/view/ViewGroup;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lio/dcloud/p/o4;->g:Lio/dcloud/sdk/base/entry/AdData;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/base/entry/AdData;->a(Landroid/view/MotionEvent;)V

    goto :goto_18

    .line 3
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 4
    iget-object v0, p0, Lio/dcloud/p/o4;->g:Lio/dcloud/sdk/base/entry/AdData;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/base/entry/AdData;->b(Landroid/view/MotionEvent;)V

    .line 6
    :cond_18
    :goto_18
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/dcloud/base/R$id;->ad_dcloud_main_skip:I

    if-ne v0, v1, :cond_10

    .line 2
    iget-object p1, p0, Lio/dcloud/p/o4;->f:Lio/dcloud/p/v2$c;

    if-eqz p1, :cond_28

    .line 3
    invoke-interface {p1}, Lio/dcloud/p/v2$c;->l()V

    return-void

    .line 5
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lio/dcloud/base/R$id;->ad_dcloud_main_img:I

    if-ne p1, v0, :cond_28

    .line 6
    iget-object p1, p0, Lio/dcloud/p/o4;->f:Lio/dcloud/p/v2$c;

    if-eqz p1, :cond_1f

    .line 7
    invoke-interface {p1}, Lio/dcloud/p/v2$c;->onAdClicked()V

    .line 9
    :cond_1f
    iget-object p1, p0, Lio/dcloud/p/o4;->g:Lio/dcloud/sdk/base/entry/AdData;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/sdk/base/entry/AdData;->a(Landroid/content/Context;)V

    :cond_28
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

###### Class io.dcloud.p.o4.a (io.dcloud.p.o4$a)
.class Lio/dcloud/p/o4$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/o4;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/o4;


# direct methods
.method constructor <init>(Lio/dcloud/p/o4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/o4$a;->a:Lio/dcloud/p/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o4$a;->a:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lio/dcloud/p/o4$a;->a:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/p/v2$c;->k()V

    :cond_11
    return-void
.end method

###### Class io.dcloud.p.o4.b (io.dcloud.p.o4$b)
.class Lio/dcloud/p/o4$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/o4;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lio/dcloud/p/o4;


# direct methods
.method constructor <init>(Lio/dcloud/p/o4;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    iput-object p2, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/dcloud/p/a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 4
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    const v1, 0xea6a

    const-string v2, "\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-interface {v0, v1, v2}, Lio/dcloud/p/v2$c;->a(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1f
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    iget-object v1, v0, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a9

    .line 8
    iget-object v0, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v1, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iget-object v1, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13
    iget-object v0, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->b(Lio/dcloud/p/o4;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/p/o4$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/base/entry/AdData;->a(Landroid/graphics/RectF;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->c(Lio/dcloud/p/o4;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    iget-object v1, v1, Lio/dcloud/p/o4;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 17
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/p/v2$c;->onAdShow()V

    .line 19
    :cond_88
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->b(Lio/dcloud/p/o4;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/base/entry/AdData;->a()V

    .line 22
    invoke-static {}, Lio/dcloud/p/l4;->a()Lio/dcloud/p/l4;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v2}, Lio/dcloud/p/o4;->b(Lio/dcloud/p/o4;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/p/l4;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_a9
    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 25
    iget-object v0, p0, Lio/dcloud/p/o4$b;->b:Lio/dcloud/p/o4;

    invoke-static {v0}, Lio/dcloud/p/o4;->a(Lio/dcloud/p/o4;)Lio/dcloud/p/v2$c;

    move-result-object v0

    const v1, 0xea64

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lio/dcloud/p/v2$c;->a(ILjava/lang/String;)V

    :cond_bd
    return-void
.end method
