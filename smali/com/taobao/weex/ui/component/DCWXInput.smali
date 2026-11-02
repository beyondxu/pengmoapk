###### Class com.taobao.weex.ui.component.DCWXInput (com.taobao.weex.ui.component.DCWXInput)
.class public Lcom/taobao/weex/ui/component/DCWXInput;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;,
        Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;,
        Lcom/taobao/weex/ui/component/DCWXInput$ReturnTypes;
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
.field final ADJUST_POSITION:Ljava/lang/String;

.field final PASSWORD:Ljava/lang/String;

.field private cursor:I

.field isConfirmHold:Z

.field private isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isNeedConfirm:Z

.field private isPassword:Z

.field keyboardHeight:F

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

.field private mFontFamily:Ljava/lang/String;

.field private mFormatRepeatCount:I

.field private mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

.field private mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLineHeight:I

.field private mListeningConfirm:Z

.field private mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

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

.field protected mType:Ljava/lang/String;

.field private mTypefaceObserver:Landroid/content/BroadcastReceiver;

.field private measureHeight:F

.field private measureWidht:F

.field private placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

.field private placeholderTextAlign:Ljava/lang/String;

.field private selectionEnd:I

.field private selectionStart:I

.field private textAlign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    .line 3
    const-string/jumbo p1, "text"

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    const/4 p2, 0x6

    .line 5
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    .line 8
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    .line 9
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    .line 11
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    .line 14
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    .line 17
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    .line 19
    const-string p3, "adjustPosition"

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->ADJUST_POSITION:Ljava/lang/String;

    .line 20
    const-string p3, "password"

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->PASSWORD:Ljava/lang/String;

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    .line 22
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isNeedConfirm:Z

    .line 24
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    const p2, 0x7fffffff

    .line 26
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    .line 27
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    .line 28
    const-string p2, "left"

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    .line 29
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    const/high16 p2, -0x40800000    # -1.0f

    .line 30
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    .line 31
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    .line 330
    new-instance p2, Lcom/taobao/weex/ui/component/DCWXInput$6;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/DCWXInput$6;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    .line 640
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 641
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->interceptFocusAndBlurEvent()V

    .line 642
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 643
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXInput$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$1;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/DCWXInput;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    return p1
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/taobao/weex/ui/component/DCWXInput;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    return p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    return p0
.end method

.method static synthetic access$1102(Lcom/taobao/weex/ui/component/DCWXInput;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatRepeatCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/taobao/weex/ui/component/DCWXInput;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->hostViewFocus(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    return p0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->updateStyleAndAttrs()V

    return-void
.end method

.method static synthetic access$2000(Lcom/taobao/weex/ui/component/DCWXInput;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    return-void
.end method

.method static synthetic access$2102(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderTextAlign:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/component/DCWXInput;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    return p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/DCWXInput;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    return p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method private final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$13;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$13;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 18
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-void
.end method

.method private addEditorChangeListener()V
    .registers 2

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$3;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_19

    .line 1
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$14;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$14;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->setkeyBoardHeightChangeListener(Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;)V

    :cond_19
    :goto_19
    return-void
.end method

.method private decideSoftKeyboard()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1c

    .line 4
    new-instance v2, Lcom/taobao/weex/ui/component/DCWXInput$12;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/DCWXInput$12;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_be

    goto/16 :goto_7d

    :sswitch_15
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_7d

    :cond_1f
    const/16 v6, 0x8

    goto/16 :goto_7d

    :sswitch_23
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_7d

    :cond_2c
    const/4 v6, 0x7

    goto :goto_7d

    :sswitch_2e
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_7d

    :cond_37
    const/4 v6, 0x6

    goto :goto_7d

    :sswitch_39
    const-string v0, "digit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_7d

    :cond_42
    const/4 v6, 0x5

    goto :goto_7d

    :sswitch_44
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_7d

    :cond_4e
    const/4 v6, 0x4

    goto :goto_7d

    :sswitch_50
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto :goto_7d

    :cond_59
    const/4 v6, 0x3

    goto :goto_7d

    :sswitch_5b
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto :goto_7d

    :cond_65
    const/4 v6, 0x2

    goto :goto_7d

    :sswitch_67
    const-string/jumbo v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto :goto_7d

    :cond_71
    const/4 v6, 0x1

    goto :goto_7d

    :sswitch_73
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v6, 0x0

    :goto_7d
    packed-switch v6, :pswitch_data_e4

    return v4

    :pswitch_81
    return v1

    .line 17
    :pswitch_82
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x81

    if-eqz p1, :cond_97

    .line 18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_97
    return v0

    :pswitch_98
    const/16 p1, 0x21

    return p1

    :pswitch_9b
    const/16 p1, 0x2002

    return p1

    .line 26
    :pswitch_9e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 27
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    :cond_ad
    return v5

    .line 28
    :pswitch_ae
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    return v5

    :pswitch_b8
    const/16 p1, 0x11

    return p1

    :pswitch_bb
    return v2

    :pswitch_bc
    return v3

    nop

    :sswitch_data_be
    .sparse-switch
        -0x3da724b7 -> :sswitch_73
        0x1c01b -> :sswitch_67
        0x1c56f -> :sswitch_5b
        0x2eefae -> :sswitch_50
        0x3652cd -> :sswitch_44
        0x5b2792d -> :sswitch_39
        0x5c24b9c -> :sswitch_2e
        0x4889ba9b -> :sswitch_23
        0x6ae9bb7b -> :sswitch_15
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_bb
        :pswitch_b8
        :pswitch_ae
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_82
        :pswitch_81
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .registers 7

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

    goto :goto_4c

    .line 7
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_52

    goto :goto_49

    :sswitch_29
    const-string v3, "right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_49

    :cond_32
    const/4 v4, 0x2

    goto :goto_49

    :sswitch_34
    const-string v3, "left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_49

    :cond_3d
    const/4 v4, 0x1

    goto :goto_49

    :sswitch_3f
    const-string v3, "center"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    packed-switch v4, :pswitch_data_60

    :goto_4c
    return v0

    :pswitch_4d
    return v1

    :pswitch_4e
    return v2

    :pswitch_4f
    const/16 p1, 0x11

    return p1

    :sswitch_data_52
    .sparse-switch
        -0x514d33ab -> :sswitch_3f
        0x32a007 -> :sswitch_34
        0x677c21c -> :sswitch_29
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
    .end packed-switch
.end method

.method private hostViewFocus(Landroid/widget/EditText;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 5
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V

    return-void
.end method

.method private parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;
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
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-direct {v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$1;)V

    .line 34
    invoke-static {v1, v3}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2702(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Z)Z

    .line 35
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2802(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 36
    invoke-static {v1, p2}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2902(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :cond_89
    :goto_89
    return-object v0
.end method

.method private registerTypefaceObserver(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2
    const-string p1, "WXText"

    const-string v0, "ApplicationContent is null on register typeface observer"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_e
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFontFamily:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_15

    return-void

    .line 11
    :cond_15
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXInput$7;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$7;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    .line 30
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "type_face_available"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setSelectionRange(II)V
    .registers 6

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_2a

    if-eq p1, v0, :cond_2a

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-le p1, p2, :cond_1c

    goto :goto_2a

    :cond_1c
    const/4 v2, 0x0

    if-gez p1, :cond_20

    const/4 p1, 0x0

    :cond_20
    if-le p2, v1, :cond_23

    move p2, v1

    :cond_23
    if-gez p2, :cond_26

    goto :goto_27

    :cond_26
    move v2, p2

    .line 15
    :goto_27
    invoke-virtual {v0, p1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private showSoftKeyboard()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$10;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateStyleAndAttrs()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->size()I

    move-result v0

    if-lez v0, :cond_90

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "fontSize"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2d

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getViewPortWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    goto :goto_2e

    :cond_2d
    const/4 v0, -0x1

    .line 8
    :goto_2e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    const-string v3, "fontFamily"

    invoke-virtual {v2, v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    .line 12
    :goto_44
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    goto :goto_5a

    :cond_59
    const/4 v3, -0x1

    .line 16
    :goto_5a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v4

    goto :goto_70

    :cond_6f
    const/4 v4, -0x1

    .line 20
    :goto_70
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getViewPortWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result v5

    if-eq v5, v1, :cond_81

    .line 22
    iput v5, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    :cond_81
    if-eq v0, v1, :cond_89

    .line 25
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_89
    if-eqz v2, :cond_90

    .line 28
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3, v4, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    :cond_90
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3e

    .line 4
    :cond_d
    const-string v0, "input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$5;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$5;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    :cond_1d
    const-string v0, "confirm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mListeningConfirm:Z

    .line 51
    :cond_28
    const-string v0, "focus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "blur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 52
    :cond_38
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->setFocusAndBlur()V

    .line 54
    :cond_3b
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

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
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_16

    const v0, 0x800003

    .line 6
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

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
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$4;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

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

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

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
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V

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
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorActionListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_11
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 11
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->destroy()V

    :cond_27
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
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V

    :cond_28
    return-void
.end method

.method public getCursor(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    const-string v2, "cursor"

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2c
    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_34
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method protected getMeasureHeight()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getMeasuredLineHeight()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getMeasureHeight()F

    move-result v1

    :goto_f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    return v0
.end method

.method final getMeasuredLineHeight()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    if-lez v0, :cond_9

    int-to-float v0, v0

    return v0

    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
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

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalGravity()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method hideSoftKeyboard()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$11;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXInput$11;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;

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
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    const/4 p1, 0x6

    .line 4
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->setImeOptions(I)V

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
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_16

    const p1, 0x800003

    .line 6
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2a
    return-void
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 7

    .line 2
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 3
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    .line 4
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureWidht:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 6
    :cond_1b
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    .line 7
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->measureHeight:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 9
    :cond_32
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXInput$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXInput$2;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 29
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isNeedConfirm:Z

    if-eqz p1, :cond_44

    .line 30
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->addEditorChangeListener()V

    :cond_44
    return-void
.end method

.method public setAdjustPosition(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "adjustPosition"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String;

    goto :goto_17

    :cond_15
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    .line 4
    :goto_17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->setInputSoftMode(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public setAutofocus(Z)V
    .registers 5
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
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_50

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->isFrameViewShow()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/component/DCWXInput$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$8;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 25
    :cond_32
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    if-eqz v1, :cond_3f

    .line 26
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    .line 28
    :cond_3f
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$9;-><init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    .line 46
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKInstance;->addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    return-void

    :cond_50
    if-eqz p1, :cond_56

    .line 50
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->hostViewFocus(Landroid/widget/EditText;)V

    goto :goto_59

    .line 52
    :cond_56
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V

    .line 53
    :goto_59
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

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

.method public setCursorSpacing(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "cursorSpacing"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->setCursorSpacing(F)V

    :cond_1f
    return-void
.end method

.method protected setFocusAndBlur()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->ismHasFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    :cond_d
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

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual/range {p0 .. p7}, Lcom/taobao/weex/ui/component/DCWXInput;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V
    .registers 8

    .line 2
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    return-void
.end method

.method protected setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

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

    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    const p1, 0x7fffffff

    .line 6
    :cond_d
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
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_17

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 4
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setPlaceholderClass(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderClass"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V

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

.method public setPlaceholderStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 19
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderStyle"
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_231

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_231

    .line 3
    :cond_e
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_34

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "placeholder"

    invoke-virtual {v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 5
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v4}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_34
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 9
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 12
    iget-object v5, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :cond_64
    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_206

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v13, "fontSize"

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, -0x1

    const/4 v12, 0x1

    sparse-switch v11, :sswitch_data_232

    :goto_8b
    const/4 v10, -0x1

    goto/16 :goto_f1

    :sswitch_8e
    const-string v11, "backgroundColor"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_97

    goto :goto_8b

    :cond_97
    const/16 v10, 0x8

    goto :goto_f1

    :sswitch_9a
    const-string/jumbo v11, "text-align"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a4

    goto :goto_8b

    :cond_a4
    const/4 v10, 0x7

    goto :goto_f1

    :sswitch_a6
    const-string v11, "background-color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_af

    goto :goto_8b

    :cond_af
    const/4 v10, 0x6

    goto :goto_f1

    :sswitch_b1
    const-string v11, "font-weight"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ba

    goto :goto_8b

    :cond_ba
    const/4 v10, 0x5

    goto :goto_f1

    :sswitch_bc
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c3

    goto :goto_8b

    :cond_c3
    const/4 v10, 0x4

    goto :goto_f1

    :sswitch_c5
    const-string v11, "color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ce

    goto :goto_8b

    :cond_ce
    const/4 v10, 0x3

    goto :goto_f1

    :sswitch_d0
    const-string v11, "fontWeight"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d9

    goto :goto_8b

    :cond_d9
    const/4 v10, 0x2

    goto :goto_f1

    :sswitch_db
    const-string/jumbo v11, "textAlign"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e5

    goto :goto_8b

    :cond_e5
    const/4 v10, 0x1

    goto :goto_f1

    :sswitch_e7
    const-string v11, "font-size"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f0

    goto :goto_8b

    :cond_f0
    const/4 v10, 0x0

    :goto_f1
    const/high16 v11, -0x80000000

    packed-switch v10, :pswitch_data_258

    goto/16 :goto_64

    .line 18
    :pswitch_f8
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-static {v8}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_64

    .line 21
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    goto/16 :goto_64

    .line 25
    :pswitch_10d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-static {v8}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_64

    .line 28
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto/16 :goto_64

    .line 41
    :pswitch_122
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_26e

    goto :goto_170

    :sswitch_135
    const-string v8, "bold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13e

    goto :goto_170

    :cond_13e
    const/16 v16, 0x4

    goto :goto_170

    :sswitch_141
    const-string v8, "900"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14a

    goto :goto_170

    :cond_14a
    const/16 v16, 0x3

    goto :goto_170

    :sswitch_14d
    const-string v8, "800"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_156

    goto :goto_170

    :cond_156
    const/16 v16, 0x2

    goto :goto_170

    :sswitch_159
    const-string v8, "700"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_162

    goto :goto_170

    :cond_162
    const/16 v16, 0x1

    goto :goto_170

    :sswitch_165
    const-string v8, "600"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16e

    goto :goto_170

    :cond_16e
    const/16 v16, 0x0

    :goto_170
    packed-switch v16, :pswitch_data_284

    .line 50
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_64

    .line 51
    :pswitch_17a
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_64

    .line 52
    :pswitch_181
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderTextAlign:Ljava/lang/String;

    .line 53
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_64

    .line 55
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_64

    .line 75
    :pswitch_1a9
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v8, "px"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1be

    .line 82
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1cb

    .line 83
    :cond_1be
    const-string/jumbo v8, "wx"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1cb

    .line 84
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_1cb
    :goto_1cb
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 87
    invoke-interface {v8, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v9

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v10

    invoke-static {v8, v9, v10}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v1, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    goto/16 :goto_64

    .line 92
    :cond_206
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v3, v1, v9, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v6, :cond_218

    .line 94
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v6, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_218
    if-eqz v7, :cond_221

    .line 96
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v7, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 97
    :cond_221
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v4, v9, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 98
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_231
    :goto_231
    return-void

    :sswitch_data_232
    .sparse-switch
        -0x5e89b141 -> :sswitch_e7
        -0x3f826a28 -> :sswitch_db
        -0x2bc67c59 -> :sswitch_d0
        0x5a72f63 -> :sswitch_c5
        0x15caa0f0 -> :sswitch_bc
        0x23b0f9b6 -> :sswitch_b1
        0x24147e04 -> :sswitch_a6
        0x2c7a9a65 -> :sswitch_9a
        0x4cb7f6d5 -> :sswitch_8e
    .end sparse-switch

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_1a9
        :pswitch_181
        :pswitch_122
        :pswitch_10d
        :pswitch_1a9
        :pswitch_122
        :pswitch_f8
        :pswitch_181
        :pswitch_f8
    .end packed-switch

    :sswitch_data_26e
    .sparse-switch
        0xd0b6 -> :sswitch_165
        0xd477 -> :sswitch_159
        0xd838 -> :sswitch_14d
        0xdbf9 -> :sswitch_141
        0x2e3a85 -> :sswitch_135
    .end sparse-switch

    :pswitch_data_284
    .packed-switch 0x0
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
    .end packed-switch
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_2ae

    goto/16 :goto_12d

    :sswitch_11
    const-string v0, "autoFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_12d

    :cond_1b
    const/16 v2, 0x15

    goto/16 :goto_12d

    :sswitch_1f
    const-string v0, "allowCopyPaste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_12d

    :cond_29
    const/16 v2, 0x14

    goto/16 :goto_12d

    :sswitch_2d
    const-string v0, "returnKeyType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_12d

    :cond_37
    const/16 v2, 0x13

    goto/16 :goto_12d

    :sswitch_3b
    const-string v0, "singleline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_12d

    :cond_45
    const/16 v2, 0x12

    goto/16 :goto_12d

    :sswitch_49
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_12d

    :cond_53
    const/16 v2, 0x11

    goto/16 :goto_12d

    :sswitch_57
    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_12d

    :cond_61
    const/16 v2, 0x10

    goto/16 :goto_12d

    :sswitch_65
    const-string v0, "confirmHold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_12d

    :cond_6f
    const/16 v2, 0xf

    goto/16 :goto_12d

    :sswitch_73
    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_12d

    :cond_7d
    const/16 v2, 0xe

    goto/16 :goto_12d

    :sswitch_81
    const-string v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_12d

    :cond_8b
    const/16 v2, 0xd

    goto/16 :goto_12d

    :sswitch_8f
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_12d

    :cond_99
    const/16 v2, 0xc

    goto/16 :goto_12d

    :sswitch_9d
    const-string v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto/16 :goto_12d

    :cond_a7
    const/16 v2, 0xb

    goto/16 :goto_12d

    :sswitch_ab
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto/16 :goto_12d

    :cond_b5
    const/16 v2, 0xa

    goto/16 :goto_12d

    :sswitch_b9
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto/16 :goto_12d

    :cond_c3
    const/16 v2, 0x9

    goto/16 :goto_12d

    :sswitch_c7
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto/16 :goto_12d

    :cond_d1
    const/16 v2, 0x8

    goto/16 :goto_12d

    :sswitch_d5
    const-string v0, "maxLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    goto :goto_12d

    :cond_de
    const/4 v2, 0x7

    goto :goto_12d

    :sswitch_e0
    const-string/jumbo v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto :goto_12d

    :cond_ea
    const/4 v2, 0x6

    goto :goto_12d

    :sswitch_ec
    const-string v0, "fontFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    goto :goto_12d

    :cond_f5
    const/4 v2, 0x5

    goto :goto_12d

    :sswitch_f7
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto :goto_12d

    :cond_100
    const/4 v2, 0x4

    goto :goto_12d

    :sswitch_102
    const-string v0, "placeholderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10b

    goto :goto_12d

    :cond_10b
    const/4 v2, 0x3

    goto :goto_12d

    :sswitch_10d
    const-string v0, "selectionEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    goto :goto_12d

    :cond_116
    const/4 v2, 0x2

    goto :goto_12d

    :sswitch_118
    const-string v0, "keepSelectionIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    goto :goto_12d

    :cond_121
    const/4 v2, 0x1

    goto :goto_12d

    :sswitch_123
    const-string v0, "selectionStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12c

    goto :goto_12d

    :cond_12c
    const/4 v2, 0x0

    :goto_12d
    const v0, 0x7fffffff

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_308

    goto/16 :goto_2a8

    .line 76
    :pswitch_136
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 77
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_14f

    .line 78
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V

    :cond_14f
    return v1

    .line 79
    :pswitch_150
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setReturnKeyType(Ljava/lang/String;)V

    return v1

    .line 80
    :pswitch_158
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_165

    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setSingleLine(Z)V

    :cond_165
    :pswitch_165
    return v1

    .line 83
    :pswitch_166
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16f

    .line 85
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setFontSize(Ljava/lang/String;)V

    :cond_16f
    return v1

    .line 139
    :pswitch_170
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    goto/16 :goto_2a8

    .line 140
    :pswitch_17e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    return v1

    .line 196
    :pswitch_1af
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1bc

    .line 198
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    :cond_1bc
    return v1

    .line 199
    :pswitch_1bd
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1ca

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setLines(I)V

    :cond_1ca
    return v1

    .line 202
    :pswitch_1cb
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V

    return v1

    .line 206
    :pswitch_1d9
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e2

    .line 208
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setColor(Ljava/lang/String;)V

    :cond_1e2
    :pswitch_1e2
    return v1

    .line 231
    :pswitch_1e3
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1f0

    .line 233
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setMaxLength(I)V

    :cond_1f0
    return v1

    .line 234
    :pswitch_1f1
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1fa

    .line 236
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setTextAlign(Ljava/lang/String;)V

    :cond_1fa
    return v1

    :pswitch_1fb
    if-eqz p2, :cond_22d

    .line 298
    :try_start_1fd
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object p1

    if-eqz p1, :cond_221

    .line 299
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_221

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_221

    .line 300
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_22d

    .line 302
    :cond_221
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->registerTypefaceObserver(Ljava/lang/String;)V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_228} :catch_229

    goto :goto_22d

    :catch_229
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_22d
    :goto_22d
    return v1

    .line 306
    :pswitch_22e
    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_24e

    .line 307
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-gt p1, p2, :cond_24e

    .line 308
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_275

    .line 309
    :cond_24e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p1, p2, :cond_275

    .line 310
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_275
    :goto_275
    return v1

    .line 311
    :pswitch_276
    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27f

    .line 313
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholderColor(Ljava/lang/String;)V

    :cond_27f
    return v1

    .line 394
    :pswitch_280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    .line 395
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    goto :goto_2a8

    :pswitch_294
    return v1

    .line 396
    :pswitch_295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    .line 397
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->setSelectionRange(II)V

    .line 419
    :goto_2a8
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_2ae
    .sparse-switch
        -0x7f6b85ca -> :sswitch_123
        -0x712b3675 -> :sswitch_118
        -0x61195c51 -> :sswitch_10d
        -0x5dfbd650 -> :sswitch_102
        -0x5069ecaa -> :sswitch_f7
        -0x48ff636d -> :sswitch_ec
        -0x3f826a28 -> :sswitch_e0
        -0x2f2bce96 -> :sswitch_d5
        0x1a564 -> :sswitch_c7
        0x1a652 -> :sswitch_b9
        0x5a72f63 -> :sswitch_ab
        0x5d154d8 -> :sswitch_9d
        0x6234eff -> :sswitch_8f
        0x76f454a -> :sswitch_81
        0x10263a7c -> :sswitch_73
        0x1481ef9f -> :sswitch_65
        0x15caa0f0 -> :sswitch_57
        0x23a88573 -> :sswitch_49
        0x367fd03c -> :sswitch_3b
        0x38797ee9 -> :sswitch_2d
        0x60e3fed5 -> :sswitch_1f
        0x61a2bc69 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_295
        :pswitch_294
        :pswitch_280
        :pswitch_276
        :pswitch_22e
        :pswitch_1fb
        :pswitch_1f1
        :pswitch_1e3
        :pswitch_1e2
        :pswitch_1e2
        :pswitch_1d9
        :pswitch_1cb
        :pswitch_1bd
        :pswitch_1af
        :pswitch_17e
        :pswitch_170
        :pswitch_166
        :pswitch_165
        :pswitch_158
        :pswitch_150
        :pswitch_136
        :pswitch_1cb
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

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_88

    .line 4
    :cond_10
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

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
    iput v5, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 19
    :pswitch_6b
    iput v2, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 20
    :pswitch_6e
    iput v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    :pswitch_71
    const/4 p1, 0x6

    .line 29
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 30
    :pswitch_75
    iput v4, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    goto :goto_7a

    .line 36
    :pswitch_78
    iput v3, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

    .line 49
    :goto_7a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->blur()V

    .line 50
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mEditorAction:I

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

.method public setText(Ljava/lang/String;)V
    .registers 4
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
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mIgnoreNextOnInputEvent:Z

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    if-lez v1, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_23
    if-nez p1, :cond_26

    const/4 v1, 0x0

    .line 13
    :cond_26
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "textAlign"
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->textAlign:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getTextAlign(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_16

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_16
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
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    move-result-object v0

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    move-result-object p1

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    .line 10
    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mFormatter:Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "weex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_36

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_36

    .line 5
    :cond_25
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInputType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
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

    if-eqz p1, :cond_138

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_138

    .line 2
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setType(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4
    const-string v0, "confirmType"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_43
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mReturnKeyType:Ljava/lang/String;

    if-nez v0, :cond_49

    const-string v0, "done"

    :cond_49
    :goto_49
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setReturnKeyType(Ljava/lang/String;)V

    .line 7
    :cond_4c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->isPassword:Z

    if-eqz v0, :cond_6f

    goto :goto_71

    .line 9
    :cond_6f
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    :goto_71
    if-eqz v1, :cond_88

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7a

    goto :goto_88

    .line 13
    :cond_7a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getInputType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_89

    :cond_88
    :goto_88
    return-void

    .line 15
    :cond_89
    :goto_89
    const-string v0, "cursor"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->cursor:I

    .line 18
    :cond_a4
    const-string v0, "selectionStart"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_c1

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionStart:I

    .line 20
    :cond_c1
    const-string v0, "selectionEnd"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXInput;->selectionEnd:I

    .line 22
    :cond_db
    const-string v0, "placeholder"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setPlaceholder(Ljava/lang/String;)V

    .line 25
    :cond_f0
    const-string v0, "placeholderClass"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "{}"

    if-eqz v1, :cond_10e

    .line 26
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 28
    :cond_10e
    const-string v0, "placeholderStyle"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 29
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput;->placeholderStyle:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 31
    :cond_129
    const-string v0, "adjustPosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setAdjustPosition(Ljava/lang/Object;)V

    .line 35
    :cond_138
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass1 (com.taobao.weex.ui.component.DCWXInput$1)
.class Lcom/taobao/weex/ui/component/DCWXInput$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

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
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$200(Lcom/taobao/weex/ui/component/DCWXInput;)V

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 5

    .line 1
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    if-eqz p3, :cond_1c

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->size()I

    move-result p3

    if-nez p3, :cond_21

    .line 2
    :cond_1c
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$002(Lcom/taobao/weex/ui/component/DCWXInput;F)F

    .line 4
    :cond_21
    invoke-static {p2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3fb33333    # 1.4f

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    .line 6
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$102(Lcom/taobao/weex/ui/component/DCWXInput;F)F

    :cond_4c
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass10 (com.taobao.weex.ui.component.DCWXInput$10)
.class Lcom/taobao/weex/ui/component/DCWXInput$10;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->showSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$10;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$10;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2200(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$10;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass11 (com.taobao.weex.ui.component.DCWXInput$11)
.class Lcom/taobao/weex/ui/component/DCWXInput$11;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$11;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$11;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2200(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$11;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass12 (com.taobao.weex.ui.component.DCWXInput$12)
.class Lcom/taobao/weex/ui/component/DCWXInput$12;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->decideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->val$context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2200(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

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

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass13 (com.taobao.weex.ui.component.DCWXInput$13)
.class Lcom/taobao/weex/ui/component/DCWXInput$13;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private handled:Z

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v1

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    goto :goto_a

    .line 6
    :cond_22
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    return p1
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass14 (com.taobao.weex.ui.component.DCWXInput$14)
.class Lcom/taobao/weex/ui/component/DCWXInput$14;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$host:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->val$host:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(ZI)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->val$host:Lcom/taobao/weex/ui/view/WXEditText;

    if-nez v0, :cond_1a

    goto/16 :goto_a6

    .line 4
    :cond_1a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    int-to-float p2, p2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, v0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    .line 5
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    const-string v1, "detail"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v1, "keyboardheightchange"

    invoke-virtual {p2, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->val$host:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 12
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2500(Lcom/taobao/weex/ui/component/DCWXInput;)Z

    move-result p2

    const-string v0, "password"

    if-eqz p2, :cond_70

    move-object p2, v0

    goto :goto_74

    :cond_70
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-object p2, p2, Lcom/taobao/weex/ui/component/DCWXInput;->mType:Ljava/lang/String;

    :goto_74
    if-nez p1, :cond_95

    .line 13
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-boolean v1, v1, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    if-nez v1, :cond_95

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_95

    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getFrontInputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 14
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->blur()V

    :cond_95
    if-eqz p1, :cond_9e

    .line 17
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setFrontInputType(Ljava/lang/String;)V

    :cond_9e
    if-eqz p1, :cond_a6

    .line 22
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$14;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget p2, p1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    iput p2, p1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    :cond_a6
    :goto_a6
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass2 (com.taobao.weex.ui.component.DCWXInput$2)
.class Lcom/taobao/weex/ui/component/DCWXInput$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 4

    if-nez p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$300(Lcom/taobao/weex/ui/component/DCWXInput;)V

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v1, ":focus"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1a

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->setTextAlign(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1a
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_47
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$600(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_65

    .line 10
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$2;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getVerticalGravity()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_65
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass3 (com.taobao.weex.ui.component.DCWXInput$3)
.class Lcom/taobao/weex/ui/component/DCWXInput$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addEditorChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$700(Lcom/taobao/weex/ui/component/DCWXInput;)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 2
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$800(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result p3

    if-ne p2, p3, :cond_3f

    .line 3
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p1, "detail"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v0, "confirm"

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-boolean p2, p1, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    if-nez p2, :cond_3e

    .line 9
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->blur()V

    :cond_3e
    return p3

    .line 12
    :cond_3f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$3;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-boolean p1, p1, Lcom/taobao/weex/ui/component/DCWXInput;->isConfirmHold:Z

    return p1
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass4 (com.taobao.weex.ui.component.DCWXInput$4)
.class Lcom/taobao/weex/ui/component/DCWXInput$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$editText:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1100(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_70

    .line 6
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1100(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1102(Lcom/taobao/weex/ui/component/DCWXInput;I)I

    .line 7
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    .line 8
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1000(Lcom/taobao/weex/ui/component/DCWXInput;)Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;

    move-result-object p4

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 14
    :cond_70
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0, v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1102(Lcom/taobao/weex/ui/component/DCWXInput;I)I

    .line 17
    :cond_75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$4;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$900(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

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

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass5 (com.taobao.weex.ui.component.DCWXInput$5)
.class Lcom/taobao/weex/ui/component/DCWXInput$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

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
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1200(Lcom/taobao/weex/ui/component/DCWXInput;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1202(Lcom/taobao/weex/ui/component/DCWXInput;Z)Z

    .line 3
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1302(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 10
    :cond_18
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v3, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cursor"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "keyCode"

    if-nez p3, :cond_63

    if-eqz p4, :cond_63

    add-int/2addr p4, p2

    .line 16
    :try_start_4a
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    :cond_63
    if-eqz p3, :cond_8c

    if-nez p4, :cond_8c

    .line 19
    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1300(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object p4

    add-int/2addr p3, p2

    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_86} :catch_87

    goto :goto_8c

    .line 23
    :catch_87
    const-string p2, "0"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_8c
    :goto_8c
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1302(Lcom/taobao/weex/ui/component/DCWXInput;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    const-string p1, "detail"

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$5;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string p2, "input"

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass6 (com.taobao.weex.ui.component.DCWXInput$6)
.class Lcom/taobao/weex/ui/component/DCWXInput$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->count:I

    return-void
.end method

.method static synthetic access$1400(Lcom/taobao/weex/ui/component/DCWXInput$6;Landroid/widget/TextView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$6;->fireEventForFocus(Landroid/widget/TextView;)V

    return-void
.end method

.method private fireEventForFocus(Landroid/widget/TextView;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXInput$6$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput$6$1;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$6;Landroid/widget/TextView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "value"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "detail"

    if-eqz p1, :cond_54

    .line 10
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget p1, p1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-nez v5, :cond_35

    .line 11
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCWXInput$6;->fireEventForFocus(Landroid/widget/TextView;)V

    return-void

    .line 13
    :cond_35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v5, "height"

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v0, "focus"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 19
    :cond_54
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const-string v0, "blur"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass6.AnonymousClass1 (com.taobao.weex.ui.component.DCWXInput$6$1)
.class Lcom/taobao/weex/ui/component/DCWXInput$6$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput$6;->fireEventForFocus(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/DCWXInput$6;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$6;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$6;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$6;

    iget-object v1, v0, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v1, v1, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    const/4 v2, 0x0

    const-string v3, "focus"

    const-string v4, "detail"

    const-string v5, "height"

    const-string/jumbo v6, "value"

    const/4 v7, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_52

    .line 2
    iget v1, v0, Lcom/taobao/weex/ui/component/DCWXInput$6;->count:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/taobao/weex/ui/component/DCWXInput$6;->count:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_4c

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v2, v2, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$6;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 12
    :cond_4c
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->val$text:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput$6;->access$1400(Lcom/taobao/weex/ui/component/DCWXInput$6;Landroid/widget/TextView;)V

    return-void

    :cond_52
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lcom/taobao/weex/ui/component/DCWXInput$6;->count:I

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget v2, v2, Lcom/taobao/weex/ui/component/DCWXInput;->keyboardHeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXInput$6;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/DCWXInput$6;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass7 (com.taobao.weex.ui.component.DCWXInput$7)
.class Lcom/taobao/weex/ui/component/DCWXInput$7;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->registerTypefaceObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    const-string p1, "fontFamily"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_36

    .line 7
    :cond_13
    invoke-static {p1}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 8
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_36

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 10
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    .line 11
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_36
    :goto_36
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass8 (com.taobao.weex.ui.component.DCWXInput$8)
.class Lcom/taobao/weex/ui/component/DCWXInput$8;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$autofocus:Z

.field final synthetic val$inputView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$autofocus:Z

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$autofocus:Z

    if-eqz v0, :cond_2e

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1600(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1700(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1900(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2000(Lcom/taobao/weex/ui/component/DCWXInput;II)V

    goto :goto_33

    .line 10
    :cond_2e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 12
    :goto_33
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.AnonymousClass9 (com.taobao.weex.ui.component.DCWXInput$9)
.class Lcom/taobao/weex/ui/component/DCWXInput$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$autofocus:Z

.field final synthetic val$inputView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$autofocus:Z

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimationEnd()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$autofocus:Z

    if-eqz v0, :cond_2e

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1600(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$inputView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1700(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1900(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2000(Lcom/taobao/weex/ui/component/DCWXInput;II)V

    goto :goto_33

    .line 10
    :cond_2e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->val$inputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 12
    :goto_33
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    .line 13
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$9;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2102(Lcom/taobao/weex/ui/component/DCWXInput;Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    return-void
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.PatternWrapper (com.taobao.weex.ui.component.DCWXInput$PatternWrapper)
.class Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
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
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->global:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$2700(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->global:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->global:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->replace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->replace:Ljava/lang/String;

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.DCWXInput.ReturnTypes (com.taobao.weex.ui.component.DCWXInput$ReturnTypes)
.class interface abstract Lcom/taobao/weex/ui/component/DCWXInput$ReturnTypes;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
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

###### Class com.taobao.weex.ui.component.DCWXInput.TextFormatter (com.taobao.weex.ui.component.DCWXInput$TextFormatter)
.class public Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFormatter"
.end annotation


# instance fields
.field private format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

.field private recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    .line 4
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)V

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    if-eqz v0, :cond_33

    .line 2
    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2700(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->format:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

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

.method recover(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    if-eqz v0, :cond_33

    .line 2
    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2700(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2800(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$TextFormatter;->recover:Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;->access$2900(Lcom/taobao/weex/ui/component/DCWXInput$PatternWrapper;)Ljava/lang/String;

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
