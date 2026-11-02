package io.dcloud.feature.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.constant.DOMException;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.StringUtil;
import io.dcloud.feature.gg.dcloud.ADSim;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothUnder21 extends BluetoothBaseAdapter {
    private BTScanCallback m21ScanCallback;

    @Override // io.dcloud.feature.bluetooth.BluetoothBaseAdapter
    public void closeBluetoothAdapter(IWebview iWebview, JSONArray jSONArray) {
        BluetoothAdapter defaultAdapter;
        BTScanCallback bTScanCallback;
        super.closeBluetoothAdapter(iWebview, jSONArray);
        if (!this.isSearchBTDevice || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null || (bTScanCallback = this.m21ScanCallback) == null) {
            return;
        }
        defaultAdapter.stopLeScan(bTScanCallback);
        this.isSearchBTDevice = false;
    }

    @Override // io.dcloud.feature.bluetooth.BluetoothBaseAdapter
    public void startBluetoothDevicesDiscovery(IWebview iWebview, JSONArray jSONArray) {
        ArrayList arrayList;
        String strOptString = jSONArray.optString(0);
        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(1);
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(IApp.ConfigProperty.CONFIG_SERVICES);
        this.allowDuplicatesDevice = jSONObjectOptJSONObject.optBoolean("allowDuplicatesKey", false);
        jSONObjectOptJSONObject.optString("interval");
        if (!this.isInit) {
            Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, Integer.valueOf(ADSim.INTISPLSH), "not init"), JSUtil.ERROR, true, false);
            return;
        }
        if (!isLocationEnabled(iWebview.getActivity())) {
            Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, 10016, "Location services are turned off"), JSUtil.ERROR, true, false);
            return;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, 10010, "unsupport"), JSUtil.ERROR, true, false);
            return;
        }
        this.m21ScanCallback = new BTScanCallback();
        if (jSONArrayOptJSONArray != null) {
            arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    arrayList.add(UUID.fromString(jSONArrayOptJSONArray.optString(i)));
                } catch (Exception unused) {
                }
            }
        } else {
            arrayList = null;
        }
        if (!defaultAdapter.startLeScan(arrayList != null ? (UUID[]) arrayList.toArray(new UUID[0]) : null, this.m21ScanCallback)) {
            Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, 10015, "startBluetoothDevicesDiscovery fail"), JSUtil.ERROR, true, false);
            return;
        }
        Intent intent = new Intent();
        intent.setAction(this.STATUS_ACTION);
        intent.setPackage(iWebview.getContext().getPackageName());
        intent.putExtra("android.bluetooth.adapter.extra.STATE", 12);
        iWebview.getContext().sendBroadcast(intent);
        this.isSearchBTDevice = true;
        Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, 0, "ok"), JSUtil.OK, true, false);
    }

    @Override // io.dcloud.feature.bluetooth.BluetoothBaseAdapter
    public void stopBluetoothDevicesDiscovery(IWebview iWebview, JSONArray jSONArray) {
        String strOptString = jSONArray.optString(0);
        if (!this.isInit) {
            Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, Integer.valueOf(ADSim.INTISPLSH), "not init"), JSUtil.ERROR, true, false);
            return;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        BTScanCallback bTScanCallback = this.m21ScanCallback;
        if (bTScanCallback == null || defaultAdapter == null) {
            Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, 10015, "stopBluetoothDevicesDiscovery fail"), JSUtil.ERROR, true, false);
            return;
        }
        defaultAdapter.stopLeScan(bTScanCallback);
        this.isSearchBTDevice = false;
        Intent intent = new Intent();
        intent.setAction(this.STATUS_ACTION);
        intent.setPackage(iWebview.getContext().getPackageName());
        intent.putExtra("android.bluetooth.adapter.extra.STATE", 12);
        iWebview.getContext().sendBroadcast(intent);
        Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, 0, "ok"), JSUtil.OK, true, false);
    }

    @Override // io.dcloud.feature.bluetooth.BluetoothBaseAdapter
    public void getBluetoothDevices(IWebview iWebview, JSONArray jSONArray) {
        String strOptString = jSONArray.optString(0);
        if (!this.isInit) {
            Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, Integer.valueOf(ADSim.INTISPLSH), "not init"), JSUtil.ERROR, true, false);
            return;
        }
        StringBuilder sb = new StringBuilder();
        BTScanCallback bTScanCallback = this.m21ScanCallback;
        if (bTScanCallback != null) {
            Map<String, DCBluetoothDevice> scanList = bTScanCallback.getScanList();
            Iterator<String> it = scanList.keySet().iterator();
            while (it.hasNext()) {
                sb.append(scanList.get(it.next()).toString() + ",");
            }
        }
        if (sb.lastIndexOf(",") > 5) {
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format("{devices:[%s]}", sb.toString()), JSUtil.OK, true, false);
    }

    @Override // io.dcloud.feature.bluetooth.BluetoothBaseAdapter
    public void dispose(String str) {
        super.dispose(str);
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            defaultAdapter.stopLeScan(this.m21ScanCallback);
            this.isSearchBTDevice = false;
        }
    }

    class BTScanCallback implements BluetoothAdapter.LeScanCallback {
        private String __JS__FUNCTION = "{devices:[%s]}";
        private Map<String, DCBluetoothDevice> scanList = new HashMap();

        public BTScanCallback() {
        }

        @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            DCBluetoothDevice dCBluetoothDevice = new DCBluetoothDevice(bluetoothDevice, bArr);
            dCBluetoothDevice.setRSSI(i);
            if (BluetoothUnder21.this.allowDuplicatesDevice) {
                BluetoothUnder21.this.execJsCallback(BluetoothBaseAdapter.CALLBACK_DEVICE_FOUND, StringUtil.format(this.__JS__FUNCTION, dCBluetoothDevice.toString()), true);
                this.scanList.put(bluetoothDevice.getAddress(), dCBluetoothDevice);
                return;
            }
            String address = bluetoothDevice.getAddress();
            if (this.scanList.containsKey(address)) {
                return;
            }
            this.scanList.put(address, dCBluetoothDevice);
            BluetoothUnder21.this.execJsCallback(BluetoothBaseAdapter.CALLBACK_DEVICE_FOUND, StringUtil.format(this.__JS__FUNCTION, dCBluetoothDevice.toString()), true);
        }

        public Map<String, DCBluetoothDevice> getScanList() {
            return this.scanList;
        }
    }
}
