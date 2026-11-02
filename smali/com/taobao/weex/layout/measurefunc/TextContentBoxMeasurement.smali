###### Class com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement (com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement)
.class public Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;
    }
.end annotation


# static fields
.field private static final DUMMY_CANVAS:Landroid/graphics/Canvas;

.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private atomicReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenMeasured:Z

.field private layout:Landroid/text/Layout;

.field protected mAlignment:Landroid/text/Layout$Alignment;

.field protected mColor:I

.field protected mFontFamily:Ljava/lang/String;

.field protected mFontSize:I

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mIsColorSet:Z

.field protected mLineHeight:I

.field private mNumberOfLines:I

.field private mText:Ljava/lang/String;

.field protected mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field protected mTextPaint:Landroid/text/TextPaint;

.field private previousWidth:F

.field private spanned:Landroid/text/Spanned;

.field private textOverflow:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    .line 27
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    .line 30
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    .line 31
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    .line 32
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    .line 33
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 34
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    .line 39
    sget-object p1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method private adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V
    .registers 10

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_32

    aget-object v4, v0, v3

    .line 3
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 4
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-nez v5, :cond_2f

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v6, v5, :cond_2f

    .line 6
    invoke-interface {p2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v4, v2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_32
    return-void
.end method

.method private createLayout(FLandroid/text/Layout;)Landroid/text/Layout;
    .registers 15

    .line 1
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    if-nez p2, :cond_1e

    .line 2
    :cond_8
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object p2, v1

    .line 7
    :cond_1e
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_af

    if-lez v0, :cond_af

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_af

    .line 9
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_8a

    sub-int/2addr v0, v2

    .line 11
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 12
    iget v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-ge v0, v2, :cond_af

    if-lez v0, :cond_4d

    .line 17
    new-instance p2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-interface {v3, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 19
    :cond_4d
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 21
    :goto_52
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-interface {v3, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    iget-object v4, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    invoke-direct {p0, v1, v0, p1, v4}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V

    .line 25
    iput-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 27
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v6, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int v7, p1

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v4

    :cond_8a
    float-to-double p1, p1

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 34
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 35
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, v1, v0, v3, p1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    .line 36
    invoke-static {p2, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 37
    invoke-static {p2, v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    .line 38
    invoke-static {p2, p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 40
    invoke-static {p1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    :cond_af
    return-object p2
.end method

.method private getTextWidth(Landroid/text/TextPaint;FZ)F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    if-nez v0, :cond_9

    if-eqz p3, :cond_7

    goto :goto_1d

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_9
    if-eqz p3, :cond_c

    goto :goto_1d

    .line 12
    :cond_c
    iget-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-static {p3, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p1

    .line 13
    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result p3

    if-nez p3, :cond_1e

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1d

    goto :goto_1e

    :cond_1d
    :goto_1d
    return p2

    :cond_1e
    :goto_1e
    return p1
.end method

.method private recalculateLayout(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_31

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    if-eqz v1, :cond_2f

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 6
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    return-void

    .line 8
    :cond_2f
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    :cond_31
    return-void
.end method

.method private swap()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_c

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    :cond_c
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    return-void
.end method

.method private truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;
    .registers 15

    .line 1
    new-instance v8, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {v8, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_79

    const/4 v9, 0x1

    if-eqz p4, :cond_4f

    .line 4
    const-string/jumbo v0, "\u2026"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 6
    array-length v2, v0

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v2, :cond_4f

    aget-object v5, v0, v4

    .line 7
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 8
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-nez v6, :cond_4c

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v9

    if-ne v7, v6, :cond_4c

    .line 10
    invoke-interface {p1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v5, v3, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 19
    :cond_4f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v9, :cond_79

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-eqz p4, :cond_5f

    add-int/lit8 v2, v0, -0x2

    :cond_5f
    add-int/lit8 v0, v2, 0x1

    .line 24
    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 25
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 26
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt v0, v9, :cond_4f

    return-object p1

    :cond_79
    return-object v8
.end method

.method private updateStyleAndText()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleImp(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    return-void
.end method

.method private updateStyleImp(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a7

    .line 1
    const-string v0, "lines"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_15

    .line 2
    invoke-static {p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getLines(Ljava/util/Map;)I

    move-result v0

    if-lez v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, -0x1

    .line 3
    :goto_13
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    .line 5
    :cond_15
    const-string v0, "fontSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {p1, v0, v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    .line 8
    :cond_33
    const-string v0, "fontWeight"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 9
    invoke-static {p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    .line 11
    :cond_41
    const-string v0, "fontStyle"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 12
    invoke-static {p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    .line 14
    :cond_4f
    const-string v0, "color"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 15
    invoke-static {p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_67

    const/4 v0, 0x1

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    .line 16
    :goto_68
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    .line 18
    :cond_6a
    const-string/jumbo v0, "textDecoration"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 19
    invoke-static {p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 21
    :cond_79
    const-string v0, "fontFamily"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 22
    invoke-static {p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 24
    :cond_87
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v0

    invoke-static {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getTextAlignment(Ljava/util/Map;Z)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    .line 25
    invoke-static {p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    .line 26
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v0

    invoke-static {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result p1

    if-eq p1, v1, :cond_a7

    .line 28
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    :cond_a7
    return-void
.end method

.method private warmUpTextLayoutCache(Landroid/text/Layout;)Z
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p1, 0x1

    return p1

    :catch_7
    move-exception p1

    .line 4
    const-string v0, "TextWarmUp"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object v0

    .line 6
    :cond_11
    new-instance p1, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public forceRelayout()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutBefore()V

    .line 4
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    sget v1, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    sget v2, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->measure(FFII)V

    .line 7
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    invoke-virtual {p0, v0, v3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutAfter(FF)V

    return-void
.end method

.method public layoutAfter(FF)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p2, :cond_69

    .line 2
    iget-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    if-eqz v0, :cond_24

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_2a

    .line 5
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result p2

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2a

    .line 7
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    goto :goto_2a

    .line 10
    :cond_24
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 11
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 14
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz p1, :cond_50

    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_50

    .line 17
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->warmUpTextLayoutCache(Landroid/text/Layout;)Z

    .line 20
    :cond_50
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->swap()V

    .line 21
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    new-instance p2, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;

    invoke-direct {p2, p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;-><init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)V

    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 28
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method public layoutBefore()V
    .registers 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    sget v2, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    if-ne p3, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-direct {p0, v1, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->getTextWidth(Landroid/text/TextPaint;FZ)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4d

    .line 4
    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    if-eqz v2, :cond_4d

    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, v0, p3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 6
    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3f

    .line 10
    :cond_34
    iget-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 13
    :goto_3f
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_55

    .line 14
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_55

    .line 17
    :cond_4d
    sget v0, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p3, v0, :cond_52

    const/4 p1, 0x0

    :cond_52
    if-ne p4, v0, :cond_55

    const/4 p2, 0x0

    .line 24
    :cond_55
    :goto_55
    iput p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    .line 25
    iput p2, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    return-void
.end method

.method protected setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .registers 6

    .line 1
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method protected updateSpannable(Landroid/text/Spannable;I)V
    .registers 10

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_20

    .line 6
    :cond_1a
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    :goto_20
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    if-eq v0, v6, :cond_31

    .line 10
    new-instance v2, Lcom/taobao/weex/dom/WXLineHeightSpan;

    invoke-direct {v2, v0}, Lcom/taobao/weex/dom/WXLineHeightSpan;-><init>(I)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_34

    :cond_31
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 13
    :goto_34
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    iget-object p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-direct {v2, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 15
    iget p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    if-ne p1, v6, :cond_4b

    iget p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    if-ne p1, v6, :cond_4b

    iget-object p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    if-eqz p1, :cond_5a

    .line 16
    :cond_4b
    new-instance v2, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    iget p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    iget p2, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    iget-object v3, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 19
    :cond_5a
    iget-boolean p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    if-eqz p1, :cond_65

    .line 20
    iget-object p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget p2, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    :cond_65
    iget-object p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object p2, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-eq p1, p2, :cond_71

    sget-object p2, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-ne p1, p2, :cond_70

    goto :goto_71

    :cond_70
    return-void

    .line 24
    :cond_71
    :goto_71
    new-instance v2, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object p1, v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-direct {v2, p1}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    return-void
.end method

###### Class com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement.AnonymousClass1 (com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement$1)
.class Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutAfter(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;


# direct methods
.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$000(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$200(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$100(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->updateExtra(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

###### Class com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement.SetSpanOperation (com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement$SetSpanOperation)
.class Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSpanOperation"
.end annotation


# instance fields
.field protected final end:I

.field protected final flag:I

.field protected final start:I

.field final synthetic this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

.field protected final what:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;)V
    .registers 11

    const/16 v5, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;-><init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;I)V

    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;I)V
    .registers 6

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->start:I

    .line 4
    iput p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->end:I

    .line 5
    iput-object p4, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->what:Ljava/lang/Object;

    .line 6
    iput p5, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->flag:I

    return-void
.end method


# virtual methods
.method public execute(Landroid/text/Spannable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->what:Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->start:I

    iget v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->end:I

    iget v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->flag:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
