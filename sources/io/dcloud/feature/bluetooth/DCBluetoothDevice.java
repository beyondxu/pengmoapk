package io.dcloud.feature.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.ScanResult;
import android.os.ParcelUuid;
import android.util.SparseArray;
import io.dcloud.common.util.PdrUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DCBluetoothDevice {
    public static final ParcelUuid BASE_UUID = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
    private static final int DATA_TYPE_FLAGS = 1;
    private static final int DATA_TYPE_LOCAL_NAME_COMPLETE = 9;
    private static final int DATA_TYPE_LOCAL_NAME_SHORT = 8;
    private static final int DATA_TYPE_MANUFACTURER_SPECIFIC_DATA = 255;
    private static final int DATA_TYPE_SERVICE_DATA_128_BIT = 33;
    private static final int DATA_TYPE_SERVICE_DATA_16_BIT = 22;
    private static final int DATA_TYPE_SERVICE_DATA_32_BIT = 32;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE = 7;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL = 6;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE = 3;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL = 2;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE = 5;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL = 4;
    private static final int DATA_TYPE_TX_POWER_LEVEL = 10;
    public static final int UUID_BYTES_128_BIT = 16;
    public static final int UUID_BYTES_16_BIT = 2;
    public static final int UUID_BYTES_32_BIT = 4;
    private int RSSI;
    private String advertisData;
    private JSONArray advertisServiceUUIDs;
    private String deviceId;
    private String localName;
    private String name;
    private JSONObject serviceData;

    public DCBluetoothDevice(ScanResult scanResult) {
        setDeviceId(scanResult.getDevice().getAddress());
        setName(PdrUtil.isEmpty(scanResult.getDevice().getName()) ? "" : scanResult.getDevice().getName());
        setRSSI(scanResult.getRssi());
        SparseArray<byte[]> manufacturerSpecificData = scanResult.getScanRecord().getManufacturerSpecificData();
        if (manufacturerSpecificData != null && manufacturerSpecificData.size() > 0) {
            setAdvertisData(bytesToHexString(manufacturerSpecificData.valueAt(0)));
        }
        setLocalName(PdrUtil.isEmpty(scanResult.getScanRecord().getDeviceName()) ? "" : scanResult.getScanRecord().getDeviceName());
        try {
            setServiceData(map2Str(scanResult.getScanRecord().getServiceData()));
            setAdvertisServiceUUIDs(list2Str(scanResult.getScanRecord().getServiceUuids()));
        } catch (JSONException unused) {
            setAdvertisServiceUUIDs(new JSONArray());
        }
    }

    static byte[] concat(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static String bytesToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    public DCBluetoothDevice(BluetoothDevice bluetoothDevice, byte[] bArr) {
        setDeviceId(bluetoothDevice.getAddress());
        setName(PdrUtil.isEmpty(bluetoothDevice.getName()) ? "" : bluetoothDevice.getName());
        parseFromBytes(bArr);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:5|(4:8|(11:73|10|42|(1:44)|47|(1:50)|51|70|52|55|(5:57|(4:60|(2:62|85)(1:86)|63|58)|84|64|65)(1:87))(3:11|(3:(1:37)(1:(1:39))|40|74)(1:(1:(0)(8:SW:16|47|(0)|51|70|52|55|(0)(0)))(2:30|(2:32|(2:34|82)(1:81))(2:35|83)))|41)|68|6)|72|42|(0)|47|(0)|51|70|52|55|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f0, code lost:
    
        r1.setAdvertisServiceUUIDs(new org.json.JSONArray());
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0040. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void parseFromBytes(byte[] r17) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.bluetooth.DCBluetoothDevice.parseFromBytes(byte[]):void");
    }

    private int parseServiceUuid(byte[] bArr, int i, int i2, int i3, List<ParcelUuid> list) {
        while (i2 > 0) {
            list.add(parseUuidFrom(extractBytes(bArr, i, i3)));
            i2 -= i3;
            i += i3;
        }
        return i;
    }

    public ParcelUuid parseUuidFrom(byte[] bArr) {
        long j;
        if (bArr == null) {
            throw new IllegalArgumentException("uuidBytes cannot be null");
        }
        int length = bArr.length;
        if (length != 2 && length != 4 && length != 16) {
            throw new IllegalArgumentException("uuidBytes length invalid - " + length);
        }
        if (length == 16) {
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            return new ParcelUuid(new UUID(byteBufferOrder.getLong(8), byteBufferOrder.getLong(0)));
        }
        if (length == 2) {
            j = ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8));
        } else {
            j = ((long) ((bArr[3] & 255) << 24)) + ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8)) + ((long) ((bArr[2] & 255) << 16));
        }
        ParcelUuid parcelUuid = BASE_UUID;
        return new ParcelUuid(new UUID(parcelUuid.getUuid().getMostSignificantBits() + (j << 32), parcelUuid.getUuid().getLeastSignificantBits()));
    }

    private byte[] extractBytes(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    private JSONObject map2Str(Map<ParcelUuid, byte[]> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            for (ParcelUuid parcelUuid : map.keySet()) {
                jSONObject.put(parcelUuid.toString().toUpperCase(), bytesToHexString(map.get(parcelUuid)));
            }
        }
        if (jSONObject.length() <= 0) {
            return null;
        }
        return jSONObject;
    }

    private JSONArray list2Str(List<ParcelUuid> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null) {
            Iterator<ParcelUuid> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().toString().toUpperCase());
            }
        }
        return jSONArray;
    }

    public String getLocalName() {
        return this.localName;
    }

    public void setLocalName(String str) {
        this.localName = str;
    }

    public DCBluetoothDevice(String str, String str2, int i, String str3, JSONObject jSONObject, JSONArray jSONArray) {
        this.deviceId = str;
        this.name = str2;
        this.RSSI = i;
        this.advertisData = str3;
        this.serviceData = jSONObject;
        this.advertisServiceUUIDs = jSONArray;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getRSSI() {
        return this.RSSI;
    }

    public void setRSSI(int i) {
        this.RSSI = i;
    }

    public String getAdvertisData() {
        return this.advertisData;
    }

    public void setAdvertisData(String str) {
        this.advertisData = str;
    }

    public JSONObject getServiceData() {
        return this.serviceData;
    }

    public void setServiceData(JSONObject jSONObject) {
        this.serviceData = jSONObject;
    }

    public JSONArray getAdvertisServiceUUIDs() {
        return this.advertisServiceUUIDs;
    }

    public void setAdvertisServiceUUIDs(JSONArray jSONArray) {
        this.advertisServiceUUIDs = jSONArray;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("deviceId", this.deviceId);
            jSONObject.put("name", this.name);
            jSONObject.put("RSSI", this.RSSI);
            jSONObject.put("localName", this.localName);
            jSONObject.put("advertisServiceUUIDs", this.advertisServiceUUIDs);
            String str = this.advertisData;
            if (str != null) {
                jSONObject.put("advertisData", str);
            }
            JSONObject jSONObject2 = this.serviceData;
            if (jSONObject2 != null) {
                jSONObject.put("serviceData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
