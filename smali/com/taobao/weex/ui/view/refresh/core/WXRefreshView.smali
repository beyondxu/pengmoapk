###### Class com.taobao.weex.ui.view.refresh.core.WXRefreshView (com.taobao.weex.ui.view.refresh.core.WXRefreshView)
.class public Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

.field private linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setupViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setupViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setupViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;)Landroid/widget/LinearLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    return-object p1
.end method

.method private setupViews()V
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setContentGravity(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_7
    return-void
.end method

.method public setProgressBgColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public setProgressColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_b

    .line 2
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setColorSchemeColors([I)V

    :cond_b
    return-void
.end method

.method public setProgressRotation(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setProgressRotation(F)V

    :cond_7
    return-void
.end method

.method public setRefreshView(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Landroid/view/View;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStartEndTrim(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setStartEndTrim(FF)V

    :cond_7
    return-void
.end method

.method protected startAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->start()V

    :cond_7
    return-void
.end method

.method protected stopAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->circleProgressBar:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->stop()V

    :cond_7
    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXRefreshView.AnonymousClass1 (com.taobao.weex.ui.view.refresh.core.WXRefreshView$1)
.class Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setRefreshView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    .line 6
    :goto_1f
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 7
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v3, :cond_37

    .line 9
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-static {v3, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->access$102(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 11
    :cond_3a
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
