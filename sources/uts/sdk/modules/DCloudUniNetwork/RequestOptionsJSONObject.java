package uts.sdk.modules.DCloudUniNetwork;

import com.taobao.weex.common.Constants;
import com.taobao.weex.ui.component.WXBasicComponentType;
import com.taobao.weex.ui.component.WXImage;
import io.dcloud.uts.UTSCallback;
import io.dcloud.uts.UTSJSONObject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0004\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0001X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0016X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u0004\u0018\u00010 X\u0096\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010&\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0007\"\u0004\b(\u0010\tR\u001c\u0010)\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0007\"\u0004\b+\u0010\tR\u001e\u0010,\u001a\u0004\u0018\u00010 X\u0096\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b-\u0010\"\"\u0004\b.\u0010$R\u001e\u0010/\u001a\u0004\u0018\u00010 X\u0096\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b0\u0010\"\"\u0004\b1\u0010$R\u001e\u00102\u001a\u0004\u0018\u00010 X\u0096\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b3\u0010\"\"\u0004\b4\u0010$R\u001e\u00105\u001a\u0004\u0018\u00010 X\u0096\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b6\u0010\"\"\u0004\b7\u0010$R\u001c\u00108\u001a\u0004\u0018\u000109X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001c\u0010>\u001a\u0004\u0018\u000109X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010;\"\u0004\b@\u0010=R\u001c\u0010A\u001a\u0004\u0018\u000109X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010;\"\u0004\bC\u0010=¨\u0006D"}, d2 = {"Luts/sdk/modules/DCloudUniNetwork/RequestOptionsJSONObject;", "Lio/dcloud/uts/UTSJSONObject;", "<init>", "()V", "url", "", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "data", "", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", WXBasicComponentType.HEADER, "getHeader", "()Lio/dcloud/uts/UTSJSONObject;", "setHeader", "(Lio/dcloud/uts/UTSJSONObject;)V", "method", "Luts/sdk/modules/DCloudUniNetwork/RequestMethod;", "getMethod", "setMethod", "timeout", "", "getTimeout", "()Ljava/lang/Number;", "setTimeout", "(Ljava/lang/Number;)V", "enableQuic", "", "getEnableQuic", "()Ljava/lang/Boolean;", "setEnableQuic", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "dataType", "getDataType", "setDataType", "responseType", "getResponseType", "setResponseType", "sslVerify", "getSslVerify", "setSslVerify", "withCredentials", "getWithCredentials", "setWithCredentials", "firstIpv4", "getFirstIpv4", "setFirstIpv4", "enableChunked", "getEnableChunked", "setEnableChunked", WXImage.SUCCEED, "Lio/dcloud/uts/UTSCallback;", "getSuccess", "()Lio/dcloud/uts/UTSCallback;", "setSuccess", "(Lio/dcloud/uts/UTSCallback;)V", Constants.Event.FAIL, "getFail", "setFail", "complete", "getComplete", "setComplete", "uni-network_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class RequestOptionsJSONObject extends UTSJSONObject {
    private UTSCallback complete;
    private Object data;
    private String dataType;
    private Boolean enableChunked;
    private Boolean enableQuic;
    private UTSCallback fail;
    private Boolean firstIpv4;
    private UTSJSONObject header;
    private String method;
    private String responseType;
    private Boolean sslVerify;
    private UTSCallback success;
    private Number timeout;
    public String url;
    private Boolean withCredentials;

    public String getUrl() {
        String str = this.url;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("url");
        return null;
    }

    public void setUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    public Object getData() {
        return this.data;
    }

    public void setData(Object obj) {
        this.data = obj;
    }

    public UTSJSONObject getHeader() {
        return this.header;
    }

    public void setHeader(UTSJSONObject uTSJSONObject) {
        this.header = uTSJSONObject;
    }

    public String getMethod() {
        return this.method;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public Number getTimeout() {
        return this.timeout;
    }

    public void setTimeout(Number number) {
        this.timeout = number;
    }

    public Boolean getEnableQuic() {
        return this.enableQuic;
    }

    public void setEnableQuic(Boolean bool) {
        this.enableQuic = bool;
    }

    public String getDataType() {
        return this.dataType;
    }

    public void setDataType(String str) {
        this.dataType = str;
    }

    public String getResponseType() {
        return this.responseType;
    }

    public void setResponseType(String str) {
        this.responseType = str;
    }

    public Boolean getSslVerify() {
        return this.sslVerify;
    }

    public void setSslVerify(Boolean bool) {
        this.sslVerify = bool;
    }

    public Boolean getWithCredentials() {
        return this.withCredentials;
    }

    public void setWithCredentials(Boolean bool) {
        this.withCredentials = bool;
    }

    public Boolean getFirstIpv4() {
        return this.firstIpv4;
    }

    public void setFirstIpv4(Boolean bool) {
        this.firstIpv4 = bool;
    }

    public Boolean getEnableChunked() {
        return this.enableChunked;
    }

    public void setEnableChunked(Boolean bool) {
        this.enableChunked = bool;
    }

    public UTSCallback getSuccess() {
        return this.success;
    }

    public void setSuccess(UTSCallback uTSCallback) {
        this.success = uTSCallback;
    }

    public UTSCallback getFail() {
        return this.fail;
    }

    public void setFail(UTSCallback uTSCallback) {
        this.fail = uTSCallback;
    }

    public UTSCallback getComplete() {
        return this.complete;
    }

    public void setComplete(UTSCallback uTSCallback) {
        this.complete = uTSCallback;
    }
}
