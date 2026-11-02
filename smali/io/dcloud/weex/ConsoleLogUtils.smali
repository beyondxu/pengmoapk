###### Class io.dcloud.weex.ConsoleLogUtils (io.dcloud.weex.ConsoleLogUtils)
.class public Lio/dcloud/weex/ConsoleLogUtils;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLog(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "Start windmill weex-vue-plugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3
    :cond_a
    const-string v0, "has been registered already!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    return v1

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static consoleLog(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)V
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_86

    const-string p2, "jsLog"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_86

    invoke-static {p1}, Lio/dcloud/weex/ConsoleLogUtils;->checkLog(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 3
    const-string p0, "__ERROR"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_25

    .line 5
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR"

    goto :goto_5a

    .line 6
    :cond_25
    const-string p0, "__LOG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 8
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LOG"

    goto :goto_5a

    .line 9
    :cond_34
    const-string p0, "__INFO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 11
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "INFO"

    goto :goto_5a

    .line 12
    :cond_43
    const-string p0, "__WARN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 14
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WARN"

    goto :goto_5a

    .line 16
    :cond_52
    const-string p0, "__DEBUG"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DEBUG"

    .line 19
    :goto_5a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string p2, "v8performance"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "initJSEngineTime"

    if-eqz p2, :cond_71

    .line 21
    const-string p1, "v8performance:"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_71
    const-string p2, "JSCPerformance"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_83

    .line 25
    const-string p1, "JSCPerformance:"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 28
    :cond_83
    invoke-static {p0, p1}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    return-void
.end method
