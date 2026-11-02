###### Class io.dcloud.feature.bluetooth.DCBluetoothDevice (io.dcloud.feature.bluetooth.DCBluetoothDevice)
.class public Lio/dcloud/feature/bluetooth/DCBluetoothDevice;
.super Ljava/lang/Object;
.source "DCBluetoothDevice.java"


# static fields
.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field private static final DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field private static final DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# instance fields
.field private RSSI:I

.field private advertisData:Ljava/lang/String;

.field private advertisServiceUUIDs:Lorg/json/JSONArray;

.field private deviceId:Ljava/lang/String;

.field private localName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private serviceData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    .line 58
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->BASE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;[B)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setDeviceId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, ""

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1b
    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseFromBytes([B)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/le/ScanResult;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setDeviceId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_20

    move-object v0, v1

    goto :goto_28

    :cond_20
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setRSSI(I)V

    .line 78
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 79
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_50

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisData(Ljava/lang/String;)V

    .line 82
    :cond_50
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    :cond_5f
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    :goto_67
    invoke-virtual {p0, v1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setLocalName(Ljava/lang/String;)V

    .line 84
    :try_start_6a
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->map2Str(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setServiceData(Lorg/json/JSONObject;)V

    .line 85
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->list2Str(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_88} :catch_89

    return-void

    .line 87
    :catch_89
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .registers 7

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    .line 330
    iput p3, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    .line 331
    iput-object p4, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    .line 332
    iput-object p5, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    .line 333
    iput-object p6, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 7

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_27

    .line 103
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1d

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 106
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 108
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static concat([B[B)[B
    .registers 5

    .line 93
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 94
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private extractBytes([BII)[B
    .registers 6

    .line 292
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 293
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private list2Str(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 310
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_21

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method private map2Str(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_31

    .line 300
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 301
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    .line 303
    :cond_31
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-gtz p1, :cond_39

    const/4 p1, 0x0

    return-object p1

    :cond_39
    return-object v0
.end method

.method private parseFromBytes([B)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_8

    goto/16 :goto_122

    .line 130
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 135
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, ""

    move-object v11, v9

    const/4 v0, 0x0

    .line 138
    :goto_1b
    :try_start_1b
    array-length v3, v2

    if-ge v0, v3, :cond_ca

    add-int/lit8 v3, v0, 0x1

    .line 140
    aget-byte v4, v2, v0

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-nez v4, :cond_29

    goto/16 :goto_ca

    :cond_29
    add-int/lit8 v4, v4, -0x1

    move v12, v3

    add-int/lit8 v3, v0, 0x2

    .line 147
    aget-byte v12, v2, v12

    and-int/2addr v12, v5

    const/16 v13, 0x16

    const/16 v14, 0x21

    const/16 v15, 0x20

    const/4 v10, 0x2

    if-eq v12, v13, :cond_ab

    if-eq v12, v5, :cond_78

    if-eq v12, v15, :cond_ab

    if-eq v12, v14, :cond_ab

    packed-switch v12, :pswitch_data_124

    goto/16 :goto_c6

    .line 173
    :pswitch_45
    aget-byte v0, v2, v3

    goto/16 :goto_c6

    .line 169
    :pswitch_49
    new-instance v0, Ljava/lang/String;

    .line 170
    invoke-direct {v1, v2, v3, v4}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_52} :catch_d2

    move-object v11, v0

    goto/16 :goto_c6

    :pswitch_55
    const/16 v5, 0x10

    .line 164
    :try_start_57
    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_63

    :pswitch_5b
    const/4 v5, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 159
    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseServiceUuid([BIIILjava/util/List;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_63} :catch_68

    :goto_63
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_c6

    :catch_68
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_d3

    :pswitch_6c
    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 154
    :try_start_71
    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_c6

    .line 150
    :pswitch_75
    aget-byte v0, v2, v3

    goto :goto_c6

    :cond_78
    add-int/lit8 v0, v0, 0x3

    .line 195
    aget-byte v0, v2, v0

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    aget-byte v12, v2, v3

    and-int/2addr v5, v12

    add-int/2addr v0, v5

    .line 198
    invoke-direct {v1, v2, v3, v4}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v5

    .line 202
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    if-eqz v12, :cond_a7

    .line 203
    array-length v13, v5

    if-le v13, v10, :cond_c6

    .line 204
    array-length v13, v12

    array-length v14, v5

    add-int/2addr v13, v14

    sub-int/2addr v13, v10

    new-array v13, v13, [B

    .line 205
    array-length v14, v12

    const/4 v15, 0x0

    invoke-static {v12, v15, v13, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    array-length v12, v12

    array-length v14, v5

    sub-int/2addr v14, v10

    invoke-static {v5, v10, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    invoke-virtual {v7, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c6

    .line 211
    :cond_a7
    invoke-virtual {v7, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c6

    :cond_ab
    if-ne v12, v15, :cond_af

    const/4 v10, 0x4

    goto :goto_b3

    :cond_af
    if-ne v12, v14, :cond_b3

    const/16 v10, 0x10

    .line 185
    :cond_b3
    :goto_b3
    invoke-direct {v1, v2, v3, v10}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    add-int v5, v3, v10

    sub-int v10, v4, v10

    .line 189
    invoke-direct {v1, v2, v5, v10}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v5

    .line 191
    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c6
    :goto_c6
    add-int v0, v3, v4

    goto/16 :goto_1b

    .line 221
    :cond_ca
    :goto_ca
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ce} :catch_d2

    if-eqz v0, :cond_d6

    const/4 v6, 0x0

    goto :goto_d6

    :catch_d2
    move-exception v0

    .line 225
    :goto_d3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :cond_d6
    :goto_d6
    invoke-static {v11}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    goto :goto_de

    :cond_dd
    move-object v9, v11

    :goto_de
    invoke-virtual {v1, v9}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setLocalName(Ljava/lang/String;)V

    .line 230
    :try_start_e1
    invoke-direct {v1, v8}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->map2Str(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setServiceData(Lorg/json/JSONObject;)V

    .line 231
    invoke-direct {v1, v6}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->list2Str(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_e1 .. :try_end_ef} :catch_f0

    goto :goto_f8

    .line 233
    :catch_f0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V

    .line 235
    :goto_f8
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_122

    const/4 v15, 0x0

    .line 236
    new-array v0, v15, [B

    const/4 v10, 0x0

    .line 237
    :goto_102
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_11b

    .line 238
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_118

    .line 239
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v0, v2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->concat([B[B)[B

    move-result-object v0

    :cond_118
    add-int/lit8 v10, v10, 0x1

    goto :goto_102

    .line 241
    :cond_11b
    invoke-static {v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisData(Ljava/lang/String;)V

    :cond_122
    :goto_122
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6c
        :pswitch_6c
        :pswitch_5b
        :pswitch_5b
        :pswitch_55
        :pswitch_55
        :pswitch_49
        :pswitch_49
        :pswitch_45
    .end packed-switch
.end method

.method private parseServiceUuid([BIIILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_10

    .line 249
    invoke-direct {p0, p1, p2, p4}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p3, p4

    add-int/2addr p2, p4

    goto :goto_0

    :cond_10
    return p2
.end method


# virtual methods
.method public getAdvertisData()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisServiceUUIDs()Lorg/json/JSONArray;
    .registers 2

    .line 377
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 337
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .line 320
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRSSI()I
    .registers 2

    .line 353
    iget v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    return v0
.end method

.method public getServiceData()Lorg/json/JSONObject;
    .registers 2

    .line 369
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public parseUuidFrom([B)Landroid/os/ParcelUuid;
    .registers 10

    if-eqz p1, :cond_92

    .line 262
    array-length v0, p1

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_23

    const/4 v3, 0x4

    if-eq v0, v3, :cond_23

    if-ne v0, v1, :cond_e

    goto :goto_23

    .line 265
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uuidBytes length invalid - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v1, :cond_45

    .line 269
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 271
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 272
    new-instance p1, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p1, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p1

    :cond_45
    const/4 v5, 0x1

    if-ne v0, v2, :cond_55

    .line 278
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 279
    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v4

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_71

    .line 281
    :cond_55
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    .line 282
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 283
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v6, v0

    const/4 v0, 0x3

    .line 284
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    add-long/2addr v0, v6

    .line 286
    :goto_71
    sget-object p1, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 287
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 288
    new-instance p1, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p1, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p1

    .line 260
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuidBytes cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdvertisData(Ljava/lang/String;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    return-void
.end method

.method public setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->localName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public setRSSI(I)V
    .registers 2

    .line 357
    iput p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    return-void
.end method

.method public setServiceData(Lorg/json/JSONObject;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 386
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 388
    :try_start_5
    const-string v1, "deviceId"

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v1, "name"

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v1, "RSSI"

    iget v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    const-string v1, "localName"

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v1, "advertisServiceUUIDs"

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 394
    const-string v2, "advertisData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_31
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    if-eqz v1, :cond_3a

    .line 396
    const-string v2, "serviceData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3a} :catch_3a

    .line 399
    :catch_3a
    :cond_3a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
