###### Class io.dcloud.uts.gson.JsonNull (io.dcloud.uts.gson.JsonNull)
.class public final Lio/dcloud/uts/gson/JsonNull;
.super Lio/dcloud/uts/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field public static final INSTANCE:Lio/dcloud/uts/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lio/dcloud/uts/gson/JsonNull;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonNull;-><init>()V

    sput-object v0, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/dcloud/uts/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lio/dcloud/uts/gson/JsonElement;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lio/dcloud/uts/gson/JsonNull;->deepCopy()Lio/dcloud/uts/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lio/dcloud/uts/gson/JsonNull;
    .registers 2

    .line 51
    sget-object v0, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_9

    .line 67
    instance-of p1, p1, Lio/dcloud/uts/gson/JsonNull;

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_9
    :goto_9
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 59
    const-class v0, Lio/dcloud/uts/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
