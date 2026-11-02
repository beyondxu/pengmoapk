package io.dcloud.uniapp.extapi;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import uts.sdk.modules.DCloudUniChooseMedia.ChooseMediaOptions;
import uts.sdk.modules.DCloudUniChooseMedia.IndexKt;

/* JADX INFO: compiled from: uniChooseMedia.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"0\u0010\u0012\u001a!\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u0013j\u0002`\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*\n\u0010\u0006\"\u00020\u00072\u00020\u0007*\u000e\u0010\b\"\u0002`\t2\u00060\nj\u0002`\t*\u000e\u0010\u000b\"\u0002`\f2\u00060\rj\u0002`\f*\u000e\u0010\u000e\"\u0002`\u000f2\u00060\u0007j\u0002`\u000f*\u000e\u0010\u0010\"\u0002`\u00112\u00060\rj\u0002`\u0011¨\u0006\u001b"}, d2 = {"ChooseMediaTempFile", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaTempFile;", "ChooseMediaSuccess", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaSuccess;", "ChooseMediaOptions", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaOptions;", "IChooseMediaError", "Luts/sdk/modules/DCloudUniChooseMedia/IChooseMediaError;", "ChooseMediaErrorCode", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaErrorCode;", "", "ChooseMediaFileType", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFileType;", "", "ChooseMediaFail", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaFail;", "ChooseMediaPageOrientation", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMediaPageOrientation;", "chooseMedia", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "options", "", "Luts/sdk/modules/DCloudUniChooseMedia/ChooseMedia;", "getChooseMedia", "()Lkotlin/jvm/functions/Function1;", "uni-chooseMedia_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class UniChooseMediaKt {
    private static final Function1<ChooseMediaOptions, Unit> chooseMedia = IndexKt.getChooseMedia();

    public static final Function1<ChooseMediaOptions, Unit> getChooseMedia() {
        return chooseMedia;
    }
}
