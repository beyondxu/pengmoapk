package io.dcloud.feature.bluetooth;

import android.os.Build;
import com.hjq.permissions.Permission;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.DHInterface.StandardFeature;
import io.dcloud.common.adapter.util.PermissionUtil;
import io.dcloud.common.constant.DOMException;
import io.dcloud.common.util.AppRuntime;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.StringUtil;
import io.dcloud.feature.gg.dcloud.ADSim;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothFeature extends StandardFeature {
    private BluetoothBaseAdapter bluetoothF;

    @Override // io.dcloud.common.DHInterface.StandardFeature, io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
        super.init(absMgr, str);
        this.bluetoothF = new BluetoothUnder21();
    }

    public void openBluetoothAdapter(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-openBluetoothAdapter");
        this.bluetoothF.openBluetoothAdapter(iWebview, jSONArray);
    }

    public void closeBluetoothAdapter(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-closeBluetoothAdapter");
        this.bluetoothF.closeBluetoothAdapter(iWebview, jSONArray);
    }

    public void getBluetoothAdapterState(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-getBluetoothAdapterState");
        this.bluetoothF.getBluetoothAdapterState(iWebview, jSONArray);
    }

    public void onBluetoothAdapterStateChange(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-onBluetoothAdapterStateChange");
        this.bluetoothF.onBluetoothAdapterStateChange(iWebview, jSONArray);
    }

    public void onBluetoothDeviceFound(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-onBluetoothDeviceFound");
        this.bluetoothF.onBluetoothDeviceFound(iWebview, jSONArray);
    }

    public void getBluetoothDevices(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-getBluetoothDevices");
        this.bluetoothF.getBluetoothDevices(iWebview, jSONArray);
    }

    public void getConnectedBluetoothDevices(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-getConnectedBluetoothDevices");
        this.bluetoothF.getConnectedBluetoothDevices(iWebview, jSONArray);
    }

    public void startBluetoothDevicesDiscovery(final IWebview iWebview, final JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-startBluetoothDevicesDiscovery");
        if (Build.VERSION.SDK_INT >= 31) {
            PermissionUtil.useSystemPermissions(iWebview.getActivity(), new String[]{Permission.BLUETOOTH_SCAN, Permission.BLUETOOTH_CONNECT, Permission.ACCESS_FINE_LOCATION, Permission.ACCESS_COARSE_LOCATION}, new PermissionUtil.Request() { // from class: io.dcloud.feature.bluetooth.BluetoothFeature.1
                int time = 0;

                @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
                public void onGranted(String str) {
                    int i = this.time + 1;
                    this.time = i;
                    if (i == 4) {
                        BluetoothFeature.this.bluetoothF.startBluetoothDevicesDiscovery(iWebview, jSONArray);
                    }
                }

                @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
                public void onDenied(String str) {
                    String strOptString = jSONArray.optString(0);
                    Deprecated_JSUtil.execCallback(iWebview, strOptString, StringUtil.format(DOMException.JSON_ERROR_INFO, Integer.valueOf(ADSim.INTISPLSH), str + "permission denied"), JSUtil.ERROR, true, false);
                }
            });
        } else {
            PermissionUtil.useSystemPermissions(iWebview.getActivity(), new String[]{Permission.ACCESS_FINE_LOCATION, Permission.ACCESS_COARSE_LOCATION}, new PermissionUtil.Request() { // from class: io.dcloud.feature.bluetooth.BluetoothFeature.2
                int times = 0;

                @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
                public void onGranted(String str) {
                    int i = this.times + 1;
                    this.times = i;
                    if (i == 2) {
                        BluetoothFeature.this.bluetoothF.startBluetoothDevicesDiscovery(iWebview, jSONArray);
                    }
                }

                @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
                public void onDenied(String str) {
                    int i = this.times + 1;
                    this.times = i;
                    if (i == 2) {
                        BluetoothFeature.this.bluetoothF.startBluetoothDevicesDiscovery(iWebview, jSONArray);
                    }
                }
            });
        }
    }

    public void stopBluetoothDevicesDiscovery(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-stopBluetoothDevicesDiscovery");
        this.bluetoothF.stopBluetoothDevicesDiscovery(iWebview, jSONArray);
    }

    public void createBLEConnection(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-createBLEConnection");
        this.bluetoothF.createBLEConnection(iWebview, jSONArray);
    }

    public void setBLEMTU(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-setBLEMTU");
        this.bluetoothF.setBLEMTU(iWebview, jSONArray);
    }

    public void getBLEDeviceRSSI(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-getBLEDeviceRSSI");
        this.bluetoothF.getBLEDeviceRSSI(iWebview, jSONArray);
    }

    public void closeBLEConnection(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-closeBLEConnection");
        this.bluetoothF.closeBLEConnection(iWebview, jSONArray);
    }

    public void getBLEDeviceCharacteristics(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-getBLEDeviceCharacteristics");
        this.bluetoothF.getBLEDeviceCharacteristics(iWebview, jSONArray);
    }

    public void getBLEDeviceServices(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-getBLEDeviceServices");
        this.bluetoothF.getBLEDeviceServices(iWebview, jSONArray);
    }

    public void notifyBLECharacteristicValueChange(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-notifyBLECharacteristicValueChange");
        this.bluetoothF.notifyBLECharacteristicValueChange(iWebview, jSONArray);
    }

    public void onBLECharacteristicValueChange(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-onBLECharacteristicValueChange");
        this.bluetoothF.onBLECharacteristicValueChange(iWebview, jSONArray);
    }

    public void onBLEConnectionStateChange(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-onBLEConnectionStateChange");
        this.bluetoothF.onBLEConnectionStateChange(iWebview, jSONArray);
    }

    public void readBLECharacteristicValue(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-readBLECharacteristicValue");
        this.bluetoothF.readBLECharacteristicValue(iWebview, jSONArray);
    }

    public void writeBLECharacteristicValue(IWebview iWebview, JSONArray jSONArray) {
        AppRuntime.checkPrivacyComplianceAndPrompt(iWebview.getContext(), "Bluetooth-writeBLECharacteristicValue");
        this.bluetoothF.writeBLECharacteristicValue(iWebview, jSONArray);
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
        this.bluetoothF.dispose(str);
    }
}
