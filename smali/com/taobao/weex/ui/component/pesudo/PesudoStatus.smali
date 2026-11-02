###### Class com.taobao.weex.ui.component.pesudo.PesudoStatus (com.taobao.weex.ui.component.pesudo.PesudoStatus)
.class public Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field static final CLASS_ACTIVE:I = 0x0

.field static final CLASS_DISABLED:I = 0x3

.field static final CLASS_ENABLED:I = 0x2

.field static final CLASS_FOCUS:I = 0x1

.field private static final SET:I = 0x1

.field private static final UNSET:I


# instance fields
.field private mStatuses:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 13
    :goto_a
    iget-object v2, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 14
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method


# virtual methods
.method public getStatuses()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3
    const-string v1, ":active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 6
    const-string v2, ":disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 11
    const-string v1, ":focus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_37

    const/4 v0, 0x0

    return-object v0

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSet(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method setStatus(IZ)V
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    aput p2, v0, p1

    return-void
.end method

.method public setStatus(Ljava/lang/String;Z)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_52

    goto :goto_3e

    :sswitch_13
    const-string v0, ":focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_3e

    :cond_1c
    const/4 v5, 0x3

    goto :goto_3e

    :sswitch_1e
    const-string v0, ":enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3e

    :cond_27
    const/4 v5, 0x2

    goto :goto_3e

    :sswitch_29
    const-string v0, ":disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_3e

    :cond_32
    const/4 v5, 0x1

    goto :goto_3e

    :sswitch_34
    const-string v0, ":active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    :goto_3e
    packed-switch v5, :pswitch_data_64

    return-void

    .line 12
    :pswitch_42
    invoke-virtual {p0, v3, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    return-void

    .line 13
    :pswitch_46
    invoke-virtual {p0, v2, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    return-void

    .line 14
    :pswitch_4a
    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    return-void

    .line 15
    :pswitch_4e
    invoke-virtual {p0, v4, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    return-void

    :sswitch_data_52
    .sparse-switch
        -0x58a71440 -> :sswitch_34
        -0x58589f4a -> :sswitch_29
        0x2913b5c7 -> :sswitch_1e
        0x68ca68de -> :sswitch_13
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
    .end packed-switch
.end method

.method public updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 6
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 11
    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p2, :cond_21

    .line 13
    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 17
    :cond_21
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_42

    :cond_40
    const-string v1, ""

    :goto_42
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_46
    if-eqz p1, :cond_6a

    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_6a
    return-object p3
.end method
