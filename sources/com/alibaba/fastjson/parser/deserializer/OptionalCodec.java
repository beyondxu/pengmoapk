package com.alibaba.fastjson.parser.deserializer;

import androidx.webkit.internal.ApiHelperForP$$ExternalSyntheticApiModelOutline6;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.util.TypeUtils;
import dc.squareup.okio.Okio$$ExternalSyntheticApiModelOutline0;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;

/* JADX INFO: loaded from: classes.dex */
public class OptionalCodec implements ObjectSerializer, ObjectDeserializer {
    public static OptionalCodec instance = new OptionalCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        if (type == ApiHelperForP$$ExternalSyntheticApiModelOutline6.m$10()) {
            Integer numCastToInt = TypeUtils.castToInt(defaultJSONParser.parseObject((Class) Integer.class));
            if (numCastToInt == null) {
                return (T) OptionalInt.empty();
            }
            return (T) OptionalInt.of(numCastToInt.intValue());
        }
        if (type == ApiHelperForP$$ExternalSyntheticApiModelOutline6.m$11()) {
            Long lCastToLong = TypeUtils.castToLong(defaultJSONParser.parseObject((Class) Long.class));
            if (lCastToLong == null) {
                return (T) OptionalLong.empty();
            }
            return (T) OptionalLong.of(lCastToLong.longValue());
        }
        if (type == ApiHelperForP$$ExternalSyntheticApiModelOutline6.m$12()) {
            Double dCastToDouble = TypeUtils.castToDouble(defaultJSONParser.parseObject((Class) Double.class));
            if (dCastToDouble == null) {
                return (T) OptionalDouble.empty();
            }
            return (T) OptionalDouble.of(dCastToDouble.doubleValue());
        }
        Object object = defaultJSONParser.parseObject(TypeUtils.unwrapOptional(type));
        if (object == null) {
            return (T) Optional.empty();
        }
        return (T) Optional.of(object);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        if (obj == null) {
            jSONSerializer.writeNull();
            return;
        }
        if (ApiHelperForP$$ExternalSyntheticApiModelOutline6.m$4(obj)) {
            Optional optionalM414m = Okio$$ExternalSyntheticApiModelOutline0.m414m(obj);
            jSONSerializer.write(optionalM414m.isPresent() ? optionalM414m.get() : null);
            return;
        }
        if (ApiHelperForP$$ExternalSyntheticApiModelOutline6.m$2(obj)) {
            OptionalDouble optionalDoubleM193m = ApiHelperForP$$ExternalSyntheticApiModelOutline6.m193m(obj);
            if (optionalDoubleM193m.isPresent()) {
                jSONSerializer.write(Double.valueOf(optionalDoubleM193m.getAsDouble()));
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (ApiHelperForP$$ExternalSyntheticApiModelOutline6.m$3(obj)) {
            OptionalInt optionalIntM195m = ApiHelperForP$$ExternalSyntheticApiModelOutline6.m195m(obj);
            if (optionalIntM195m.isPresent()) {
                jSONSerializer.out.writeInt(optionalIntM195m.getAsInt());
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (ApiHelperForP$$ExternalSyntheticApiModelOutline6.m$5(obj)) {
            OptionalLong optionalLongM198m = ApiHelperForP$$ExternalSyntheticApiModelOutline6.m198m(obj);
            if (optionalLongM198m.isPresent()) {
                jSONSerializer.out.writeLong(optionalLongM198m.getAsLong());
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        throw new JSONException("not support optional : " + obj.getClass());
    }
}
