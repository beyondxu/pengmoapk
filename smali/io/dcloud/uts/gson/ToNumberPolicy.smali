###### Class io.dcloud.uts.gson.ToNumberPolicy (io.dcloud.uts.gson.ToNumberPolicy)
.class public abstract enum Lio/dcloud/uts/gson/ToNumberPolicy;
.super Ljava/lang/Enum;
.source "ToNumberPolicy.java"

# interfaces
.implements Lio/dcloud/uts/gson/ToNumberStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/uts/gson/ToNumberPolicy;",
        ">;",
        "Lio/dcloud/uts/gson/ToNumberStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/uts/gson/ToNumberPolicy;

.field public static final enum BIG_DECIMAL:Lio/dcloud/uts/gson/ToNumberPolicy;

.field public static final enum DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

.field public static final enum LAZILY_PARSED_NUMBER:Lio/dcloud/uts/gson/ToNumberPolicy;

.field public static final enum LONG_OR_DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

.field public static final enum UTS_Number:Lio/dcloud/uts/gson/ToNumberPolicy;


# direct methods
.method private static synthetic $values()[Lio/dcloud/uts/gson/ToNumberPolicy;
    .registers 3

    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lio/dcloud/uts/gson/ToNumberPolicy;

    sget-object v1, Lio/dcloud/uts/gson/ToNumberPolicy;->DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lio/dcloud/uts/gson/ToNumberPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/ToNumberPolicy;->UTS_Number:Lio/dcloud/uts/gson/ToNumberPolicy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/ToNumberPolicy;->BIG_DECIMAL:Lio/dcloud/uts/gson/ToNumberPolicy;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Lio/dcloud/uts/gson/ToNumberPolicy$1;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/ToNumberPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

    .line 50
    new-instance v0, Lio/dcloud/uts/gson/ToNumberPolicy$2;

    const-string v1, "LAZILY_PARSED_NUMBER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/ToNumberPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lio/dcloud/uts/gson/ToNumberPolicy;

    .line 65
    new-instance v0, Lio/dcloud/uts/gson/ToNumberPolicy$3;

    const-string v1, "LONG_OR_DOUBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/ToNumberPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

    .line 87
    new-instance v0, Lio/dcloud/uts/gson/ToNumberPolicy$4;

    const-string v1, "UTS_Number"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/ToNumberPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->UTS_Number:Lio/dcloud/uts/gson/ToNumberPolicy;

    .line 109
    new-instance v0, Lio/dcloud/uts/gson/ToNumberPolicy$5;

    const-string v1, "BIG_DECIMAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/ToNumberPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->BIG_DECIMAL:Lio/dcloud/uts/gson/ToNumberPolicy;

    .line 33
    invoke-static {}, Lio/dcloud/uts/gson/ToNumberPolicy;->$values()[Lio/dcloud/uts/gson/ToNumberPolicy;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->$VALUES:[Lio/dcloud/uts/gson/ToNumberPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILio/dcloud/uts/gson/ToNumberPolicy$1;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/ToNumberPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/uts/gson/ToNumberPolicy;
    .registers 2

    .line 33
    const-class v0, Lio/dcloud/uts/gson/ToNumberPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/uts/gson/ToNumberPolicy;

    return-object p0
.end method

.method public static values()[Lio/dcloud/uts/gson/ToNumberPolicy;
    .registers 1

    .line 33
    sget-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->$VALUES:[Lio/dcloud/uts/gson/ToNumberPolicy;

    invoke-virtual {v0}, [Lio/dcloud/uts/gson/ToNumberPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/uts/gson/ToNumberPolicy;

    return-object v0
.end method

###### Class io.dcloud.uts.gson.ToNumberPolicy.AnonymousClass1 (io.dcloud.uts.gson.ToNumberPolicy$1)
.class final enum Lio/dcloud/uts/gson/ToNumberPolicy$1;
.super Lio/dcloud/uts/gson/ToNumberPolicy;
.source "ToNumberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/ToNumberPolicy$1;)V

    return-void
.end method


# virtual methods
.method public readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Double;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/ToNumberPolicy$1;->readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.ToNumberPolicy.AnonymousClass2 (io.dcloud.uts.gson.ToNumberPolicy$2)
.class final enum Lio/dcloud/uts/gson/ToNumberPolicy$2;
.super Lio/dcloud/uts/gson/ToNumberPolicy;
.source "ToNumberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/ToNumberPolicy$1;)V

    return-void
.end method


# virtual methods
.method public readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    sget-object v0, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSNumber;->from(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.ToNumberPolicy.AnonymousClass3 (io.dcloud.uts.gson.ToNumberPolicy$3)
.class final enum Lio/dcloud/uts/gson/ToNumberPolicy$3;
.super Lio/dcloud/uts/gson/ToNumberPolicy;
.source "ToNumberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/ToNumberPolicy$1;)V

    return-void
.end method


# virtual methods
.method public readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lio/dcloud/uts/gson/JsonParseException;
        }
    .end annotation

    .line 67
    const-string v0, "; at path "

    .line 0
    const-string v1, "JSON forbids NaN and infinities: "

    .line 67
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 69
    :try_start_8
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p1

    .line 72
    :catch_11
    :try_start_11
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/Double;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v3}, Ljava/lang/Double;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_21
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->isLenient()Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_27
    return-object v3

    .line 74
    :cond_28
    new-instance v4, Lio/dcloud/uts/gson/stream/MalformedJsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lio/dcloud/uts/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_44} :catch_44

    :catch_44
    move-exception v1

    .line 78
    new-instance v3, Lio/dcloud/uts/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot parse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lio/dcloud/uts/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

###### Class io.dcloud.uts.gson.ToNumberPolicy.AnonymousClass4 (io.dcloud.uts.gson.ToNumberPolicy$4)
.class final enum Lio/dcloud/uts/gson/ToNumberPolicy$4;
.super Lio/dcloud/uts/gson/ToNumberPolicy;
.source "ToNumberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/ToNumberPolicy$1;)V

    return-void
.end method


# virtual methods
.method public readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lio/dcloud/uts/gson/JsonParseException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v1, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v1, v0}, Lio/dcloud/uts/UTSNumber;->from(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    if-nez v2, :cond_49

    .line 95
    sget-object v2, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v2, v1}, Lio/dcloud/uts/UTSNumber;->isNaN(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v2, v1}, Lio/dcloud/uts/UTSNumber;->isFinite(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_49

    .line 96
    :cond_29
    new-instance v1, Lio/dcloud/uts/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/dcloud/uts/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    :goto_49
    return-object v1
.end method

###### Class io.dcloud.uts.gson.ToNumberPolicy.AnonymousClass5 (io.dcloud.uts.gson.ToNumberPolicy$5)
.class final enum Lio/dcloud/uts/gson/ToNumberPolicy$5;
.super Lio/dcloud/uts/gson/ToNumberPolicy;
.source "ToNumberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/ToNumberPolicy$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/ToNumberPolicy$5;->readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/math/BigDecimal;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :try_start_4
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_9} :catch_a

    return-object v1

    :catch_a
    move-exception v1

    .line 115
    new-instance v2, Lio/dcloud/uts/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot parse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lio/dcloud/uts/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
