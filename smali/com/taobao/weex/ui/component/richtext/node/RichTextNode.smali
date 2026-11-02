###### Class com.taobao.weex.ui.component.richtext.node.RichTextNode (com.taobao.weex.ui.component.richtext.node.RichTextNode)
.class public abstract Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field public static final ATTR:Ljava/lang/String; = "attr"

.field public static final CHILDREN:Ljava/lang/String; = "children"

.field public static final ITEM_CLICK:Ljava/lang/String; = "itemclick"

.field private static final MAX_LEVEL:I = 0xff

.field public static final PSEUDO_REF:Ljava/lang/String; = "pseudoRef"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field protected attr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mComponentRef:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mInstanceId:Ljava/lang/String;

.field protected final mRef:Ljava/lang/String;

.field protected style:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mComponentRef:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mComponentRef:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p5, :cond_11

    .line 12
    iput-object p5, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    goto :goto_18

    .line 15
    :cond_11
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2, p1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    :goto_18
    if-eqz p6, :cond_1d

    .line 18
    iput-object p6, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    goto :goto_24

    .line 20
    :cond_1d
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2, p1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    .line 22
    :goto_24
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    return-void
.end method

.method private createCustomStyleSpan()Lcom/taobao/weex/dom/WXCustomStyleSpan;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v1, "fontWeight"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, -0x1

    .line 4
    :goto_13
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v3, "fontStyle"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 5
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v2

    goto :goto_25

    :cond_24
    const/4 v2, -0x1

    .line 7
    :goto_25
    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v4, "fontFamily"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 8
    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto :goto_38

    :cond_37
    move-object v3, v4

    :goto_38
    if-ne v0, v1, :cond_40

    if-ne v2, v1, :cond_40

    if-eqz v3, :cond_3f

    goto :goto_40

    :cond_3f
    return-object v4

    .line 13
    :cond_40
    :goto_40
    new-instance v1, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    invoke-direct {v1, v2, v0, v3}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method private static createPriorityFlag(I)I
    .registers 2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_8

    sub-int/2addr v0, p0

    shl-int/lit8 p0, v0, 0x10

    return p0

    :cond_8
    const/high16 p0, 0xff0000

    return p0
.end method

.method public static createSpanFlag(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createPriorityFlag(I)I

    move-result p0

    or-int/lit8 p0, p0, 0x11

    return p0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .registers 7

    .line 1
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_33

    .line 5
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 7
    :goto_16
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 8
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 10
    invoke-static {p0, p1, p2, v2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 16
    :cond_2e
    invoke-static {v0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->parse(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0

    .line 18
    :cond_33
    new-instance p0, Landroid/text/SpannableString;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private static parse(Ljava/util/List;)Landroid/text/Spannable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_1e
    return-object v0
.end method


# virtual methods
.method public addChildNode(Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    :cond_b
    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->isInternalNode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 6
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v1

    if-eqz v1, :cond_1b

    return-object v1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract isInternalNode()Z
.end method

.method final parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 9

    .line 19
    const-string/jumbo v0, "style"

    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 20
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    .line 21
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1c

    .line 23
    :cond_15
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    .line 26
    :goto_1c
    const-string v0, "attr"

    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 27
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    .line 28
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3a

    .line 30
    :cond_33
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    .line 33
    :goto_3a
    const-string v0, "children"

    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p4

    if-eqz p4, :cond_66

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    .line 35
    :goto_4d
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_65

    .line 36
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 37
    invoke-static {p1, p2, p3, v0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 39
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_65
    return-void

    .line 43
    :cond_66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    return-void
.end method

.method public removeChildNode(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 3
    :try_start_10
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 4
    iget-object v2, v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_34
    return-void
.end method

.method public toSpan(I)Landroid/text/Spannable;
    .registers 6

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->isInternalNode()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-eqz v1, :cond_30

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    add-int/lit8 v3, p1, 0x1

    .line 5
    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1a

    .line 8
    :cond_30
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->updateSpans(Landroid/text/SpannableStringBuilder;I)V

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public updateAttrs(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_f
    return-void
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .registers 8

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    if-eqz v1, :cond_97

    if-eqz v0, :cond_97

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createCustomStyleSpan()Lcom/taobao/weex/dom/WXCustomStyleSpan;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1e
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v3, "fontSize"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 11
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {v3, v4, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v2, "backgroundColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_61

    .line 15
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_61

    .line 18
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_61
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v2, "color"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 23
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_7d
    invoke-static {p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result p2

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_85

    :cond_97
    return-void
.end method

.method public updateStyles(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    return-void
.end method
