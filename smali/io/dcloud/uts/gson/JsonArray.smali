###### Class io.dcloud.uts.gson.JsonArray (io.dcloud.uts.gson.JsonArray)
.class public final Lio/dcloud/uts/gson/JsonArray;
.super Lio/dcloud/uts/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/JsonElement;",
        "Ljava/lang/Iterable<",
        "Lio/dcloud/uts/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/uts/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 47
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lio/dcloud/uts/gson/JsonElement;)V
    .registers 3

    if-nez p1, :cond_4

    .line 110
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    .line 112
    :cond_4
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Character;)V
    .registers 4

    .line 82
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lio/dcloud/uts/gson/JsonArray;)V
    .registers 3

    .line 121
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    iget-object p1, p1, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public contains(Lio/dcloud/uts/gson/JsonElement;)Z
    .registers 3

    .line 167
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public deepCopy()Lio/dcloud/uts/gson/JsonArray;
    .registers 4

    .line 57
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 58
    new-instance v0, Lio/dcloud/uts/gson/JsonArray;

    iget-object v1, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lio/dcloud/uts/gson/JsonArray;-><init>(I)V

    .line 59
    iget-object v1, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/uts/gson/JsonElement;

    .line 60
    invoke-virtual {v2}, Lio/dcloud/uts/gson/JsonElement;->deepCopy()Lio/dcloud/uts/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/uts/gson/JsonArray;->add(Lio/dcloud/uts/gson/JsonElement;)V

    goto :goto_19

    :cond_2d
    return-object v0

    .line 64
    :cond_2e
    new-instance v0, Lio/dcloud/uts/gson/JsonArray;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonArray;-><init>()V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lio/dcloud/uts/gson/JsonElement;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonArray;->deepCopy()Lio/dcloud/uts/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    .line 390
    instance-of v0, p1, Lio/dcloud/uts/gson/JsonArray;

    if-eqz v0, :cond_13

    check-cast p1, Lio/dcloud/uts/gson/JsonArray;

    iget-object p1, p1, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Lio/dcloud/uts/gson/JsonElement;
    .registers 3

    .line 207
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .line 269
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 270
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 272
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 286
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 287
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 289
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .registers 3

    .line 382
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 383
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 385
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .registers 3

    .line 342
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 343
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 345
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .registers 3

    .line 350
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 351
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 353
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .registers 3

    .line 252
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 253
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 255
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .registers 3

    .line 302
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 303
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 305
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .registers 3

    .line 334
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 335
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 337
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .registers 3

    .line 318
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 319
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 321
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .line 220
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 221
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 223
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .registers 3

    .line 366
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 367
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 369
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3

    .line 236
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 237
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 395
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/dcloud/uts/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lio/dcloud/uts/gson/JsonElement;
    .registers 3

    .line 157
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public remove(Lio/dcloud/uts/gson/JsonElement;)Z
    .registers 3

    .line 144
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public set(ILio/dcloud/uts/gson/JsonElement;)Lio/dcloud/uts/gson/JsonElement;
    .registers 4

    .line 133
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 176
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
