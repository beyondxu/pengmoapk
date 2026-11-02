###### Class io.dcloud.common.util.Deprecated_JSUtil (io.dcloud.common.util.Deprecated_JSUtil)
.class Lio/dcloud/common/util/Deprecated_JSUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/util/Deprecated_JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/Deprecated_JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/util/Deprecated_JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lio/dcloud/common/util/Deprecated_JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/Deprecated_JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static excDownloadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    instance-of v0, p0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v0, :cond_7

    .line 3
    const-string v0, "plus.downloader.__handlerEvt__(\'%s\', %s);"

    goto :goto_9

    .line 2
    :cond_7
    const-string v0, "((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus).downloader.__handlerEvt__(\'%s\', %s);"

    :goto_9
    const/4 v1, 0x2

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/IWebview;->executeScript(Ljava/lang/String;)V

    return-void
.end method

.method public static excUploadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    instance-of v0, p0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v0, :cond_7

    .line 3
    const-string v0, "plus.uploader.__handlerEvt__(\'%s\', %s);"

    goto :goto_9

    .line 2
    :cond_7
    const-string v0, "((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus).uploader.__handlerEvt__(\'%s\', %s);"

    :goto_9
    const/4 v1, 0x2

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/IWebview;->executeScript(Ljava/lang/String;)V

    return-void
.end method

.method public static execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_5f

    .line 1
    instance-of v0, p0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    const-string v1, ";result.keepCallback = "

    const-string v2, "%s"

    const-string v3, "\'%s\'"

    if-eqz v0, :cond_2b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "var result= {};result.status = %d;result.message = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_17

    goto :goto_18

    :cond_17
    move-object v2, v3

    .line 4
    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ";plus.bridge.callbackFromNative(\'%s\', result);"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_48

    .line 8
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "(function(w,n){try{var plus=((w.__html5plus__&&w.__html5plus__.isReady)?w.__html5plus__:(n.plus&&n.plus.isReady)?n.plus:window.plus);var result= {};result.status = %d;result.message = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_35

    goto :goto_36

    :cond_35
    move-object v2, v3

    .line 12
    :goto_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ";plus && plus.bridge.callbackFromNative(\'%s\', result);}catch(e){console.error(e.stack)};})(window,navigator);"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 17
    :goto_48
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p5, v0

    const/4 p3, 0x1

    aput-object p2, p5, p3

    const/4 p2, 0x2

    aput-object p1, p5, p2

    invoke-static {p4, p5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/IWebview;->executeScript(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public static wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "(function(){return "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 3
    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string p1, "\';"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 5
    :cond_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    :goto_22
    const-string/jumbo p0, "})()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
