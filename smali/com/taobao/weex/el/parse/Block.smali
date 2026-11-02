###### Class com.taobao.weex.el.parse.Block (com.taobao.weex.el.parse.Block)
.class Lcom/taobao/weex/el/parse/Block;
.super Lcom/taobao/weex/el/parse/Token;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/el/parse/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/weex/el/parse/Token;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Token;->getType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_47

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_40

    .line 5
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 6
    :goto_1f
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3f

    .line 7
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Token;

    if-nez v1, :cond_35

    .line 9
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 11
    :cond_35
    invoke-virtual {v1, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_3f
    return-object v0

    .line 12
    :cond_40
    :goto_40
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    return-object p1

    .line 25
    :cond_47
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_52

    goto :goto_5f

    .line 28
    :cond_52
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    .line 29
    invoke-virtual {v0, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5f
    :goto_5f
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Token;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1b
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    const/16 v1, 0x7d

    const-string/jumbo v2, "{"

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_42

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
