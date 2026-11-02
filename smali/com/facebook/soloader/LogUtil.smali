###### Class com.facebook.soloader.LogUtil (com.facebook.soloader.LogUtil)
.class public Lcom/facebook/soloader/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    .line 125
    invoke-static {p0, v0}, Lcom/facebook/soloader/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x3

    .line 112
    invoke-static {p0, v0}, Lcom/facebook/soloader/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 113
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 39
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    .line 98
    invoke-static {p0, v0}, Lcom/facebook/soloader/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x4

    .line 85
    invoke-static {p0, v0}, Lcom/facebook/soloader/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 86
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .registers 4

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_18

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 163
    :cond_18
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 152
    invoke-static {p0, v0}, Lcom/facebook/soloader/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x2

    .line 139
    invoke-static {p0, v0}, Lcom/facebook/soloader/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 62
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
