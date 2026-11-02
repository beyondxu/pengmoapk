###### Class io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement (io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement)
.class public Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;
.super Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;
    }
.end annotation


# instance fields
.field public height:Ljava/lang/String;

.field public href:Ljava/lang/String;

.field mAsycLoader:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

.field public src:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getSrc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    return-object v0
.end method

.method public makeSpan(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .registers 17

    move-object/from16 v2, p3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->style:Ljava/util/HashMap;

    if-eqz v0, :cond_19

    .line 2
    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->style:Ljava/util/HashMap;

    const-string v3, "height"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    move-object v1, v0

    .line 5
    :goto_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->height:Ljava/lang/String;

    .line 6
    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->width:Ljava/lang/String;

    :cond_2b
    const/high16 v3, -0x40000000    # -2.0f

    .line 7
    invoke-interface {p1, v0, v3}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->convertWidth(Ljava/lang/String;F)F

    move-result v0

    float-to-int v5, v0

    .line 8
    invoke-interface {p1, v1, v3}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->convertHeight(Ljava/lang/String;F)F

    move-result v0

    float-to-int v6, v0

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10800a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v8, v1

    goto :goto_5c

    .line 14
    :cond_4c
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    invoke-interface {p1, v1}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->convert2InputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 16
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v3

    :goto_5c
    if-lez v5, :cond_60

    move v1, v5

    goto :goto_64

    .line 20
    :cond_60
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_64
    if-lez v6, :cond_68

    move v3, v6

    goto :goto_6c

    :cond_68
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    :goto_6c
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    new-instance v3, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    iget-object v9, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    iget-object v11, p0, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->onClickEvent:Ljava/lang/String;

    iget-object v12, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->href:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "\ufffc"

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v7, 0x11

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz v0, :cond_a0

    .line 26
    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    iget-object v4, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->href:Ljava/lang/String;

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;-><init>(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->loadResource(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V

    :cond_a0
    return-void
.end method

.method public parseDomElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->parseDomElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "src"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->width:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->height:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "href"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->href:Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement.AsycLoader (io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement$AsycLoader)
.class public Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsycLoader"
.end annotation


# instance fields
.field public height:I

.field href:Ljava/lang/String;

.field public self:Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

.field public spaned:Landroid/text/SpannableStringBuilder;

.field public textView:Landroid/widget/TextView;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;Ljava/lang/String;IILjava/lang/String;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    .line 3
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->spaned:Landroid/text/SpannableStringBuilder;

    .line 4
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->self:Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    .line 5
    iput-object p4, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->url:Ljava/lang/String;

    .line 6
    iput p5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->width:I

    .line 7
    iput p6, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->height:I

    .line 8
    iput-object p7, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->href:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->spaned:Landroid/text/SpannableStringBuilder;

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->self:Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    .line 3
    invoke-virtual {v1}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_7c

    .line 5
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "after w="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->width:I

    if-lez v5, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_1f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";h="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->height:I

    if-lez v5, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DnetImg"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v2, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->width:I

    if-lez v2, :cond_41

    goto :goto_45

    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_45
    iget v5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->height:I

    if-lez v5, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_4e
    const/4 p1, 0x0

    invoke-virtual {v3, p1, p1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    new-instance v2, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    invoke-virtual {v1}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;->getOnClickEvent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->href:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 10
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ltz p1, :cond_7c

    if-ltz v3, :cond_7c

    .line 12
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 13
    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;-><init>(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7c
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement.AsycLoader.AnonymousClass1 (io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement$AsycLoader$1)
.class Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->onComplete(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    iget-object v1, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->spaned:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
