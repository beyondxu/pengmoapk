###### Class com.taobao.weex.el.parse.Operators (com.taobao.weex.el.parse.Operators)
.class public Lcom/taobao/weex/el/parse/Operators;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field public static final AND:Ljava/lang/String; = "&&"

.field public static final AND_NOT:Ljava/lang/String; = "!"

.field public static final ARRAY_END:C = ']'

.field public static final ARRAY_END_STR:Ljava/lang/String; = "]"

.field public static final ARRAY_SEPRATOR:C = ','

.field public static final ARRAY_SEPRATOR_STR:Ljava/lang/String; = ","

.field public static final ARRAY_START:C = '['

.field public static final ARRAY_START_STR:Ljava/lang/String; = "["

.field public static final BLOCK_END:C = '}'

.field public static final BLOCK_END_STR:Ljava/lang/String; = "}"

.field public static final BLOCK_START:C = '{'

.field public static final BLOCK_START_STR:Ljava/lang/String; = "{"

.field public static final BRACKET_END:C = ')'

.field public static final BRACKET_END_STR:Ljava/lang/String; = ")"

.field public static final BRACKET_START:C = '('

.field public static final BRACKET_START_STR:Ljava/lang/String; = "("

.field public static final CONDITION_IF:C = '?'

.field public static final CONDITION_IF_MIDDLE:C = ':'

.field public static final CONDITION_IF_STRING:Ljava/lang/String; = "?"

.field public static final DIV:Ljava/lang/String; = "/"

.field public static final DOLLAR:C = '$'

.field public static final DOLLAR_STR:Ljava/lang/String; = "$"

.field public static final DOT:C = '.'

.field public static final DOT_STR:Ljava/lang/String; = "."

.field public static final EQUAL:Ljava/lang/String; = "==="

.field public static final EQUAL2:Ljava/lang/String; = "=="

.field public static final G:Ljava/lang/String; = ">"

.field public static final GE:Ljava/lang/String; = ">="

.field public static final KEYWORDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Ljava/lang/String; = "<"

.field public static final LE:Ljava/lang/String; = "<="

.field public static final MOD:Ljava/lang/String; = "%"

.field public static final MUL:Ljava/lang/String; = "*"

.field public static final NOT_EQUAL:Ljava/lang/String; = "!=="

.field public static final NOT_EQUAL2:Ljava/lang/String; = "!="

.field public static OPERATORS_PRIORITY:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OR:Ljava/lang/String; = "||"

.field public static final PLUS:Ljava/lang/String; = "+"

.field public static final QUOTE:C = '\"'

.field public static final SINGLE_QUOTE:C = '\''

.field public static final SPACE:C = ' '

.field public static final SPACE_STR:Ljava/lang/String; = " "

.field public static final SUB:Ljava/lang/String; = "-"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, ")"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, " "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, ","

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "||"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "&&"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "==="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "=="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "!=="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "!="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, ">="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "<"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "-"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "/"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "%"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "."

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "["

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "("

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v2, "{"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    .line 44
    const-string v1, "null"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v3, "true"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "false"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "undefined"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static condition(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_b

    .line 1
    invoke-virtual {p0, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_15

    if-eqz p1, :cond_1c

    .line 5
    invoke-virtual {p1, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    if-eqz p2, :cond_1c

    .line 9
    invoke-virtual {p2, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static div(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 4
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static dot(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_47

    if-nez p1, :cond_6

    goto :goto_47

    .line 1
    :cond_6
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    .line 6
    :cond_d
    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/Token;->getType()I

    move-result v0

    if-eqz v0, :cond_37

    .line 7
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_25

    .line 9
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_25
    if-nez p2, :cond_2a

    .line 11
    const-string p2, ""

    goto :goto_32

    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 12
    :goto_32
    invoke-static {p0, p2}, Lcom/taobao/weex/el/parse/Operators;->el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_3b

    .line 14
    :cond_37
    invoke-virtual {p1, p0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_3b
    if-eqz p2, :cond_3e

    return-object p2

    .line 19
    :cond_3e
    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/Token;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/weex/el/parse/Operators;->specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_47
    :goto_47
    return-object v0
.end method

.method public static el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    instance-of v1, p0, Lcom/taobao/weex/el/parse/ArrayStack;

    if-eqz v1, :cond_2b

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/taobao/weex/el/parse/ArrayStack;

    .line 3
    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_2b

    .line 4
    invoke-virtual {v1, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_28

    .line 6
    check-cast v3, Ljava/util/Map;

    .line 7
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 8
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 13
    :cond_2b
    instance-of v1, p0, Ljava/util/Stack;

    if-eqz v1, :cond_52

    .line 14
    move-object v1, p0

    check-cast v1, Ljava/util/Stack;

    .line 15
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_38
    if-ltz v2, :cond_52

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 17
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_4f

    .line 18
    check-cast v3, Ljava/util/Map;

    .line 19
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 20
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 26
    :cond_52
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5d

    .line 27
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 30
    :cond_5d
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_6e

    .line 31
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    .line 33
    :try_start_64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    nop

    .line 36
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 38
    :try_start_78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_80} :catch_81

    return-object p0

    :catch_81
    :cond_81
    return-object v0
.end method

.method public static getNumber(Ljava/lang/Object;)D
    .registers 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 1
    :cond_5
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_10

    .line 2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_18

    :catch_18
    return-wide v0
.end method

.method public static isDot(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_f

    const/16 v1, 0x5b

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    return v0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_15

    return v1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    return v0
.end method

.method public static isEquals(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_e

    .line 1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    :cond_e
    move-object p0, v1

    :goto_f
    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_15
    const/4 p1, 0x0

    if-nez p0, :cond_2b

    if-nez v1, :cond_1b

    return v0

    .line 11
    :cond_1b
    instance-of p0, v1, Ljava/lang/CharSequence;

    if-eqz p0, :cond_2a

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v0

    :cond_2a
    return p1

    :cond_2b
    if-nez v1, :cond_39

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    return v0

    :cond_38
    return p1

    .line 24
    :cond_39
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_63

    .line 25
    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_53

    .line 26
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-nez p0, :cond_52

    return v0

    :cond_52
    return p1

    .line 28
    :cond_53
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-nez p0, :cond_62

    return v0

    :cond_62
    return p1

    .line 30
    :cond_63
    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_77

    .line 31
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-nez p0, :cond_76

    return v0

    :cond_76
    return p1

    .line 33
    :cond_77
    instance-of p1, p0, Ljava/lang/CharSequence;

    if-nez p1, :cond_85

    instance-of p1, v1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_80

    goto :goto_85

    .line 37
    :cond_80
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 38
    :cond_85
    :goto_85
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isOpEnd(C)Z
    .registers 2

    const/16 v0, 0x29

    if-eq p0, v0, :cond_13

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isOpEnd(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isOpEnd(C)Z

    move-result p0

    return p0
.end method

.method public static isTrue(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-eqz p0, :cond_16

    return v2

    :cond_16
    return v0

    .line 4
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 5
    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 6
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 7
    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_41

    .line 10
    :cond_39
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_40

    return v0

    :cond_40
    return v2

    :cond_41
    :goto_41
    return v0
.end method

.method public static mod(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 4
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    rem-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 4
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static plus(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_10

    .line 4
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_11

    :cond_10
    move-object p1, v0

    .line 6
    :goto_11
    instance-of p2, p0, Ljava/lang/CharSequence;

    const-string v1, ""

    if-nez p2, :cond_5a

    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1c

    goto :goto_5a

    .line 12
    :cond_1c
    instance-of p2, p0, Ljava/lang/Number;

    if-nez p2, :cond_4c

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_25

    goto :goto_4c

    :cond_25
    if-nez p0, :cond_2a

    if-nez p1, :cond_2a

    return-object v0

    :cond_2a
    if-nez p0, :cond_31

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_40

    goto :goto_44

    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_4c
    :goto_4c
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_5a
    :goto_5a
    if-nez p0, :cond_5d

    return-object p1

    .line 23
    :cond_5d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6c

    goto :goto_70

    :cond_6c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_70
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 2
    instance-of p1, p0, Ljava/lang/CharSequence;

    if-eqz p1, :cond_17

    .line 3
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_17
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 6
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_26
    if-eqz p1, :cond_33

    .line 9
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 11
    :cond_33
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_42

    .line 12
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 14
    :cond_42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 15
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public static sub(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 4
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D
    .registers 2

    if-nez p0, :cond_5

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1
    :cond_5
    invoke-virtual {p0, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    invoke-virtual {p0, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
