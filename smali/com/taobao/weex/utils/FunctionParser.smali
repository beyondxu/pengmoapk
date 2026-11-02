###### Class com.taobao.weex.utils.FunctionParser (com.taobao.weex.utils.FunctionParser)
.class public Lcom/taobao/weex/utils/FunctionParser;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/FunctionParser$Lexer;,
        Lcom/taobao/weex/utils/FunctionParser$Mapper;,
        Lcom/taobao/weex/utils/FunctionParser$Token;,
        Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SPACE:C = ' '


# instance fields
.field private lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

.field private mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/FunctionParser$Mapper<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$Mapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/FunctionParser$Mapper<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Lexer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$1;)V

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    .line 3
    iput-object p2, p0, Lcom/taobao/weex/utils/FunctionParser;->mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;

    return-void
.end method

.method private definition()Ljava/util/LinkedHashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    :cond_5
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser;->function()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-eq v1, v2, :cond_5

    return-object v0
.end method

.method private function()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v1}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_19
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v2}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-ne v2, v3, :cond_30

    .line 6
    invoke-direct {p0, v3}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 9
    :cond_30
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser;->mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;

    invoke-interface {v2, v1, v0}, Lcom/taobao/weex/utils/FunctionParser$Mapper;->map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v0

    if-ne p1, v0, :cond_31

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$300(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    .line 7
    :catch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Token doesn\'t match"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$400(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 9
    :cond_31
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public parse()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser;->definition()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

###### Class com.taobao.weex.utils.FunctionParser.AnonymousClass1 (com.taobao.weex.utils.FunctionParser$1)
.class synthetic Lcom/taobao/weex/utils/FunctionParser$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.utils.FunctionParser.Lexer (com.taobao.weex.utils.FunctionParser$Lexer)
.class Lcom/taobao/weex/utils/FunctionParser$Lexer;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lexer"
.end annotation


# static fields
.field private static final A_LOWER:C = 'a'

.field private static final A_UPPER:C = 'A'

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DOT:C = '.'

.field private static final LEFT_PARENT:Ljava/lang/String; = "("

.field private static final MINUS:C = '-'

.field private static final NINE:C = '9'

.field private static final PLUS:C = '+'

.field private static final RIGHT_PARENT:Ljava/lang/String; = ")"

.field private static final ZERO:C = '0'

.field private static final Z_LOWER:C = 'z'

.field private static final Z_UPPER:C = 'Z'


# instance fields
.field private current:Lcom/taobao/weex/utils/FunctionParser$Token;

.field private pointer:I

.field private source:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    .line 6
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->moveOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    return-object p0
.end method

.method private getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method

.method private getCurrentTokenValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-object v0
.end method

.method private isCharacterOrDigit(C)Z
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p1, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p1, :cond_10

    const/16 v0, 0x7a

    if-le p1, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p1, :cond_1a

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1a

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private isFuncName(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-gt v3, v2, :cond_14

    const/16 v3, 0x7a

    if-le v2, v3, :cond_21

    :cond_14
    const/16 v3, 0x41

    if-gt v3, v2, :cond_1c

    const/16 v3, 0x5a

    if-le v2, v3, :cond_21

    :cond_1c
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private moveOn(Ljava/lang/String;)V
    .registers 4

    .line 32
    const-string v0, "("

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 33
    sget-object p1, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 34
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-void

    .line 35
    :cond_f
    const-string v0, ")"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 36
    sget-object p1, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 37
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-void

    .line 38
    :cond_1e
    const-string v0, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 39
    sget-object p1, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 40
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-void

    .line 41
    :cond_2d
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->isFuncName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 42
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 43
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-void

    .line 45
    :cond_3a
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 46
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-void
.end method

.method private moveOn()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    .line 3
    :goto_2
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_49

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_24

    .line 6
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-ne v0, v1, :cond_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_24
    invoke-direct {p0, v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->isCharacterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_43

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_43

    const/16 v2, 0x25

    if-eq v1, v2, :cond_43

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_43

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_3b

    goto :goto_43

    .line 15
    :cond_3b
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-ne v0, v1, :cond_49

    add-int/2addr v1, v3

    .line 16
    iput v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    goto :goto_49

    .line 17
    :cond_43
    :goto_43
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    goto :goto_2

    .line 25
    :cond_49
    :goto_49
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-eq v0, v1, :cond_57

    .line 26
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->moveOn(Ljava/lang/String;)V

    return v3

    :cond_57
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 31
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

###### Class com.taobao.weex.utils.FunctionParser.Mapper (com.taobao.weex.utils.FunctionParser$Mapper)
.class public interface abstract Lcom/taobao/weex/utils/FunctionParser$Mapper;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

###### Class com.taobao.weex.utils.FunctionParser.Token (com.taobao.weex.utils.FunctionParser$Token)
.class final enum Lcom/taobao/weex/utils/FunctionParser$Token;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/utils/FunctionParser$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;


# direct methods
.method private static synthetic $values()[Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 3

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Lcom/taobao/weex/utils/FunctionParser$Token;

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v1, "FUNC_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v1, "PARAM_VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v1, "LEFT_PARENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v1, "RIGHT_PARENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v1, "COMMA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 2
    invoke-static {}, Lcom/taobao/weex/utils/FunctionParser$Token;->$values()[Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->$VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 2

    .line 1
    const-class v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->$VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-virtual {v0}, [Lcom/taobao/weex/utils/FunctionParser$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method

###### Class com.taobao.weex.utils.FunctionParser.WXInterpretationException (com.taobao.weex.utils.FunctionParser$WXInterpretationException)
.class Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WXInterpretationException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
