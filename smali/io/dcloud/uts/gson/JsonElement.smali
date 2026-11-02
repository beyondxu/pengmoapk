###### Class io.dcloud.uts.gson.JsonElement (io.dcloud.uts.gson.JsonElement)
.class public abstract Lio/dcloud/uts/gson/JsonElement;
.super Ljava/lang/Object;
.source "JsonElement.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deepCopy()Lio/dcloud/uts/gson/JsonElement;
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsBoolean()Z
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsByte()B
    .registers 3

    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsCharacter()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsDouble()D
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsFloat()F
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsInt()I
    .registers 3

    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonArray()Lio/dcloud/uts/gson/JsonArray;
    .registers 4

    .line 105
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 106
    move-object v0, p0

    check-cast v0, Lio/dcloud/uts/gson/JsonArray;

    return-object v0

    .line 108
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonNull()Lio/dcloud/uts/gson/JsonNull;
    .registers 4

    .line 138
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 139
    move-object v0, p0

    check-cast v0, Lio/dcloud/uts/gson/JsonNull;

    return-object v0

    .line 141
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonObject()Lio/dcloud/uts/gson/JsonObject;
    .registers 4

    .line 89
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    move-object v0, p0

    check-cast v0, Lio/dcloud/uts/gson/JsonObject;

    return-object v0

    .line 92
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonPrimitive()Lio/dcloud/uts/gson/JsonPrimitive;
    .registers 4

    .line 121
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    move-object v0, p0

    check-cast v0, Lio/dcloud/uts/gson/JsonPrimitive;

    return-object v0

    .line 124
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Primitive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsLong()J
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsShort()S
    .registers 3

    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isJsonArray()Z
    .registers 2

    .line 48
    instance-of v0, p0, Lio/dcloud/uts/gson/JsonArray;

    return v0
.end method

.method public isJsonNull()Z
    .registers 2

    .line 76
    instance-of v0, p0, Lio/dcloud/uts/gson/JsonNull;

    return v0
.end method

.method public isJsonObject()Z
    .registers 2

    .line 57
    instance-of v0, p0, Lio/dcloud/uts/gson/JsonObject;

    return v0
.end method

.method public isJsonPrimitive()Z
    .registers 2

    .line 66
    instance-of v0, p0, Lio/dcloud/uts/gson/JsonPrimitive;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 314
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 315
    new-instance v1, Lio/dcloud/uts/gson/stream/JsonWriter;

    invoke-direct {v1, v0}, Lio/dcloud/uts/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    .line 316
    invoke-virtual {v1, v2}, Lio/dcloud/uts/gson/stream/JsonWriter;->setLenient(Z)V

    .line 317
    invoke-static {p0, v1}, Lio/dcloud/uts/gson/internal/Streams;->write(Lio/dcloud/uts/gson/JsonElement;Lio/dcloud/uts/gson/stream/JsonWriter;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 332
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 333
    new-instance v1, Lio/dcloud/uts/gson/stream/JsonWriter;

    invoke-direct {v1, v0}, Lio/dcloud/uts/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 334
    invoke-virtual {v1, p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 335
    invoke-virtual {v1, p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->setLenient(Z)V

    .line 336
    invoke-static {p0, v1}, Lio/dcloud/uts/gson/internal/Streams;->write(Lio/dcloud/uts/gson/JsonElement;Lio/dcloud/uts/gson/stream/JsonWriter;)V

    .line 337
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    .line 339
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
