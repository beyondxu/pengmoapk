###### Class io.dcloud.uts.gson.JsonSyntaxException (io.dcloud.uts.gson.JsonSyntaxException)
.class public final Lio/dcloud/uts/gson/JsonSyntaxException;
.super Lio/dcloud/uts/gson/JsonParseException;
.source "JsonSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
