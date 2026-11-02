###### Class io.dcloud.uts.gson.LongSerializationPolicy (io.dcloud.uts.gson.LongSerializationPolicy)
.class public abstract enum Lio/dcloud/uts/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/uts/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/uts/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lio/dcloud/uts/gson/LongSerializationPolicy;

.field public static final enum STRING:Lio/dcloud/uts/gson/LongSerializationPolicy;


# direct methods
.method private static synthetic $values()[Lio/dcloud/uts/gson/LongSerializationPolicy;
    .registers 3

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Lio/dcloud/uts/gson/LongSerializationPolicy;

    sget-object v1, Lio/dcloud/uts/gson/LongSerializationPolicy;->DEFAULT:Lio/dcloud/uts/gson/LongSerializationPolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/uts/gson/LongSerializationPolicy;->STRING:Lio/dcloud/uts/gson/LongSerializationPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Lio/dcloud/uts/gson/LongSerializationPolicy$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/LongSerializationPolicy;->DEFAULT:Lio/dcloud/uts/gson/LongSerializationPolicy;

    .line 56
    new-instance v0, Lio/dcloud/uts/gson/LongSerializationPolicy$2;

    const-string v1, "STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/uts/gson/LongSerializationPolicy;->STRING:Lio/dcloud/uts/gson/LongSerializationPolicy;

    .line 31
    invoke-static {}, Lio/dcloud/uts/gson/LongSerializationPolicy;->$values()[Lio/dcloud/uts/gson/LongSerializationPolicy;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/gson/LongSerializationPolicy;->$VALUES:[Lio/dcloud/uts/gson/LongSerializationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILio/dcloud/uts/gson/LongSerializationPolicy$1;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/uts/gson/LongSerializationPolicy;
    .registers 2

    .line 31
    const-class v0, Lio/dcloud/uts/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/uts/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public static values()[Lio/dcloud/uts/gson/LongSerializationPolicy;
    .registers 1

    .line 31
    sget-object v0, Lio/dcloud/uts/gson/LongSerializationPolicy;->$VALUES:[Lio/dcloud/uts/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lio/dcloud/uts/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/uts/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lio/dcloud/uts/gson/JsonElement;
.end method

###### Class io.dcloud.uts.gson.LongSerializationPolicy.AnonymousClass1 (io.dcloud.uts.gson.LongSerializationPolicy$1)
.class final enum Lio/dcloud/uts/gson/LongSerializationPolicy$1;
.super Lio/dcloud/uts/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lio/dcloud/uts/gson/JsonElement;
    .registers 3

    if-nez p1, :cond_5

    .line 43
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    return-object p1

    .line 45
    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.LongSerializationPolicy.AnonymousClass2 (io.dcloud.uts.gson.LongSerializationPolicy$2)
.class final enum Lio/dcloud/uts/gson/LongSerializationPolicy$2;
.super Lio/dcloud/uts/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILio/dcloud/uts/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lio/dcloud/uts/gson/JsonElement;
    .registers 3

    if-nez p1, :cond_5

    .line 59
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    return-object p1

    .line 61
    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
