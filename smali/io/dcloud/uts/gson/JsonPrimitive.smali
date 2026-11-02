###### Class io.dcloud.uts.gson.JsonPrimitive (io.dcloud.uts.gson.JsonPrimitive)
.class public final Lio/dcloud/uts/gson/JsonPrimitive;
.super Lio/dcloud/uts/gson/JsonElement;
.source "JsonPrimitive.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    .line 43
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    .line 73
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    .line 52
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    .line 61
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isIntegral(Lio/dcloud/uts/gson/JsonPrimitive;)Z
    .registers 3

    .line 288
    iget-object p0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 289
    check-cast p0, Ljava/lang/Number;

    .line 290
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1f

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    return v1
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lio/dcloud/uts/gson/JsonElement;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->deepCopy()Lio/dcloud/uts/gson/JsonPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lio/dcloud/uts/gson/JsonPrimitive;
    .registers 1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_76

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_76

    .line 266
    :cond_12
    check-cast p1, Lio/dcloud/uts/gson/JsonPrimitive;

    .line 267
    iget-object v2, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_1e

    .line 268
    iget-object p1, p1, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez p1, :cond_1d

    return v0

    :cond_1d
    return v1

    .line 270
    :cond_1e
    invoke-static {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isIntegral(Lio/dcloud/uts/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {p1}, Lio/dcloud/uts/gson/JsonPrimitive;->isIntegral(Lio/dcloud/uts/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 271
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3f

    return v0

    :cond_3f
    return v1

    .line 273
    :cond_40
    iget-object v2, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_6f

    iget-object v3, p1, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_6f

    .line 274
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 277
    invoke-virtual {p1}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_6e

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6d

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6d

    goto :goto_6e

    :cond_6d
    return v1

    :cond_6e
    :goto_6e
    return v0

    .line 280
    :cond_6f
    iget-object p1, p1, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_76
    :goto_76
    return v1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .line 172
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    :cond_9
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 183
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    .line 184
    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAsBoolean()Z
    .registers 2

    .line 101
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 105
    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAsByte()B
    .registers 2

    .line 233
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    return v0

    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getAsCharacter()C
    .registers 3

    .line 238
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getAsDouble()D
    .registers 3

    .line 161
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAsFloat()F
    .registers 2

    .line 195
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0

    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAsInt()I
    .registers 2

    .line 228
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAsLong()J
    .registers 3

    .line 206
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .line 125
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_11

    sget-object v0, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    iget-object v1, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSNumber;->from(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_11
    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getAsShort()S
    .registers 2

    .line 217
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    return v0

    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 144
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_f
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 147
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_1e
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 243
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const/16 v0, 0x1f

    return v0

    .line 247
    :cond_7
    invoke-static {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->isIntegral(Lio/dcloud/uts/gson/JsonPrimitive;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1c

    .line 248
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_17
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    .line 251
    :cond_1c
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2f

    .line 252
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_17

    .line 255
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoolean()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .registers 2

    .line 114
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .registers 2

    .line 134
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
