###### Class com.taobao.weex.ui.view.WXTextView (com.taobao.weex.ui.view.WXTextView)
.class public Lcom/taobao/weex/ui/view/WXTextView;
.super Landroid/view/View;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;
.implements Lcom/taobao/weex/ui/view/IWXTextView;
.implements Lcom/taobao/weex/ui/view/IRenderStatus;
.implements Lcom/taobao/weex/ui/view/IRenderResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;",
        "Lcom/taobao/weex/ui/view/IWXTextView;",
        "Lcom/taobao/weex/ui/view/IRenderStatus<",
        "Lcom/taobao/weex/ui/component/WXText;",
        ">;",
        "Lcom/taobao/weex/ui/view/IRenderResult<",
        "Lcom/taobao/weex/ui/component/WXText;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsLabelSet:Z

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/WXText;",
            ">;"
        }
    .end annotation
.end field

.field private textLayout:Landroid/text/Layout;

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    return-void
.end method


# virtual methods
.method public enableCopy(Z)V
    .registers 2

    if-eqz p1, :cond_b

    .line 1
    new-instance p1, Lcom/taobao/weex/ui/view/WXTextView$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/WXTextView$1;-><init>(Lcom/taobao/weex/ui/view/WXTextView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_b
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic getComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getComponent()Lcom/taobao/weex/ui/component/WXText;

    move-result-object v0

    return-object v0
.end method

.method public getComponent()Lcom/taobao/weex/ui/component/WXText;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXText;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextLayout()Landroid/text/Layout;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public bridge synthetic holdComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->holdComponent(Lcom/taobao/weex/ui/component/WXText;)V

    return-void
.end method

.method public holdComponent(Lcom/taobao/weex/ui/component/WXText;)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_1c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_e

    .line 3
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_e
    return v0
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public setAriaLabel(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    if-eqz p1, :cond_1b

    .line 7
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_d
    return-void
.end method

.method public setTextLayout(Landroid/text/Layout;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    if-eqz p1, :cond_f

    .line 2
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    if-nez v0, :cond_f

    .line 3
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    :cond_f
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1e

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXText;

    if-eqz p1, :cond_1e

    .line 8
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->readyToRender()V

    :cond_1e
    return-void
.end method

###### Class com.taobao.weex.ui.view.WXTextView.AnonymousClass1 (com.taobao.weex.ui.view.WXTextView$1)
.class Lcom/taobao/weex/ui/view/WXTextView$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXTextView;->enableCopy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXTextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXTextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 1
    new-instance p1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    :try_start_d
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    const-string v0, "Copy"

    .line 9
    :goto_21
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 10
    new-instance v1, Lcom/taobao/weex/ui/view/WXTextView$1$1;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/view/WXTextView$1$1;-><init>(Lcom/taobao/weex/ui/view/WXTextView$1;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 25
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.taobao.weex.ui.view.WXTextView.AnonymousClass1.C00191 (com.taobao.weex.ui.view.WXTextView$1$1)
.class Lcom/taobao/weex/ui/view/WXTextView$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXTextView$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXTextView$1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->val$title:Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

    iget-object p1, p1, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_31

    .line 5
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_31
    const/4 p1, 0x1

    return p1

    :cond_33
    const/4 p1, 0x0

    return p1
.end method
