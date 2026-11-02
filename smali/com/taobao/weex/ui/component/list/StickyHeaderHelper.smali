###### Class com.taobao.weex.ui.component.list.StickyHeaderHelper (com.taobao.weex.ui.component.list.StickyHeaderHelper)
.class public Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private mCurrentStickyRef:Ljava/lang/String;

.field private mHeaderComps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)Landroid/view/ViewGroup;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    return-void
.end method

.method private changeFrontStickyVisible()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_46

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ltz v0, :cond_46

    .line 6
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_31

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    if-eqz v5, :cond_31

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_43

    .line 9
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 12
    :cond_31
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    if-eqz v5, :cond_43

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_42

    .line 15
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_42
    const/4 v3, 0x1

    :cond_43
    :goto_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public clearStickyHeaders()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_2c

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 10
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_13

    :cond_2c
    :goto_2c
    return-void
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_59

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    goto :goto_19

    :cond_18
    move-object v0, p1

    .line 2
    :goto_19
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_5a

    if-nez v1, :cond_2a

    goto :goto_5a

    .line 9
    :cond_2a
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v2, :cond_3b

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 12
    :cond_3b
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    new-instance v2, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;-><init>(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;Landroid/view/View;Lcom/taobao/weex/ui/component/list/WXCell;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string/jumbo v1, "unsticky"

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 25
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void

    .line 26
    :cond_5a
    :goto_5a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    return-void
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 8

    if-nez p1, :cond_4

    goto/16 :goto_c9

    .line 1
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_25

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v0

    if-le v1, v0, :cond_32

    .line 5
    :cond_25
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    goto :goto_32

    .line 8
    :cond_2c
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 12
    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-nez p1, :cond_3c

    .line 13
    const-string p1, "Current Sticky ref is null."

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 18
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_50

    .line 20
    const-string p1, "Sticky header\'s real view is null."

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_50
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_62

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto :goto_b6

    .line 28
    :cond_62
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 32
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->removeSticky()V

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_81

    .line 36
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    :cond_81
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 42
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v3

    if-lez v3, :cond_b0

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v5, :cond_b0

    .line 47
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 51
    :cond_b0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    :goto_b6
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    .line 55
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "sticky"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 56
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public updateStickyView(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v3

    if-le v3, p1, :cond_2b

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2b
    if-ne v3, p1, :cond_f

    .line 10
    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_f

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 14
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    goto :goto_f

    .line 18
    :cond_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_4d
    if-ge v0, p1, :cond_5b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 19
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_4d

    :cond_5b
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.StickyHeaderHelper.AnonymousClass1 (com.taobao.weex.ui.component.list.StickyHeaderHelper$1)
.class Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

.field final synthetic val$component:Lcom/taobao/weex/ui/component/list/WXCell;

.field final synthetic val$headerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;Landroid/view/View;Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$component:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->access$000(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_19

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$component:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->recoverySticky()V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->access$100(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)V

    return-void
.end method
