###### Class io.dcloud.uts.gson.JsonObject (io.dcloud.uts.gson.JsonObject)
.class public final Lio/dcloud/uts/gson/JsonObject;
.super Lio/dcloud/uts/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    .line 37
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V
    .registers 4

    .line 62
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    if-nez p2, :cond_6

    sget-object p2, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    if-nez p2, :cond_5

    .line 106
    sget-object p2, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .registers 4

    if-nez p2, :cond_5

    .line 117
    sget-object p2, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    if-nez p2, :cond_5

    .line 95
    sget-object p2, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_5

    .line 84
    sget-object p2, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    return-void
.end method

.method public bridge synthetic deepCopy()Lio/dcloud/uts/gson/JsonElement;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonObject;->deepCopy()Lio/dcloud/uts/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lio/dcloud/uts/gson/JsonObject;
    .registers 5

    .line 46
    new-instance v0, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    .line 47
    iget-object v1, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/uts/gson/JsonElement;

    invoke-virtual {v2}, Lio/dcloud/uts/gson/JsonElement;->deepCopy()Lio/dcloud/uts/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    goto :goto_f

    :cond_2f
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    .line 201
    instance-of v0, p1, Lio/dcloud/uts/gson/JsonObject;

    if-eqz v0, :cond_13

    check-cast p1, Lio/dcloud/uts/gson/JsonObject;

    iget-object p1, p1, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    .line 202
    invoke-virtual {p1, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

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

.method public get(Ljava/lang/String;)Lio/dcloud/uts/gson/JsonElement;
    .registers 3

    .line 166
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lio/dcloud/uts/gson/JsonArray;
    .registers 3

    .line 186
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonArray;

    return-object p1
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lio/dcloud/uts/gson/JsonObject;
    .registers 3

    .line 196
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonObject;

    return-object p1
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lio/dcloud/uts/gson/JsonPrimitive;
    .registers 3

    .line 176
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonPrimitive;

    return-object p1
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    .line 156
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 207
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lio/dcloud/uts/gson/JsonElement;
    .registers 3

    .line 73
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 146
    iget-object v0, p0, Lio/dcloud/uts/gson/JsonObject;->members:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    return v0
.end method
