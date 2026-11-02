###### Class com.taobao.weex.ui.component.richtext.WXRichText (com.taobao.weex.ui.component.richtext.WXRichText)
.class public Lcom/taobao/weex/ui/component/richtext/WXRichText;
.super Lcom/taobao/weex/ui/component/WXText;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;,
        Lcom/taobao/weex/ui/component/richtext/WXRichText$Creator;
    }
.end annotation


# instance fields
.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    .line 43
    new-instance p1, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/richtext/WXRichText;)Landroid/text/Spannable;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->toSpan()Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method private findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 5
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v1

    if-eqz v1, :cond_16

    return-object v1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method private toSpan()Landroid/text/Spannable;
    .registers 5

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_15

    :cond_2a
    return-object v0
.end method


# virtual methods
.method public AddChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 5
    iget-object p2, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_4a
    invoke-direct {p0, p3}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p2

    if-eqz p2, :cond_53

    .line 9
    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->addChildNode(Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;)V

    :cond_53
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;
    .registers 3

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method public removeChildNode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 9
    :cond_34
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 11
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->removeChildNode(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public updateChildNodeAttrs(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->updateAttrs(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public updateChildNodeStyles(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->updateStyles(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

###### Class com.taobao.weex.ui.component.richtext.WXRichText.Creator (com.taobao.weex.ui.component.richtext.WXRichText$Creator)
.class public Lcom/taobao/weex/ui/component/richtext/WXRichText$Creator;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/WXRichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/WXRichText;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/WXRichText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.richtext.WXRichText.RichTextContentBoxMeasurement (com.taobao.weex.ui.component.richtext.WXRichText$RichTextContentBoxMeasurement)
.class Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/WXRichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RichTextContentBoxMeasurement"
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5a

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iget-object v3, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    and-int/2addr v0, v2

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 5
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 7
    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v0, v2, v3, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    .line 13
    invoke-static {v1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object p1

    .line 16
    :cond_52
    new-instance p1, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 20
    :cond_5a
    iget-object p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    check-cast p1, Lcom/taobao/weex/ui/component/richtext/WXRichText;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->access$000(Lcom/taobao/weex/ui/component/richtext/WXRichText;)Landroid/text/Spannable;

    move-result-object p1

    .line 21
    invoke-static {v1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object p1
.end method
