###### Class com.taobao.weex.ui.view.WXCirclePageAdapter (com.taobao.weex.ui.view.WXCirclePageAdapter)
.class public Lcom/taobao/weex/ui/view/WXCirclePageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field public isRTL:Z

.field private needLoop:Z

.field private originalViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private shadow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    .line 13
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 15
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    .line 46
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    return-void
.end method

.method private ensureShadow()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_55

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_45
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 10
    :cond_49
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 12
    :cond_55
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :goto_5a
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 16
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public addPageView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    const-string v0, "onPageSelected >>>> addPageView"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    if-eqz v0, :cond_1b

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_20

    .line 9
    :cond_1b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_20
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageSelected >>>> destroyItem >>>>> position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 4
    :cond_17
    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-nez p2, :cond_20

    .line 5
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFirst()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getItemIndex(Ljava/lang/Object;)I
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x2

    return p1
.end method

.method public getPagePosition(Landroid/view/View;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getRealCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRealPosition(I)I
    .registers 3

    if-ltz p1, :cond_16

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_16

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_16
    :goto_16
    const/4 p1, -0x1

    return p1
.end method

.method public getViews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    const-string v0, "onPageSelected >>>> instantiateItem >>>>> position:"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_47

    .line 2
    :try_start_b
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",position % getRealCount()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 5
    :cond_2d
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_37

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2

    .line 8
    :cond_37
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_44

    return-object v2

    :catch_44
    move-exception p1

    move-object v1, v2

    goto :goto_48

    :catch_47
    move-exception p1

    .line 12
    :goto_48
    const-string p2, "[CirclePageAdapter] instantiateItem: "

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public removePageView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    const-string v0, "onPageSelected >>>> removePageView"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    return-void
.end method

.method public replacePageView(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    const-string v0, "onPageSelected >>>> replacePageView"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    .line 10
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 11
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public setLayoutDirectionRTL(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    if-eqz p1, :cond_15

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 7
    :cond_15
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    return-void
.end method
