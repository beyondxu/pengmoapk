###### Class io.dcloud.feature.uniapp.ui.action.AbsComponentData (io.dcloud.feature.uniapp.ui.action.AbsComponentData)
.class public abstract Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

.field private mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field public mComponentType:Ljava/lang/String;

.field protected mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

.field private mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field private mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field public mParentRef:Ljava/lang/String;

.field public mRef:Ljava/lang/String;

.field protected mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

.field protected renderObjectPr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mRef:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mParentRef:Ljava/lang/String;

    return-void
.end method

.method private addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method

.method private addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method

.method private addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method


# virtual methods
.method public final addAttr(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    if-nez v0, :cond_16

    .line 5
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/dom/WXAttr;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    return-void

    .line 7
    :cond_16
    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->putAll(Ljava/util/Map;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final addEvent(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    if-nez v0, :cond_14

    .line 5
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    .line 7
    :cond_14
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public final addShorthand(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1ef

    .line 32
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ef

    .line 33
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_1f0

    goto/16 :goto_eb

    :sswitch_32
    const-string v2, "marginLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_eb

    :cond_3c
    const/16 v3, 0xe

    goto/16 :goto_eb

    :sswitch_40
    const-string v2, "marginRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto/16 :goto_eb

    :cond_4a
    const/16 v3, 0xd

    goto/16 :goto_eb

    :sswitch_4e
    const-string v2, "borderWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    goto/16 :goto_eb

    :cond_58
    const/16 v3, 0xc

    goto/16 :goto_eb

    :sswitch_5c
    const-string v2, "paddingRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto/16 :goto_eb

    :cond_66
    const/16 v3, 0xb

    goto/16 :goto_eb

    :sswitch_6a
    const-string v2, "paddingBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    goto/16 :goto_eb

    :cond_74
    const/16 v3, 0xa

    goto/16 :goto_eb

    :sswitch_78
    const-string v2, "paddingTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    goto/16 :goto_eb

    :cond_82
    const/16 v3, 0x9

    goto/16 :goto_eb

    :sswitch_86
    const-string v2, "borderLeftWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    goto/16 :goto_eb

    :cond_90
    const/16 v3, 0x8

    goto/16 :goto_eb

    :sswitch_94
    const-string v2, "marginBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    goto :goto_eb

    :cond_9d
    const/4 v3, 0x7

    goto :goto_eb

    :sswitch_9f
    const-string v2, "padding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    goto :goto_eb

    :cond_a8
    const/4 v3, 0x6

    goto :goto_eb

    :sswitch_aa
    const-string v2, "marginTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    goto :goto_eb

    :cond_b3
    const/4 v3, 0x5

    goto :goto_eb

    :sswitch_b5
    const-string v2, "margin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    goto :goto_eb

    :cond_be
    const/4 v3, 0x4

    goto :goto_eb

    :sswitch_c0
    const-string v2, "borderBottomWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    goto :goto_eb

    :cond_c9
    const/4 v3, 0x3

    goto :goto_eb

    :sswitch_cb
    const-string v2, "borderTopWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    goto :goto_eb

    :cond_d4
    const/4 v3, 0x2

    goto :goto_eb

    :sswitch_d6
    const-string v2, "paddingLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    goto :goto_eb

    :cond_df
    const/4 v3, 0x1

    goto :goto_eb

    :sswitch_e1
    const-string v2, "borderRightWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ea

    goto :goto_eb

    :cond_ea
    const/4 v3, 0x0

    :goto_eb
    packed-switch v3, :pswitch_data_22e

    goto/16 :goto_10

    .line 40
    :pswitch_f0
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 46
    :pswitch_101
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 52
    :pswitch_112
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 76
    :pswitch_123
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 79
    :pswitch_134
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 80
    :pswitch_145
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 81
    :pswitch_156
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 82
    :pswitch_167
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 100
    :pswitch_178
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 101
    :pswitch_189
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 102
    :pswitch_19a
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 126
    :pswitch_1ab
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 127
    :pswitch_1bc
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 142
    :pswitch_1cd
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    .line 143
    :pswitch_1de
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_10

    :cond_1ef
    return-void

    :sswitch_data_1f0
    .sparse-switch
        -0x757f89aa -> :sswitch_e1
        -0x597a2048 -> :sswitch_d6
        -0x56940a43 -> :sswitch_cb
        -0x4cec9971 -> :sswitch_c0
        -0x40737a52 -> :sswitch_b5
        -0x3e464339 -> :sswitch_aa
        -0x300fc3ef -> :sswitch_9f
        -0x113c6e87 -> :sswitch_94
        -0xd59d8cd -> :sswitch_86
        0x55f4784 -> :sswitch_78
        0xc0fb19c -> :sswitch_6a
        0x2a8c788b -> :sswitch_5c
        0x2c2c84fa -> :sswitch_4e
        0x3a1ea90e -> :sswitch_40
        0x757a12d5 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_1de
        :pswitch_1cd
        :pswitch_1bc
        :pswitch_1ab
        :pswitch_19a
        :pswitch_189
        :pswitch_178
        :pswitch_167
        :pswitch_156
        :pswitch_145
        :pswitch_134
        :pswitch_123
        :pswitch_112
        :pswitch_101
        :pswitch_f0
    .end packed-switch
.end method

.method public final addShorthand([FLio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;)V
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez p1, :cond_12

    .line 1
    new-array p1, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, p1, v4

    aput v5, p1, v2

    aput v5, p1, v1

    aput v5, p1, v0

    .line 3
    :cond_12
    array-length v4, p1

    if-ne v4, v3, :cond_53

    .line 4
    sget-object v3, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v2, :cond_44

    if-eq p2, v1, :cond_34

    if-eq p2, v0, :cond_24

    goto :goto_53

    .line 20
    :cond_24
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_30

    .line 21
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void

    .line 23
    :cond_30
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    return-void

    .line 24
    :cond_34
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_40

    .line 25
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void

    .line 27
    :cond_40
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    return-void

    .line 28
    :cond_44
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_50

    .line 29
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void

    .line 31
    :cond_50
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    :cond_53
    :goto_53
    return-void
.end method

.method public addStyle(Ljava/util/Map;)V
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addStyle(Ljava/util/Map;Z)V

    return-void
.end method

.method public final addStyle(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_18

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    .line 5
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    if-nez v0, :cond_15

    .line 6
    new-instance p2, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/WXStyle;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    return-void

    .line 8
    :cond_15
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->putAll(Ljava/util/Map;Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method public abstract clone()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/feature/uniapp/ui/action/AbsComponentData<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->clone()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    move-result-object v0

    return-object v0
.end method

.method public getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    return-object v0
.end method

.method public getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    return-object v0
.end method

.method public getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getRenderObjectPr()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    return-wide v0
.end method

.method public getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXStyle;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    return-object v0
.end method

.method public isRenderPtrEmpty()Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public final setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public final setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public declared-synchronized setRenderObjectPr(J)V
    .registers 9

    const-string v0, "RenderObjectPr has "

    monitor-enter p0

    .line 1
    :try_start_3
    iget-wide v1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_2f

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_13

    .line 5
    iput-wide p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_31

    monitor-exit p0

    return-void

    .line 6
    :cond_13
    :try_start_13
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " old renderObjectPtr "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

###### Class io.dcloud.feature.uniapp.ui.action.AbsComponentData.AnonymousClass1 (io.dcloud.feature.uniapp.ui.action.AbsComponentData$1)
.class synthetic Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
