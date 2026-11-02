###### Class com.taobao.weex.dom.TextDecorationSpan (com.taobao.weex.dom.TextDecorationSpan)
.class public Lcom/taobao/weex/dom/TextDecorationSpan;
.super Landroid/text/style/CharacterStyle;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/dom/TextDecorationSpan;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/taobao/weex/dom/TextDecorationSpan$1;->$SwitchMap$com$taobao$weex$ui$component$WXTextDecoration:[I

    iget-object v1, p0, Lcom/taobao/weex/dom/TextDecorationSpan;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    return-void

    .line 11
    :cond_15
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    return-void

    .line 13
    :cond_1c
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    return-void

    .line 15
    :cond_23
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 16
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    return-void
.end method

###### Class com.taobao.weex.dom.TextDecorationSpan.AnonymousClass1 (com.taobao.weex.dom.TextDecorationSpan$1)
.class synthetic Lcom/taobao/weex/dom/TextDecorationSpan$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/dom/TextDecorationSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$taobao$weex$ui$component$WXTextDecoration:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/ui/component/WXTextDecoration;->values()[Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/weex/dom/TextDecorationSpan$1;->$SwitchMap$com$taobao$weex$ui$component$WXTextDecoration:[I

    :try_start_9
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/taobao/weex/dom/TextDecorationSpan$1;->$SwitchMap$com$taobao$weex$ui$component$WXTextDecoration:[I

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/taobao/weex/dom/TextDecorationSpan$1;->$SwitchMap$com$taobao$weex$ui$component$WXTextDecoration:[I

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
