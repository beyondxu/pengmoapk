package com.alibaba.fastjson.serializer;

import com.taobao.weex.el.parse.Operators;
import dc.squareup.okio.Okio$$ExternalSyntheticApiModelOutline0;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class AdderSerializer implements ObjectSerializer {
    public static final AdderSerializer instance = new AdderSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (Okio$$ExternalSyntheticApiModelOutline0.m422m(obj)) {
            serializeWriter.writeFieldValue(Operators.BLOCK_START, "value", Okio$$ExternalSyntheticApiModelOutline0.m416m(obj).longValue());
            serializeWriter.write(125);
        } else if (Okio$$ExternalSyntheticApiModelOutline0.m$1(obj)) {
            serializeWriter.writeFieldValue(Operators.BLOCK_START, "value", Okio$$ExternalSyntheticApiModelOutline0.m415m(obj).doubleValue());
            serializeWriter.write(125);
        }
    }
}
