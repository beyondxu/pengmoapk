###### Class io.dcloud.feature.weex_text.DCTextContentBoxMeasurement (io.dcloud.feature.weex_text.DCTextContentBoxMeasurement)
.class public Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private decode:Z

.field private space:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->decode:Z

    return-void
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 2
    const-string v1, "ensp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_1d

    .line 3
    const-string v0, "&ensp;"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 5
    :cond_1d
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    const-string v2, "emsp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6
    const-string v0, "&emsp;"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public layoutBefore()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    .line 2
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    .line 3
    const-string v1, "decode"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_21
    const-string v0, "false"

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->decode:Z

    .line 4
    invoke-super {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutBefore()V

    return-void
.end method

.method protected updateSpannable(Landroid/text/Spannable;I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_94

    .line 3
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 4
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_34

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_3a

    .line 8
    :cond_34
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    :goto_3a
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    if-eq v0, v7, :cond_4b

    .line 11
    new-instance v3, Lcom/taobao/weex/dom/WXLineHeightSpan;

    invoke-direct {v3, v0}, Lcom/taobao/weex/dom/WXLineHeightSpan;-><init>(I)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_4e

    :cond_4b
    move-object v1, p0

    move-object v2, p1

    move v6, p2

    .line 14
    :goto_4e
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    iget-object p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-direct {v3, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 16
    iget p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    if-ne p1, v7, :cond_65

    iget p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    if-ne p1, v7, :cond_65

    iget-object p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    if-eqz p1, :cond_74

    .line 17
    :cond_65
    new-instance v3, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    iget p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    iget p2, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    iget-object v0, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    invoke-direct {v3, p1, p2, v0}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 19
    :cond_74
    iget-boolean p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    if-eqz p1, :cond_7f

    .line 20
    iget-object p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget p2, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    :cond_7f
    iget-object p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object p2, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-eq p1, p2, :cond_89

    sget-object p2, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-ne p1, p2, :cond_94

    .line 23
    :cond_89
    new-instance v3, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object p1, v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-direct {v3, p1}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_94
    :goto_94
    return-void
.end method
