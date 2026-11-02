###### Class com.taobao.weex.ui.component.AbstractEditComponent (com.taobao.weex.ui.component.AbstractEditComponent)
.class public abstract Lcom/taobao/weex/ui/component/AbstractEditComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$ReturnTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/WXEditText;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TEXT_FORMAT_REPEAT:I = 0x3


# instance fields
.field private mAutoFocus:Z

.field private mBeforeText:Ljava/lang/String;

.field private mEditorAction:I

.field private mEditorActionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView$OnEditorActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatRepeatCount:I

.field private mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeepSelectionIndex:Z

.field private mLastValue:Ljava/lang/String;

.field private mLineHeight:I

.field private mListeningKeyboard:Z

.field private mMax:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mReturnKeyType:Ljava/lang/String;

.field private mTextChangedEventDispatcher:Landroid/text/TextWatcher;

.field private mTextChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    .line 4
    const-string/jumbo p2, "text"

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    const/4 p1, 0x6

    .line 8
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    .line 9
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    .line 13
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 14
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    .line 15
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    .line 18
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    .line 21
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    .line 134
    new-instance p1, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    .line 135
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 136
    new-instance p1, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    return p0
.end method

.method static synthetic access$1300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/taobao/weex/ui/component/AbstractEditComponent;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return p1
.end method

.method private addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1b

    .line 1
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    :cond_1b
    :goto_1b
    return-void
.end method

.method private applyOnClickListener()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    return-void
.end method

.method private decideSoftKeyboard()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1e

    .line 4
    new-instance v2, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_3e

    .line 1
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    const-string/jumbo v0, "value"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timeStamp"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string p2, "attrs"

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3e
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_ae

    goto/16 :goto_6e

    :sswitch_14
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_6e

    :cond_1d
    const/4 v5, 0x7

    goto :goto_6e

    :sswitch_1f
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_6e

    :cond_28
    const/4 v5, 0x6

    goto :goto_6e

    :sswitch_2a
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_6e

    :cond_33
    const/4 v5, 0x5

    goto :goto_6e

    :sswitch_35
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_6e

    :cond_3f
    const/4 v5, 0x4

    goto :goto_6e

    :sswitch_41
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_6e

    :cond_4a
    const/4 v5, 0x3

    goto :goto_6e

    :sswitch_4c
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_6e

    :cond_56
    const/4 v5, 0x2

    goto :goto_6e

    :sswitch_58
    const-string/jumbo v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_6e

    :cond_62
    const/4 v5, 0x1

    goto :goto_6e

    :sswitch_64
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x0

    :goto_6e
    packed-switch v5, :pswitch_data_d0

    return v3

    :pswitch_72
    return v1

    .line 17
    :pswitch_73
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x81

    if-eqz p1, :cond_88

    .line 18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_88
    return v0

    :pswitch_89
    const/16 p1, 0x21

    return p1

    .line 26
    :pswitch_8c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9b

    .line 27
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    :cond_9b
    return v4

    .line 28
    :pswitch_9c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    return v4

    :pswitch_a6
    const/16 p1, 0x11

    return p1

    :pswitch_a9
    return v2

    :pswitch_aa
    const/16 p1, 0x2002

    return p1

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x3da724b7 -> :sswitch_64
        0x1c01b -> :sswitch_58
        0x1c56f -> :sswitch_4c
        0x2eefae -> :sswitch_41
        0x3652cd -> :sswitch_35
        0x5c24b9c -> :sswitch_2a
        0x4889ba9b -> :sswitch_1f
        0x6ae9bb7b -> :sswitch_14
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a9
        :pswitch_a6
        :pswitch_9c
        :pswitch_8c
        :pswitch_89
        :pswitch_73
        :pswitch_72
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v0

    const v1, 0x800005

    const v2, 0x800003

    if-eqz v0, :cond_10

    const v0, 0x800005

    goto :goto_13

    :cond_10
    const v0, 0x800003

    .line 3
    :goto_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_37

    .line 7
    :cond_1a
    const-string v3, "left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    return v2

    .line 9
    :cond_23
    const-string v2, "center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 p1, 0x11

    return p1

    .line 11
    :cond_2e
    const-string v2, "right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    return v1

    :cond_37
    :goto_37
    return v0
.end method

.method private hideSoftKeyboard()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method private parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_89

    if-nez p2, :cond_7

    goto/16 :goto_89

    .line 1
    :cond_7
    const-string v1, "/[\\S]+/[i]?[m]?[g]?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "WXInput"

    if-nez v1, :cond_2b

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Illegal js pattern syntax: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_2b
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string v1, "i"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x2

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    .line 15
    :goto_50
    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    or-int/lit8 v1, v1, 0x20

    .line 19
    :cond_5a
    const-string v4, "g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 25
    :try_start_60
    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_64
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_60 .. :try_end_64} :catch_65

    goto :goto_77

    .line 27
    :catch_65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Pattern syntax error: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_77
    if-nez p1, :cond_7a

    return-object v0

    .line 33
    :cond_7a
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-direct {v1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    .line 34
    invoke-static {v1, v3}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2102(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Z)Z

    .line 35
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2202(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 36
    invoke-static {v1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2302(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :cond_89
    :goto_89
    return-object v0
.end method

.method private showSoftKeyboard()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 18
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5a

    .line 5
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    const-string v1, "change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 8
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 24
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_3f

    .line 43
    :cond_2f
    const-string v0, "input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 44
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    :cond_3f
    :goto_3f
    const-string v0, "return"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 75
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    :cond_4f
    const-string v0, "keyboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "textAlign"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_16

    const v0, 0x800003

    .line 6
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    const-string v0, "#999999"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2b

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 12
    :cond_2b
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public blur()V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->interceptFocus()V

    .line 6
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 7
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    :cond_21
    return-void
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 7
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_25
    const-string p1, "black"

    return-object p1
.end method

.method public destroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->destroy()V

    .line 5
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    if-eqz v0, :cond_23

    .line 7
    :try_start_16
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;->execute()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    .line 10
    const-string v1, "Unregister throw "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method public focus()V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_28

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->ignoreFocus()V

    .line 6
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 9
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    :cond_28
    return-void
.end method

.method protected getMeasureHeight()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getMeasuredLineHeight()F

    move-result v0

    return v0
.end method

.method protected final getMeasuredLineHeight()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    if-lez v0, :cond_9

    int-to-float v0, v0

    return v0

    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 3
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 4
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 12
    :cond_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionStart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "selectionEnd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_31
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected getVerticalGravity()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;
    .registers 4

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-object v0
.end method

.method protected isConsumeTouch()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected layoutDirectionDidChanged(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string/jumbo v0, "textAlign"

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_16

    const p1, 0x800003

    .line 6
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_2c

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2c
    return-void
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method public performOnChange(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "change"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 3
    :goto_14
    invoke-direct {p0, v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public setAutofocus(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autofocus"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 6
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 10
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    return-void

    .line 12
    :cond_21
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1d

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1d
    return-void
.end method

.method public setFontSize(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fontSize"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    const-string v1, "fontSize"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_32
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "lines"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    return-void
.end method

.method public setMax(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "max"
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    return-void
.end method

.method public setMaxLength(I)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxLength"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMaxlength(I)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxlength"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "min"
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholder"
    .end annotation

    if-eqz p1, :cond_12

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 4
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public setPlaceholderColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderColor"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1d

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_1d
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_1e2

    goto/16 :goto_e9

    :sswitch_12
    const-string v0, "autofocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_e9

    :cond_1c
    const/16 v3, 0x10

    goto/16 :goto_e9

    :sswitch_20
    const-string v0, "allowCopyPaste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_e9

    :cond_2a
    const/16 v3, 0xf

    goto/16 :goto_e9

    :sswitch_2e
    const-string v0, "returnKeyType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_e9

    :cond_38
    const/16 v3, 0xe

    goto/16 :goto_e9

    :sswitch_3c
    const-string v0, "singleline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_e9

    :cond_46
    const/16 v3, 0xd

    goto/16 :goto_e9

    :sswitch_4a
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_e9

    :cond_54
    const/16 v3, 0xc

    goto/16 :goto_e9

    :sswitch_58
    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_e9

    :cond_62
    const/16 v3, 0xb

    goto/16 :goto_e9

    :sswitch_66
    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_e9

    :cond_70
    const/16 v3, 0xa

    goto/16 :goto_e9

    :sswitch_74
    const-string v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_e9

    :cond_7e
    const/16 v3, 0x9

    goto/16 :goto_e9

    :sswitch_82
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_e9

    :cond_8c
    const/16 v3, 0x8

    goto/16 :goto_e9

    :sswitch_90
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_e9

    :cond_99
    const/4 v3, 0x7

    goto :goto_e9

    :sswitch_9b
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_e9

    :cond_a5
    const/4 v3, 0x6

    goto :goto_e9

    :sswitch_a7
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto :goto_e9

    :cond_b0
    const/4 v3, 0x5

    goto :goto_e9

    :sswitch_b2
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_e9

    :cond_bb
    const/4 v3, 0x4

    goto :goto_e9

    :sswitch_bd
    const-string v0, "maxLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    goto :goto_e9

    :cond_c6
    const/4 v3, 0x3

    goto :goto_e9

    :sswitch_c8
    const-string/jumbo v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_e9

    :cond_d2
    const/4 v3, 0x2

    goto :goto_e9

    :sswitch_d4
    const-string v0, "placeholderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    goto :goto_e9

    :cond_dd
    const/4 v3, 0x1

    goto :goto_e9

    :sswitch_df
    const-string v0, "keepSelectionIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto :goto_e9

    :cond_e8
    const/4 v3, 0x0

    :goto_e9
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_228

    .line 89
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 90
    :pswitch_f2
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_ff

    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setAutofocus(Z)V

    :cond_ff
    return v2

    .line 143
    :pswitch_100
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 144
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_119

    .line 145
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V

    :cond_119
    return v2

    .line 146
    :pswitch_11a
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setReturnKeyType(Ljava/lang/String;)V

    return v2

    .line 147
    :pswitch_122
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_12f

    .line 149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setSingleLine(Z)V

    :cond_12f
    return v2

    .line 150
    :pswitch_130
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_139

    .line 152
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholder(Ljava/lang/String;)V

    :cond_139
    return v2

    .line 175
    :pswitch_13a
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_143

    .line 177
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setFontSize(Ljava/lang/String;)V

    :cond_143
    return v2

    .line 178
    :pswitch_144
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_171

    .line 179
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_171

    .line 180
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_163

    .line 181
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 182
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_171

    .line 184
    :cond_163
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 185
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_171
    :goto_171
    return v2

    .line 240
    :pswitch_172
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_17f

    .line 242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    :cond_17f
    return v2

    .line 243
    :pswitch_180
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_18d

    .line 245
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setLines(I)V

    :cond_18d
    return v2

    .line 246
    :pswitch_18e
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_197

    .line 248
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setColor(Ljava/lang/String;)V

    :cond_197
    return v2

    .line 249
    :pswitch_198
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a1

    .line 251
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setType(Ljava/lang/String;)V

    :cond_1a1
    return v2

    .line 297
    :pswitch_1a2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMin(Ljava/lang/String;)V

    return v2

    .line 298
    :pswitch_1aa
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMax(Ljava/lang/String;)V

    return v2

    .line 299
    :pswitch_1b2
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1bf

    .line 301
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    :cond_1bf
    return v2

    .line 302
    :pswitch_1c0
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c9

    .line 304
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setTextAlign(Ljava/lang/String;)V

    :cond_1c9
    return v2

    .line 305
    :pswitch_1ca
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d3

    .line 307
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholderColor(Ljava/lang/String;)V

    :cond_1d3
    return v2

    .line 364
    :pswitch_1d4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 365
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    return v2

    nop

    :sswitch_data_1e2
    .sparse-switch
        -0x712b3675 -> :sswitch_df
        -0x5dfbd650 -> :sswitch_d4
        -0x3f826a28 -> :sswitch_c8
        -0x2f2bce96 -> :sswitch_bd
        0x1a564 -> :sswitch_b2
        0x1a652 -> :sswitch_a7
        0x368f3a -> :sswitch_9b
        0x5a72f63 -> :sswitch_90
        0x6234eff -> :sswitch_82
        0x76f454a -> :sswitch_74
        0x10263a7c -> :sswitch_66
        0x15caa0f0 -> :sswitch_58
        0x23a88573 -> :sswitch_4a
        0x367fd03c -> :sswitch_3c
        0x38797ee9 -> :sswitch_2e
        0x60e3fed5 -> :sswitch_20
        0x6365ac89 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_1d4
        :pswitch_1ca
        :pswitch_1c0
        :pswitch_1b2
        :pswitch_1aa
        :pswitch_1a2
        :pswitch_198
        :pswitch_18e
        :pswitch_180
        :pswitch_172
        :pswitch_144
        :pswitch_13a
        :pswitch_130
        :pswitch_122
        :pswitch_11a
        :pswitch_100
        :pswitch_f2
    .end packed-switch
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "returnKeyType"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_88

    .line 4
    :cond_10
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_8a

    goto :goto_64

    :sswitch_23
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_64

    :cond_2c
    const/4 v6, 0x5

    goto :goto_64

    :sswitch_2e
    const-string v0, "send"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_64

    :cond_37
    const/4 v6, 0x4

    goto :goto_64

    :sswitch_39
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_64

    :cond_42
    const/4 v6, 0x3

    goto :goto_64

    :sswitch_44
    const-string v0, "done"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_64

    :cond_4d
    const/4 v6, 0x2

    goto :goto_64

    :sswitch_4f
    const-string v0, "go"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_64

    :cond_58
    const/4 v6, 0x1

    goto :goto_64

    :sswitch_5a
    const-string v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_64

    :cond_63
    const/4 v6, 0x0

    :goto_64
    packed-switch v6, :pswitch_data_a4

    goto :goto_7a

    .line 7
    :pswitch_68
    iput v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 19
    :pswitch_6b
    iput v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 20
    :pswitch_6e
    iput v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    :pswitch_71
    const/4 p1, 0x6

    .line 29
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 30
    :pswitch_75
    iput v4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_7a

    .line 36
    :pswitch_78
    iput v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    .line 49
    :goto_7a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->blur()V

    .line 50
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->setImeOptions(I)V

    :cond_88
    :goto_88
    return-void

    nop

    :sswitch_data_8a
    .sparse-switch
        -0x36059a58 -> :sswitch_5a
        0xce8 -> :sswitch_4f
        0x2f2382 -> :sswitch_44
        0x338af3 -> :sswitch_39
        0x35cf88 -> :sswitch_2e
        0x5c13d641 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_75
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
    .end packed-switch
.end method

.method public setSelectionRange(II)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-gt p1, v1, :cond_1d

    if-le p2, v1, :cond_17

    goto :goto_1d

    .line 6
    :cond_17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->focus()V

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "singleline"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "textAlign"
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_14

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_14
    return-void
.end method

.method public setTextFormatter(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "formatRule"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "formatReplace"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "recoverRule"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v3, "recoverReplace"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object v0

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object p1

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    .line 10
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    :cond_2c
    return-void

    :catchall_2d
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "type"
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "weex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_50

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_50

    .line 5
    :cond_25
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInputType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_50

    .line 10
    :cond_4d
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->applyOnClickListener()V

    :cond_50
    :goto_50
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-nez v0, :cond_9

    goto :goto_13

    .line 4
    :cond_9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return-void

    :cond_14
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    if-eqz v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_27
    if-nez p1, :cond_2a

    const/4 v1, 0x0

    .line 12
    :cond_2a
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method protected updateStyleAndAttrs()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->size()I

    move-result v0

    if-lez v0, :cond_8e

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "fontSize"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2c

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v3

    invoke-static {v0, v2, v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    goto :goto_2d

    :cond_2c
    const/4 v0, -0x1

    .line 8
    :goto_2d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    const-string v3, "fontFamily"

    invoke-virtual {v2, v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 12
    :goto_43
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    goto :goto_59

    :cond_58
    const/4 v3, -0x1

    .line 16
    :goto_59
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v4

    goto :goto_6f

    :cond_6e
    const/4 v4, -0x1

    .line 20
    :goto_6f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result v5

    if-eq v5, v1, :cond_7f

    .line 22
    iput v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    :cond_7f
    if-eq v0, v1, :cond_87

    .line 25
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_87
    if-eqz v2, :cond_8e

    .line 28
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3, v4, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    :cond_8e
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass1 (com.taobao.weex.ui.component.AbstractEditComponent$1)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutAfter(FF)V
    .registers 3

    return-void
.end method

.method public layoutBefore()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->updateStyleAndAttrs()V

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p2

    if-nez p2, :cond_a

    sget p2, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p3, p2, :cond_b

    :cond_a
    const/4 p1, 0x0

    .line 4
    :cond_b
    iput p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getMeasureHeight()F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass10 (com.taobao.weex.ui.component.AbstractEditComponent$10)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$10;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass11 (com.taobao.weex.ui.component.AbstractEditComponent$11)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$11;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->decideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2a
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass12 (com.taobao.weex.ui.component.AbstractEditComponent$12)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$12;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private handled:Z

.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1800(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v1, :cond_a

    .line 3
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v1

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    goto :goto_a

    .line 6
    :cond_22
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;->handled:Z

    return p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass13 (com.taobao.weex.ui.component.AbstractEditComponent$13)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$13;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardEvent(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_74

    .line 5
    :cond_1d
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isShow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_66

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10
    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    int-to-float v1, v2

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .line 11
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 12
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "keyboardSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_66
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string v2, "keyboard"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6d
    if-nez p1, :cond_74

    .line 19
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->blur()V

    :cond_74
    :goto_74
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass2 (com.taobao.weex.ui.component.AbstractEditComponent$2)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 4

    if-nez p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string v1, ":focus"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass3 (com.taobao.weex.ui.component.AbstractEditComponent$3)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$100(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 10
    :cond_1b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 11
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->interceptFocus()V

    .line 14
    :cond_31
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    return-void

    .line 15
    :cond_37
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 16
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 17
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->interceptFocus()V

    .line 19
    :cond_4d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickDate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass4 (com.taobao.weex.ui.component.AbstractEditComponent$4)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$editText:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 3
    invoke-interface {v1, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 3
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_70

    .line 6
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 7
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    .line 8
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object p4

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 14
    :cond_70
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 17
    :cond_75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 19
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_87

    :cond_97
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass5 (com.taobao.weex.ui.component.AbstractEditComponent$5)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 4

    if-eqz p1, :cond_12

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 3
    :cond_12
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 4
    const-string p1, ""

    .line 5
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "change"

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;->val$text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    :cond_46
    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass6 (com.taobao.weex.ui.component.AbstractEditComponent$6)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p1

    if-ne p2, p1, :cond_54

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_12

    .line 3
    const-string p1, ""

    .line 4
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 5
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "change"

    invoke-static {p2, p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    :cond_3c
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 9
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->interceptFocus()V

    .line 11
    :cond_4d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    const/4 p1, 0x1

    return p1

    :cond_54
    const/4 p1, 0x0

    return p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass7 (com.taobao.weex.ui.component.AbstractEditComponent$7)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 2
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1302(Lcom/taobao/weex/ui/component/AbstractEditComponent;Z)Z

    .line 3
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 7
    :cond_18
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    return-void

    .line 11
    :cond_29
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "input"

    invoke-static {p2, p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass8 (com.taobao.weex.ui.component.AbstractEditComponent$8)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$8;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p3

    if-ne p2, p3, :cond_30

    .line 2
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "returnKeyType"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "value"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string p3, "return"

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.AnonymousClass9 (com.taobao.weex.ui.component.AbstractEditComponent$9)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.PatternWrapper (com.taobao.weex.ui.component.AbstractEditComponent$PatternWrapper)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternWrapper"
.end annotation


# instance fields
.field private global:Z

.field private matcher:Ljava/util/regex/Pattern;

.field private replace:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->replace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->replace:Ljava/lang/String;

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.AbstractEditComponent.ReturnTypes (com.taobao.weex.ui.component.AbstractEditComponent$ReturnTypes)
.class interface abstract Lcom/taobao/weex/ui/component/AbstractEditComponent$ReturnTypes;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ReturnTypes"
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DONE:Ljava/lang/String; = "done"

.field public static final GO:Ljava/lang/String; = "go"

.field public static final NEXT:Ljava/lang/String; = "next"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SEND:Ljava/lang/String; = "send"

###### Class com.taobao.weex.ui.component.AbstractEditComponent.TextFormatter (com.taobao.weex.ui.component.AbstractEditComponent$TextFormatter)
.class Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextFormatter"
.end annotation


# instance fields
.field private format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

.field private recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .line 4
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    if-eqz v0, :cond_33

    .line 2
    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    :cond_33
    return-object p1

    :catchall_34
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[format] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WXInput"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private recover(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    if-eqz v0, :cond_33

    .line 2
    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    :cond_33
    return-object p1

    :catchall_34
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[formatted] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WXInput"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
