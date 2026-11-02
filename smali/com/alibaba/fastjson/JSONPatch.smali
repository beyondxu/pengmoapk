###### Class com.alibaba.fastjson.JSONPatch (com.alibaba.fastjson.JSONPatch)
.class public Lcom/alibaba/fastjson/JSONPatch;
.super Ljava/lang/Object;
.source "JSONPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPatch$OperationType;,
        Lcom/alibaba/fastjson/JSONPatch$Operation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 12

    .line 18
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPatch;->isObject(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 19
    new-array v0, v2, [Lcom/alibaba/fastjson/JSONPatch$Operation;

    const-class v3, Lcom/alibaba/fastjson/JSONPatch$Operation;

    .line 20
    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONPatch$Operation;

    aput-object p1, v0, v1

    goto :goto_1e

    .line 22
    :cond_15
    const-class v0, [Lcom/alibaba/fastjson/JSONPatch$Operation;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Lcom/alibaba/fastjson/JSONPatch$Operation;

    .line 25
    :goto_1e
    array-length p1, v0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, p1, :cond_a0

    aget-object v4, v0, v3

    .line 26
    iget-object v5, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v5

    .line 27
    sget-object v6, Lcom/alibaba/fastjson/JSONPatch$1;->$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I

    iget-object v7, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->type:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_a2

    goto :goto_9d

    .line 50
    :pswitch_38
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_48

    .line 52
    iget-object p0, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->value:Ljava/lang/Object;

    if-nez p0, :cond_43

    const/4 v1, 0x1

    :cond_43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 54
    :cond_48
    iget-object p1, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_53
    iget-object v6, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->from:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v6

    .line 40
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 41
    iget-object v8, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->type:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    sget-object v9, Lcom/alibaba/fastjson/JSONPatch$OperationType;->move:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    if-ne v8, v9, :cond_8a

    .line 42
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    goto :goto_8a

    .line 44
    :cond_6a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "json patch move error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_8a
    :goto_8a
    invoke-virtual {v5, p0, v7}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_9d

    .line 35
    :pswitch_8e
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    goto :goto_9d

    .line 32
    :pswitch_92
    iget-object v4, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->value:Ljava/lang/Object;

    invoke-virtual {v5, p0, v4, v2}, Lcom/alibaba/fastjson/JSONPath;->patchAdd(Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_9d

    .line 29
    :pswitch_98
    iget-object v4, v4, Lcom/alibaba/fastjson/JSONPatch$Operation;->value:Ljava/lang/Object;

    invoke-virtual {v5, p0, v4, v1}, Lcom/alibaba/fastjson/JSONPath;->patchAdd(Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_a0
    return-object p0

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_98
        :pswitch_92
        :pswitch_8e
        :pswitch_53
        :pswitch_53
        :pswitch_38
    .end packed-switch
.end method

.method public static apply(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v0, v1

    .line 12
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPatch;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isObject(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 68
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 70
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    const/16 p0, 0x7b

    if-ne v2, p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v0
.end method

###### Class com.alibaba.fastjson.JSONPatch.AnonymousClass1 (com.alibaba.fastjson.JSONPatch$1)
.class synthetic Lcom/alibaba/fastjson/JSONPatch$1;
.super Ljava/lang/Object;
.source "JSONPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    invoke-static {}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->values()[Lcom/alibaba/fastjson/JSONPatch$OperationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/JSONPatch$1;->$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I

    :try_start_9
    sget-object v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;->add:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/alibaba/fastjson/JSONPatch$1;->$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;->replace:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/alibaba/fastjson/JSONPatch$1;->$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;->remove:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/alibaba/fastjson/JSONPatch$1;->$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;->copy:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/alibaba/fastjson/JSONPatch$1;->$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;->move:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/alibaba/fastjson/JSONPatch$1;->$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;->test:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPatch$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method

###### Class com.alibaba.fastjson.JSONPatch.Operation (com.alibaba.fastjson.JSONPatch$Operation)
.class public Lcom/alibaba/fastjson/JSONPatch$Operation;
.super Ljava/lang/Object;
.source "JSONPatch.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    orders = {
        "op",
        "from",
        "path",
        "value"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# instance fields
.field public from:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public type:Lcom/alibaba/fastjson/JSONPatch$OperationType;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "op"
    .end annotation
.end field

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.alibaba.fastjson.JSONPatch.OperationType (com.alibaba.fastjson.JSONPatch$OperationType)
.class public final enum Lcom/alibaba/fastjson/JSONPatch$OperationType;
.super Ljava/lang/Enum;
.source "JSONPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/JSONPatch$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/JSONPatch$OperationType;

.field public static final enum add:Lcom/alibaba/fastjson/JSONPatch$OperationType;

.field public static final enum copy:Lcom/alibaba/fastjson/JSONPatch$OperationType;

.field public static final enum move:Lcom/alibaba/fastjson/JSONPatch$OperationType;

.field public static final enum remove:Lcom/alibaba/fastjson/JSONPatch$OperationType;

.field public static final enum replace:Lcom/alibaba/fastjson/JSONPatch$OperationType;

.field public static final enum test:Lcom/alibaba/fastjson/JSONPatch$OperationType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    const-string v1, "add"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPatch$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPatch$OperationType;->add:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    new-instance v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    const-string v3, "remove"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/fastjson/JSONPatch$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/fastjson/JSONPatch$OperationType;->remove:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    new-instance v3, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    const-string v5, "replace"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/fastjson/JSONPatch$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/fastjson/JSONPatch$OperationType;->replace:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    new-instance v5, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    const-string v7, "move"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alibaba/fastjson/JSONPatch$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alibaba/fastjson/JSONPatch$OperationType;->move:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    new-instance v7, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    const-string v9, "copy"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alibaba/fastjson/JSONPatch$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alibaba/fastjson/JSONPatch$OperationType;->copy:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    new-instance v9, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    const-string/jumbo v11, "test"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alibaba/fastjson/JSONPatch$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alibaba/fastjson/JSONPatch$OperationType;->test:Lcom/alibaba/fastjson/JSONPatch$OperationType;

    const/4 v11, 0x6

    .line 88
    new-array v11, v11, [Lcom/alibaba/fastjson/JSONPatch$OperationType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/alibaba/fastjson/JSONPatch$OperationType;->$VALUES:[Lcom/alibaba/fastjson/JSONPatch$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPatch$OperationType;
    .registers 2

    .line 88
    const-class v0, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONPatch$OperationType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/JSONPatch$OperationType;
    .registers 1

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/JSONPatch$OperationType;->$VALUES:[Lcom/alibaba/fastjson/JSONPatch$OperationType;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/JSONPatch$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/JSONPatch$OperationType;

    return-object v0
.end method
