###### Class com.taobao.weex.ui.component.ConfirmBar (com.taobao.weex.ui.component.ConfirmBar)
.class public Lcom/taobao/weex/ui/component/ConfirmBar;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static instance:Lcom/taobao/weex/ui/component/ConfirmBar;


# instance fields
.field private editText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private listener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/dcloud/common/DHInterface/ISysEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/view/ViewGroup;

.field private rtl:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->showConfirm(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/component/ConfirmBar;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcom/taobao/weex/ui/component/ConfirmBar;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-direct {v1}, Lcom/taobao/weex/ui/component/ConfirmBar;-><init>()V

    sput-object v1, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    return-object v0
.end method

.method private showConfirm(ZI)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    goto :goto_52

    .line 3
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 4
    const-string v1, "AppRootView"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_25

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iget v2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_25
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 13
    iget-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void

    .line 17
    :cond_3f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_52

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_52

    :catch_52
    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method addComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_28

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/component/ConfirmBar$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/ConfirmBar$1;-><init>(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/content/Context;)V

    .line 31
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ISysEventListener;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 33
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ISysEventListener;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 35
    :cond_28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    .line 36
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_c4

    .line 37
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    .line 38
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    if-eqz p2, :cond_66

    .line 40
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    iget-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    :cond_66
    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    .line 44
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x11

    .line 45
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0xcd

    const/16 v2, 0x32

    const/16 v3, 0xff

    .line 46
    invoke-static {v3, v2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    new-instance p1, Lcom/taobao/weex/ui/component/ConfirmBar$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/ConfirmBar$2;-><init>(Lcom/taobao/weex/ui/component/ConfirmBar;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/16 p2, 0xdc

    invoke-static {v3, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const-string p2, "ConfirmBar"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c4} :catch_c4

    :catch_c4
    :cond_c4
    return-void
.end method

.method removeComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

###### Class com.taobao.weex.ui.component.ConfirmBar.AnonymousClass1 (com.taobao.weex.ui.component.ConfirmBar$1)
.class Lcom/taobao/weex/ui/component/ConfirmBar$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/ConfirmBar;->createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 8

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8c

    .line 2
    check-cast p2, [I

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    .line 5
    aget v3, p2, v2

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v3, 0x3

    if-gt p1, v0, :cond_37

    aget p1, p2, v2

    aget v4, p2, v3

    sub-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v0, :cond_a0

    .line 6
    :cond_37
    aget p1, p2, v2

    aget v3, p2, v3

    if-le p1, v3, :cond_4e

    sub-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v0, :cond_4e

    .line 7
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object p1

    aget p2, p2, v2

    invoke-static {p1, v1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V

    goto :goto_a0

    .line 9
    :cond_4e
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 10
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_82

    instance-of v3, v0, Lcom/taobao/weex/ui/component/DCTextArea;

    if-eqz v3, :cond_82

    check-cast v0, Lcom/taobao/weex/ui/component/DCTextArea;

    iget-boolean v0, v0, Lcom/taobao/weex/ui/component/DCTextArea;->isShowConfirm:Z

    if-eqz v0, :cond_82

    .line 11
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object p1

    aget p2, p2, v2

    invoke-static {p1, v2, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V

    goto :goto_a0

    .line 14
    :cond_82
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object v0

    aget v3, p2, v2

    invoke-static {v0, v1, v3}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V

    goto :goto_58

    .line 19
    :cond_8c
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_a0

    .line 20
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$202(Lcom/taobao/weex/ui/component/ConfirmBar;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$302(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 22
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$1;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$402(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    :cond_a0
    :goto_a0
    return v1
.end method

###### Class com.taobao.weex.ui.component.ConfirmBar.AnonymousClass2 (com.taobao.weex.ui.component.ConfirmBar$2)
.class Lcom/taobao/weex/ui/component/ConfirmBar$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/ConfirmBar;->createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/ConfirmBar;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/ConfirmBar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$2;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$2;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7a

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar$2;->this$0:Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/ConfirmBar;->access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    if-eqz v0, :cond_7a

    .line 10
    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "value"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "detail"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v1, "confirm"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 16
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->interceptFocus()V

    .line 18
    :cond_6e
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 19
    check-cast v0, Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->hideSoftKeyboard()V

    :cond_7a
    return-void
.end method
