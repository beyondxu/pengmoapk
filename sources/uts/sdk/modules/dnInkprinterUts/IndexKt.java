package uts.sdk.modules.dnInkprinterUts;

import com.j0data.sdk.dnInkPrinterSDK;
import io.dcloud.uts.Map;
import io.dcloud.uts.NumberKt;
import io.dcloud.uts.UTSArray;
import io.dcloud.uts.UTSArrayKt;
import io.dcloud.uts.UTSCallback;
import io.dcloud.uts.Uint8Array;
import io.dcloud.uts.console;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: index.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u0001\u001a\u000e\u0010$\u001a\u00020%2\u0006\u0010#\u001a\u00020\u0001\u001a\u000e\u0010-\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020.\u001a\u000e\u0010/\u001a\u00020\u000e2\u0006\u0010\r\u001a\u000200\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003\"\u0011\u0010\u0006\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0003\"\u0011\u0010\u0011\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0003\"\u0011\u0010\u0013\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0003\"\u0011\u0010\u0015\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0003\"\u0011\u0010\u0017\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0003\"\u0011\u0010\u0019\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0003\"\u0011\u0010\u001b\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0003\"\u001d\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001f0\u001e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!\"0\u0010&\u001a!\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\tj\u0002`'¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)\"0\u0010*\u001a!\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\tj\u0002`+¢\u0006\b\n\u0000\u001a\u0004\b,\u0010)*@\u0010\b\"\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\t2\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\t*@\u0010\u000f\"\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\t2\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\t¨\u00061"}, d2 = {"PRINT_TIMES_ONCE", "", "getPRINT_TIMES_ONCE", "()Ljava/lang/Number;", "PRINT_TIMES_TWICE", "getPRINT_TIMES_TWICE", "PRINT_TIMES_FOUR", "getPRINT_TIMES_FOUR", "Img2PrintData", "Lkotlin/Function1;", "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptions;", "Lkotlin/ParameterName;", "name", "options", "", "MemImageToPrintData", "Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptions;", "ERROR_CODE_SUCCESS", "getERROR_CODE_SUCCESS", "ERROR_CODE_INVALID_PARAM", "getERROR_CODE_INVALID_PARAM", "ERROR_CODE_FILE_NOT_FOUND", "getERROR_CODE_FILE_NOT_FOUND", "ERROR_CODE_PROCESS_FAILED", "getERROR_CODE_PROCESS_FAILED", "ERROR_CODE_MEMORY_ERROR", "getERROR_CODE_MEMORY_ERROR", "ERROR_CODE_UNKNOWN", "getERROR_CODE_UNKNOWN", "ErrorMessages", "Lio/dcloud/uts/Map;", "", "getErrorMessages", "()Lio/dcloud/uts/Map;", "getErrorMessage", "code", "createFailResult", "Luts/sdk/modules/dnInkprinterUts/FailResult;", "img2PrintData", "Luts/sdk/modules/dnInkprinterUts/Img2PrintData;", "getImg2PrintData", "()Lkotlin/jvm/functions/Function1;", "memImageToPrintData", "Luts/sdk/modules/dnInkprinterUts/MemImageToPrintData;", "getMemImageToPrintData", "img2PrintDataByJs", "Luts/sdk/modules/dnInkprinterUts/Img2PrintDataOptionsJSONObject;", "memImageToPrintDataByJs", "Luts/sdk/modules/dnInkprinterUts/MemImageToPrintDataOptionsJSONObject;", "dn-inkprinter-uts_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class IndexKt {
    private static final Number ERROR_CODE_FILE_NOT_FOUND;
    private static final Number ERROR_CODE_INVALID_PARAM;
    private static final Number ERROR_CODE_MEMORY_ERROR;
    private static final Number ERROR_CODE_PROCESS_FAILED;
    private static final Number ERROR_CODE_SUCCESS;
    private static final Number ERROR_CODE_UNKNOWN;
    private static final Map<Number, String> ErrorMessages;
    private static final Number PRINT_TIMES_ONCE = (Number) 1;
    private static final Number PRINT_TIMES_TWICE = (Number) 2;
    private static final Number PRINT_TIMES_FOUR = (Number) 4;
    private static final Function1<Img2PrintDataOptions, Unit> img2PrintData = new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke */
        public final Object invoke2(Object obj) {
            return IndexKt.img2PrintData$lambda$0((Img2PrintDataOptions) obj);
        }
    };
    private static final Function1<MemImageToPrintDataOptions, Unit> memImageToPrintData = new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke */
        public final Object invoke2(Object obj) {
            return IndexKt.memImageToPrintData$lambda$3((MemImageToPrintDataOptions) obj);
        }
    };

    static {
        Integer num = (Number) 0;
        ERROR_CODE_SUCCESS = num;
        Integer num2 = (Number) 9010001;
        ERROR_CODE_INVALID_PARAM = num2;
        Integer num3 = (Number) 9010002;
        ERROR_CODE_FILE_NOT_FOUND = num3;
        Integer num4 = (Number) 9010003;
        ERROR_CODE_PROCESS_FAILED = num4;
        Integer num5 = (Number) 9010004;
        ERROR_CODE_MEMORY_ERROR = num5;
        Integer num6 = (Number) 9010005;
        ERROR_CODE_UNKNOWN = num6;
        ErrorMessages = new Map<>((UTSArray<UTSArray<Object>>) UTSArrayKt._uA(UTSArrayKt._uA(num, "成功"), UTSArrayKt._uA(num2, "参数错误"), UTSArrayKt._uA(num3, "文件不存在"), UTSArrayKt._uA(num4, "处理失败"), UTSArrayKt._uA(num5, "内存错误"), UTSArrayKt._uA(num6, "未知错误")));
    }

    public static final Number getPRINT_TIMES_ONCE() {
        return PRINT_TIMES_ONCE;
    }

    public static final Number getPRINT_TIMES_TWICE() {
        return PRINT_TIMES_TWICE;
    }

    public static final Number getPRINT_TIMES_FOUR() {
        return PRINT_TIMES_FOUR;
    }

    public static final Number getERROR_CODE_SUCCESS() {
        return ERROR_CODE_SUCCESS;
    }

    public static final Number getERROR_CODE_INVALID_PARAM() {
        return ERROR_CODE_INVALID_PARAM;
    }

    public static final Number getERROR_CODE_FILE_NOT_FOUND() {
        return ERROR_CODE_FILE_NOT_FOUND;
    }

    public static final Number getERROR_CODE_PROCESS_FAILED() {
        return ERROR_CODE_PROCESS_FAILED;
    }

    public static final Number getERROR_CODE_MEMORY_ERROR() {
        return ERROR_CODE_MEMORY_ERROR;
    }

    public static final Number getERROR_CODE_UNKNOWN() {
        return ERROR_CODE_UNKNOWN;
    }

    public static final Map<Number, String> getErrorMessages() {
        return ErrorMessages;
    }

    public static final String getErrorMessage(Number code) {
        Intrinsics.checkNotNullParameter(code, "code");
        String str = ErrorMessages.get(code);
        return str == null ? "未知错误" : str;
    }

    public static final FailResult createFailResult(Number code) {
        Intrinsics.checkNotNullParameter(code, "code");
        return new FailResult(code, getErrorMessage(code));
    }

    public static final Function1<Img2PrintDataOptions, Unit> getImg2PrintData() {
        return img2PrintData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit img2PrintData$lambda$0(Img2PrintDataOptions img2PrintDataOptions) {
        if (img2PrintDataOptions.getImgPath() == null || img2PrintDataOptions.getImgPath().length() == 0) {
            Object objCreateFailResult = createFailResult(ERROR_CODE_INVALID_PARAM);
            Function1<Img2PrintDataFail, Unit> fail = img2PrintDataOptions.getFail();
            if (fail != null) {
                Intrinsics.checkNotNull(objCreateFailResult, "null cannot be cast to non-null type uts.sdk.modules.dnInkprinterUts.Img2PrintDataFail");
                fail.invoke2((Img2PrintDataFail) objCreateFailResult);
            }
            Function1<Object, Unit> complete = img2PrintDataOptions.getComplete();
            if (complete != null) {
                complete.invoke2(objCreateFailResult);
            }
            return Unit.INSTANCE;
        }
        if (img2PrintDataOptions.getOutputPath() == null || img2PrintDataOptions.getOutputPath().length() == 0) {
            Object objCreateFailResult2 = createFailResult(ERROR_CODE_INVALID_PARAM);
            Function1<Img2PrintDataFail, Unit> fail2 = img2PrintDataOptions.getFail();
            if (fail2 != null) {
                Intrinsics.checkNotNull(objCreateFailResult2, "null cannot be cast to non-null type uts.sdk.modules.dnInkprinterUts.Img2PrintDataFail");
                fail2.invoke2((Img2PrintDataFail) objCreateFailResult2);
            }
            Function1<Object, Unit> complete2 = img2PrintDataOptions.getComplete();
            if (complete2 != null) {
                complete2.invoke2(objCreateFailResult2);
            }
            return Unit.INSTANCE;
        }
        try {
            dnInkPrinterSDK dninkprintersdk = new dnInkPrinterSDK();
            String imgPath = img2PrintDataOptions.getImgPath();
            String outputPath = img2PrintDataOptions.getOutputPath();
            Number iInk = img2PrintDataOptions.getIInk();
            Intrinsics.checkNotNull(iInk, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) iInk).intValue();
            Number iOutColor = img2PrintDataOptions.getIOutColor();
            Intrinsics.checkNotNull(iOutColor, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue2 = ((Integer) iOutColor).intValue();
            Number printTimes = img2PrintDataOptions.getPrintTimes();
            Intrinsics.checkNotNull(printTimes, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue3 = ((Integer) printTimes).intValue();
            Number isPhotoPaper = img2PrintDataOptions.getIsPhotoPaper();
            Intrinsics.checkNotNull(isPhotoPaper, "null cannot be cast to non-null type kotlin.Int");
            if (dninkprintersdk.img2PrintData(imgPath, outputPath, iIntValue, iIntValue2, iIntValue3, ((Integer) isPhotoPaper).intValue()) == 0) {
                Img2PrintDataResult img2PrintDataResult = new Img2PrintDataResult((Number) 0, "成功");
                Function1<Img2PrintDataResult, Unit> success = img2PrintDataOptions.getSuccess();
                if (success != null) {
                    success.invoke2(img2PrintDataResult);
                }
                Function1<Object, Unit> complete3 = img2PrintDataOptions.getComplete();
                if (complete3 != null) {
                    complete3.invoke2(img2PrintDataResult);
                }
            } else {
                Img2PrintDataFail img2PrintDataFail = new Img2PrintDataFail((Number) 9010003, "处理失败");
                Function1<Img2PrintDataFail, Unit> fail3 = img2PrintDataOptions.getFail();
                if (fail3 != null) {
                    fail3.invoke2(img2PrintDataFail);
                }
                Function1<Object, Unit> complete4 = img2PrintDataOptions.getComplete();
                if (complete4 != null) {
                    complete4.invoke2(img2PrintDataFail);
                }
            }
        } catch (Throwable th) {
            console.error("img2PrintData error:", th);
            Img2PrintDataFail img2PrintDataFail2 = new Img2PrintDataFail((Number) 9010005, "未知错误");
            Function1<Img2PrintDataFail, Unit> fail4 = img2PrintDataOptions.getFail();
            if (fail4 != null) {
                fail4.invoke2(img2PrintDataFail2);
            }
            Function1<Object, Unit> complete5 = img2PrintDataOptions.getComplete();
            if (complete5 != null) {
                complete5.invoke2(img2PrintDataFail2);
            }
        }
        return Unit.INSTANCE;
    }

    public static final Function1<MemImageToPrintDataOptions, Unit> getMemImageToPrintData() {
        return memImageToPrintData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit memImageToPrintData$lambda$3(MemImageToPrintDataOptions memImageToPrintDataOptions) {
        if (memImageToPrintDataOptions.getImgStream() == null || NumberKt.numberEquals(memImageToPrintDataOptions.getImgStream().getLength(), 0)) {
            Object objCreateFailResult = createFailResult((Number) 9010001);
            Function1<MemImageToPrintDataFail, Unit> fail = memImageToPrintDataOptions.getFail();
            if (fail != null) {
                Intrinsics.checkNotNull(objCreateFailResult, "null cannot be cast to non-null type uts.sdk.modules.dnInkprinterUts.MemImageToPrintDataFail");
                fail.invoke2((MemImageToPrintDataFail) objCreateFailResult);
            }
            Function1<Object, Unit> complete = memImageToPrintDataOptions.getComplete();
            if (complete != null) {
                complete.invoke2(objCreateFailResult);
            }
            return Unit.INSTANCE;
        }
        try {
            dnInkPrinterSDK dninkprintersdk = new dnInkPrinterSDK();
            Number length = memImageToPrintDataOptions.getImgStream().getLength();
            Intrinsics.checkNotNull(length, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) length).intValue();
            byte[] bArr = new byte[iIntValue];
            for (int i = 0; i < iIntValue; i++) {
                Number numberAnd = NumberKt.and(memImageToPrintDataOptions.getImgStream().get(Integer.valueOf(i)), (Number) 255);
                Intrinsics.checkNotNull(numberAnd, "null cannot be cast to non-null type kotlin.Byte");
                bArr[i] = ((Byte) numberAnd).byteValue();
            }
            Number iInk = memImageToPrintDataOptions.getIInk();
            Intrinsics.checkNotNull(iInk, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue2 = ((Integer) iInk).intValue();
            Number iOutColor = memImageToPrintDataOptions.getIOutColor();
            Intrinsics.checkNotNull(iOutColor, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue3 = ((Integer) iOutColor).intValue();
            Number printTimes = memImageToPrintDataOptions.getPrintTimes();
            Intrinsics.checkNotNull(printTimes, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue4 = ((Integer) printTimes).intValue();
            Number isPhotoPaper = memImageToPrintDataOptions.getIsPhotoPaper();
            Intrinsics.checkNotNull(isPhotoPaper, "null cannot be cast to non-null type kotlin.Int");
            byte[] bArrMemImageToPrintData = dninkprintersdk.memImageToPrintData(bArr, iIntValue2, iIntValue3, iIntValue4, ((Integer) isPhotoPaper).intValue());
            if (bArrMemImageToPrintData != null) {
                int length2 = bArrMemImageToPrintData.length;
                if (length2 > 0) {
                    Uint8Array uint8Array = new Uint8Array(Integer.valueOf(length2));
                    for (int i2 = 0; i2 < length2; i2++) {
                        uint8Array.set(Integer.valueOf(i2), Integer.valueOf(((Integer) Byte.valueOf(bArrMemImageToPrintData[i2])).intValue() & 255));
                    }
                    MemImageToPrintDataResult memImageToPrintDataResult = new MemImageToPrintDataResult(uint8Array, Integer.valueOf(length2));
                    Function1<MemImageToPrintDataResult, Unit> success = memImageToPrintDataOptions.getSuccess();
                    if (success != null) {
                        success.invoke2(memImageToPrintDataResult);
                    }
                    Function1<Object, Unit> complete2 = memImageToPrintDataOptions.getComplete();
                    if (complete2 != null) {
                        complete2.invoke2(memImageToPrintDataResult);
                    }
                } else {
                    MemImageToPrintDataFail memImageToPrintDataFail = new MemImageToPrintDataFail((Number) 9010003, "处理失败");
                    Function1<MemImageToPrintDataFail, Unit> fail2 = memImageToPrintDataOptions.getFail();
                    if (fail2 != null) {
                        fail2.invoke2(memImageToPrintDataFail);
                    }
                    Function1<Object, Unit> complete3 = memImageToPrintDataOptions.getComplete();
                    if (complete3 != null) {
                        complete3.invoke2(memImageToPrintDataFail);
                    }
                }
            } else {
                MemImageToPrintDataFail memImageToPrintDataFail2 = new MemImageToPrintDataFail((Number) 9010003, "处理失败");
                Function1<MemImageToPrintDataFail, Unit> fail3 = memImageToPrintDataOptions.getFail();
                if (fail3 != null) {
                    fail3.invoke2(memImageToPrintDataFail2);
                }
                Function1<Object, Unit> complete4 = memImageToPrintDataOptions.getComplete();
                if (complete4 != null) {
                    complete4.invoke2(memImageToPrintDataFail2);
                }
            }
        } catch (Throwable th) {
            console.error("memImageToPrintData error:", th);
            MemImageToPrintDataFail memImageToPrintDataFail3 = new MemImageToPrintDataFail((Number) 9010005, "未知错误");
            Function1<MemImageToPrintDataFail, Unit> fail4 = memImageToPrintDataOptions.getFail();
            if (fail4 != null) {
                fail4.invoke2(memImageToPrintDataFail3);
            }
            Function1<Object, Unit> complete5 = memImageToPrintDataOptions.getComplete();
            if (complete5 != null) {
                complete5.invoke2(memImageToPrintDataFail3);
            }
        }
        return Unit.INSTANCE;
    }

    public static final void img2PrintDataByJs(final Img2PrintDataOptionsJSONObject options) {
        Intrinsics.checkNotNullParameter(options, "options");
        img2PrintData.invoke2(new Img2PrintDataOptions(options.getImgPath(), options.getOutputPath(), options.getIInk(), options.getIOutColor(), options.getPrintTimes(), options.isPhotoPaper(), new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.img2PrintDataByJs$lambda$4(options, (Img2PrintDataResult) obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.img2PrintDataByJs$lambda$5(options, (Img2PrintDataFail) obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.img2PrintDataByJs$lambda$6(options, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit img2PrintDataByJs$lambda$4(Img2PrintDataOptionsJSONObject img2PrintDataOptionsJSONObject, Img2PrintDataResult img2PrintDataResult) {
        UTSCallback success = img2PrintDataOptionsJSONObject.getSuccess();
        if (success != null) {
            success.invoke(img2PrintDataResult);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit img2PrintDataByJs$lambda$5(Img2PrintDataOptionsJSONObject img2PrintDataOptionsJSONObject, Img2PrintDataFail img2PrintDataFail) {
        UTSCallback fail = img2PrintDataOptionsJSONObject.getFail();
        if (fail != null) {
            fail.invoke(img2PrintDataFail);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit img2PrintDataByJs$lambda$6(Img2PrintDataOptionsJSONObject img2PrintDataOptionsJSONObject, Object obj) {
        UTSCallback complete = img2PrintDataOptionsJSONObject.getComplete();
        if (complete != null) {
            complete.invoke(obj);
        }
        return Unit.INSTANCE;
    }

    public static final void memImageToPrintDataByJs(final MemImageToPrintDataOptionsJSONObject options) {
        Intrinsics.checkNotNullParameter(options, "options");
        memImageToPrintData.invoke2(new MemImageToPrintDataOptions(options.getImgStream(), options.getIInk(), options.getIOutColor(), options.getPrintTimes(), options.isPhotoPaper(), new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.memImageToPrintDataByJs$lambda$7(options, (MemImageToPrintDataResult) obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.memImageToPrintDataByJs$lambda$8(options, (MemImageToPrintDataFail) obj);
            }
        }, new Function1() { // from class: uts.sdk.modules.dnInkprinterUts.IndexKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: invoke */
            public final Object invoke2(Object obj) {
                return IndexKt.memImageToPrintDataByJs$lambda$9(options, obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit memImageToPrintDataByJs$lambda$7(MemImageToPrintDataOptionsJSONObject memImageToPrintDataOptionsJSONObject, MemImageToPrintDataResult memImageToPrintDataResult) {
        UTSCallback success = memImageToPrintDataOptionsJSONObject.getSuccess();
        if (success != null) {
            success.invoke(memImageToPrintDataResult);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit memImageToPrintDataByJs$lambda$8(MemImageToPrintDataOptionsJSONObject memImageToPrintDataOptionsJSONObject, MemImageToPrintDataFail memImageToPrintDataFail) {
        UTSCallback fail = memImageToPrintDataOptionsJSONObject.getFail();
        if (fail != null) {
            fail.invoke(memImageToPrintDataFail);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit memImageToPrintDataByJs$lambda$9(MemImageToPrintDataOptionsJSONObject memImageToPrintDataOptionsJSONObject, Object obj) {
        UTSCallback complete = memImageToPrintDataOptionsJSONObject.getComplete();
        if (complete != null) {
            complete.invoke(obj);
        }
        return Unit.INSTANCE;
    }
}
