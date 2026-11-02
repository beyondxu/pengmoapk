###### Class com.taobao.weex.el.parse.Parser (com.taobao.weex.el.parse.Parser)
.class public Lcom/taobao/weex/el/parse/Parser;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private code:Ljava/lang/String;

.field private operators:Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/el/parse/ArrayStack<",
            "Lcom/taobao/weex/el/parse/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private stacks:Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/el/parse/ArrayStack<",
            "Lcom/taobao/weex/el/parse/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 4
    new-instance p1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {p1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 5
    new-instance p1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {p1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    return-void
.end method

.method private final doStackOperators(I)V
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, p1, :cond_14

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    .line 3
    invoke-virtual {p0, v0}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_0

    :cond_14
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;
    .registers 4

    .line 12
    :try_start_0
    new-instance v0, Lcom/taobao/weex/el/parse/Parser;

    invoke-direct {v0, p0}, Lcom/taobao/weex/el/parse/Parser;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/Parser;->parse()Lcom/taobao/weex/el/parse/Token;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception v0

    .line 15
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_22
    new-instance p0, Lcom/taobao/weex/el/parse/Block;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    return-object p0
.end method


# virtual methods
.method doOperator(Lcom/taobao/weex/el/parse/Symbol;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 2
    const-string v1, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 3
    const-string/jumbo v2, "{"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 4
    const-string v3, "["

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 5
    const-string v3, "$"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto/16 :goto_a9

    .line 8
    :cond_2b
    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto/16 :goto_a9

    .line 11
    :cond_35
    iget p1, p1, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    .line 14
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    iget v2, v2, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 17
    :cond_54
    new-instance v2, Lcom/taobao/weex/el/parse/Operator;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    .line 18
    const-string v3, "!"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 19
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, p1, :cond_a9

    .line 20
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    .line 21
    iput-object v0, v2, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    .line 22
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, p1, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->add(ILjava/lang/Object;)V

    return-void

    .line 27
    :cond_7a
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, p1, :cond_a9

    .line 28
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/el/parse/Token;

    iput-object p1, v2, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    .line 32
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result p1

    if-le p1, v1, :cond_9f

    .line 33
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/el/parse/Token;

    iput-object p1, v2, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    goto :goto_a4

    .line 35
    :cond_9f
    iget-object p1, v2, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    if-nez p1, :cond_a4

    goto :goto_a9

    .line 39
    :cond_a4
    :goto_a4
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {p1, v1, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->add(ILjava/lang/Object;)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method final hasNextToken()Z
    .registers 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    .line 4
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0

    :cond_19
    return v2

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method final nextToken()C
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_8
    const/16 v1, 0x20

    if-ne v0, v1, :cond_24

    .line 3
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    if-gt v1, v2, :cond_1d

    goto :goto_24

    .line 7
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    :cond_24
    :goto_24
    return v0
.end method

.method public final parse()Lcom/taobao/weex/el/parse/Token;
    .registers 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    goto :goto_0

    .line 4
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    .line 6
    invoke-virtual {p0, v0}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_a

    .line 8
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    return-object v0

    .line 11
    :cond_30
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method final scanArray()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    .line 4
    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-ltz v2, :cond_23

    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_23

    :cond_21
    const/4 v2, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x7

    .line 7
    :goto_24
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v7, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v8, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v8}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v8

    const-string v9, "["

    invoke-direct {v7, v9, v8}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 8
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 9
    :cond_3b
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v6

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_3b

    .line 16
    :cond_49
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-gt v6, v0, :cond_60

    .line 17
    :goto_51
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, v1, :cond_5f

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_51

    :cond_5f
    return-void

    .line 23
    :cond_60
    :goto_60
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v1, :cond_7c

    .line 24
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Symbol;

    .line 25
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v7

    if-le v7, v0, :cond_60

    .line 26
    invoke-virtual {p0, v6}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_60

    .line 29
    :cond_7c
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    .line 30
    :goto_83
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v7

    if-ge v6, v7, :cond_99

    .line 31
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7, v6}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/weex/el/parse/Token;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 33
    :cond_99
    :goto_99
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v0, :cond_a7

    .line 34
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_99

    :cond_a7
    if-eq v2, v4, :cond_df

    .line 36
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_df

    .line 42
    :cond_b2
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_c7

    .line 45
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Token;

    goto :goto_ce

    .line 47
    :cond_c7
    new-instance v3, Lcom/taobao/weex/el/parse/Block;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v4}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    move-object v1, v3

    .line 49
    :goto_ce
    new-instance v3, Lcom/taobao/weex/el/parse/Operator;

    const-string v4, "."

    invoke-direct {v3, v4, v2}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object v0, v3, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    .line 51
    iput-object v1, v3, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    .line 52
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_df
    :goto_df
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .line 54
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method scanBracket()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_40

    .line 4
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v3, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v5

    const-string/jumbo v6, "{"

    invoke-direct {v3, v6, v5}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 5
    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 6
    :cond_31
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_31

    goto :goto_65

    .line 12
    :cond_40
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v3, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v5

    const-string v6, "("

    invoke-direct {v3, v6, v5}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 13
    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 14
    :cond_57
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 15
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_57

    .line 20
    :cond_65
    :goto_65
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-gt v2, v0, :cond_7c

    .line 21
    :goto_6d
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, v1, :cond_7b

    .line 22
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_6d

    :cond_7b
    return-void

    .line 26
    :cond_7c
    :goto_7c
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_98

    .line 27
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    .line 28
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-le v3, v0, :cond_7c

    .line 29
    invoke-virtual {p0, v2}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_7c

    .line 32
    :cond_98
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v0

    .line 33
    :goto_9f
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-ge v2, v3, :cond_b5

    .line 34
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/el/parse/Token;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    .line 36
    :cond_b5
    :goto_b5
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v0, :cond_c3

    .line 37
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_b5

    .line 39
    :cond_c3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_d6

    .line 40
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_d6
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .line 43
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method final scanIdentifier()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v0, 0x1

    .line 2
    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 3
    :goto_6
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 6
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_6

    .line 12
    :cond_21
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_38

    return-void

    .line 17
    :cond_38
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_3c
    sget-object v1, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 21
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v1, v1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    :cond_5c
    const/4 v1, 0x4

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    .line 25
    :goto_5f
    new-instance v2, Lcom/taobao/weex/el/parse/Token;

    invoke-direct {v2, v0, v1}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 26
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method scanIf()V
    .registers 6

    .line 1
    new-instance v0, Lcom/taobao/weex/el/parse/Operator;

    const-string v1, "?"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Lcom/taobao/weex/el/parse/Parser;->doStackOperators(I)V

    .line 4
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 5
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    iget v2, v2, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7
    :cond_22
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_34

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Token;

    iput-object v1, v0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    .line 11
    :cond_34
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    .line 13
    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 14
    :cond_46
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 15
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_46

    .line 19
    :cond_54
    :goto_54
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-le v3, v2, :cond_68

    .line 20
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/el/parse/Symbol;

    .line 21
    invoke-virtual {p0, v3}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_54

    .line 24
    :cond_68
    :goto_68
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_7b

    .line 25
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    iput-object v2, v0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    goto :goto_68

    .line 27
    :cond_7b
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    .line 28
    :cond_81
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 29
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    .line 30
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    .line 33
    :cond_93
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-gt v3, v2, :cond_81

    .line 37
    :cond_9b
    invoke-direct {p0, v2}, Lcom/taobao/weex/el/parse/Parser;->doStackOperators(I)V

    .line 38
    :goto_9e
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_b1

    .line 39
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    iput-object v2, v0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    goto :goto_9e

    .line 41
    :cond_b1
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method final scanNextToken()C
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->nextToken()C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_f

    .line 3
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return v0

    .line 5
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanIdentifier()V

    return v0

    :cond_19
    const/16 v1, 0x28

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_22

    goto :goto_7d

    :cond_22
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2a

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanArray()V

    return v0

    :cond_2a
    const/16 v1, 0x22

    if-eq v0, v1, :cond_79

    const/16 v1, 0x27

    if-ne v0, v1, :cond_33

    goto :goto_79

    :cond_33
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_47

    .line 13
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 14
    :cond_47
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 15
    :cond_4d
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNumber()V

    return v0

    :cond_51
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_59

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanIf()V

    return v0

    :cond_59
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_72

    const/16 v1, 0x29

    if-eq v0, v1, :cond_72

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_72

    const/16 v1, 0x20

    if-eq v0, v1, :cond_72

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_6e

    goto :goto_72

    .line 26
    :cond_6e
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanOperator()V

    return v0

    .line 27
    :cond_72
    :goto_72
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return v0

    .line 28
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanString()V

    return v0

    .line 29
    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanBracket()V

    return v0
.end method

.method final scanNumber()V
    .registers 9

    .line 1
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2e

    const/4 v4, 0x1

    const/16 v5, 0x65

    if-eq v1, v5, :cond_1d

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    .line 5
    :goto_1e
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 6
    :goto_23
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 7
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 8
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3b

    if-eq v6, v3, :cond_3b

    if-ne v6, v5, :cond_46

    :cond_3b
    if-eq v6, v5, :cond_3f

    if-ne v6, v3, :cond_40

    :cond_3f
    const/4 v1, 0x0

    .line 15
    :cond_40
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_23

    .line 20
    :cond_46
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v2, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    return-void

    :cond_57
    if-eqz v1, :cond_5f

    .line 26
    new-instance v1, Lcom/taobao/weex/el/parse/Token;

    invoke-direct {v1, v0, v4}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    goto :goto_65

    .line 28
    :cond_5f
    new-instance v1, Lcom/taobao/weex/el/parse/Token;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 30
    :goto_65
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method scanOperator()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v0, 0x3

    .line 2
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-lt v2, v5, :cond_2b

    .line 5
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 6
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x1

    if-lt v2, v3, :cond_3e

    .line 10
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 11
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_3e
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    add-int/2addr v0, v5

    .line 16
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " illegal code operator"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "weex"

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return-void

    .line 21
    :cond_80
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 22
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v0, v0, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 23
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_bf

    .line 24
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    .line 25
    invoke-virtual {p0, v0}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    .line 28
    :cond_bf
    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->isOpEnd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 29
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v2, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 31
    :cond_d5
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return-void
.end method

.method final scanString()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 2
    new-instance v1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    :goto_1d
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_66

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v4, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 9
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4f

    .line 10
    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-nez v0, :cond_5f

    .line 12
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_66

    .line 16
    :cond_4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 20
    :cond_5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :cond_5f
    :goto_5f
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_1d

    .line 38
    :cond_66
    :goto_66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/taobao/weex/el/parse/Token;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 40
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method
