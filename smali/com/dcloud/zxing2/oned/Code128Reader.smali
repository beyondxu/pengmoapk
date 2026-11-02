###### Class com.dcloud.zxing2.oned.Code128Reader (com.dcloud.zxing2.oned.Code128Reader)
.class public final Lcom/dcloud/zxing2/oned/Code128Reader;
.super Lcom/dcloud/zxing2/oned/OneDReader;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .registers 111

    const/4 v0, 0x6

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_480

    new-array v2, v0, [I

    fill-array-data v2, :array_490

    new-array v3, v0, [I

    fill-array-data v3, :array_4a0

    new-array v4, v0, [I

    fill-array-data v4, :array_4b0

    new-array v5, v0, [I

    fill-array-data v5, :array_4c0

    new-array v6, v0, [I

    fill-array-data v6, :array_4d0

    new-array v7, v0, [I

    fill-array-data v7, :array_4e0

    new-array v8, v0, [I

    fill-array-data v8, :array_4f0

    new-array v9, v0, [I

    fill-array-data v9, :array_500

    new-array v10, v0, [I

    fill-array-data v10, :array_510

    new-array v11, v0, [I

    fill-array-data v11, :array_520

    new-array v12, v0, [I

    fill-array-data v12, :array_530

    new-array v13, v0, [I

    fill-array-data v13, :array_540

    new-array v14, v0, [I

    fill-array-data v14, :array_550

    new-array v15, v0, [I

    fill-array-data v15, :array_560

    move-object/from16 v16, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_570

    move-object/from16 v17, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_580

    move-object/from16 v18, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_590

    move-object/from16 v19, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5a0

    move-object/from16 v20, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5b0

    move-object/from16 v21, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5c0

    move-object/from16 v22, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5d0

    move-object/from16 v23, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5e0

    move-object/from16 v24, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5f0

    move-object/from16 v25, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_600

    move-object/from16 v26, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_610

    move-object/from16 v27, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_620

    move-object/from16 v28, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_630

    move-object/from16 v29, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_640

    move-object/from16 v30, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_650

    move-object/from16 v31, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_660

    move-object/from16 v32, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_670

    move-object/from16 v33, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_680

    move-object/from16 v34, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_690

    move-object/from16 v35, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6a0

    move-object/from16 v36, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6b0

    move-object/from16 v37, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6c0

    move-object/from16 v38, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6d0

    move-object/from16 v39, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6e0

    move-object/from16 v40, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6f0

    move-object/from16 v41, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_700

    move-object/from16 v42, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_710

    move-object/from16 v43, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_720

    move-object/from16 v44, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_730

    move-object/from16 v45, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_740

    move-object/from16 v46, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_750

    move-object/from16 v47, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_760

    move-object/from16 v48, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_770

    move-object/from16 v49, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_780

    move-object/from16 v50, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_790

    move-object/from16 v51, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7a0

    move-object/from16 v52, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7b0

    move-object/from16 v53, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7c0

    move-object/from16 v54, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7d0

    move-object/from16 v55, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7e0

    move-object/from16 v56, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7f0

    move-object/from16 v57, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_800

    move-object/from16 v58, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_810

    move-object/from16 v59, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_820

    move-object/from16 v60, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_830

    move-object/from16 v61, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_840

    move-object/from16 v62, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_850

    move-object/from16 v63, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_860

    move-object/from16 v64, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_870

    move-object/from16 v65, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_880

    move-object/from16 v66, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_890

    move-object/from16 v67, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8a0

    move-object/from16 v68, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8b0

    move-object/from16 v69, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8c0

    move-object/from16 v70, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8d0

    move-object/from16 v71, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8e0

    move-object/from16 v72, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8f0

    move-object/from16 v73, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_900

    move-object/from16 v74, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_910

    move-object/from16 v75, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_920

    move-object/from16 v76, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_930

    move-object/from16 v77, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_940

    move-object/from16 v78, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_950

    move-object/from16 v79, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_960

    move-object/from16 v80, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_970

    move-object/from16 v81, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_980

    move-object/from16 v82, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_990

    move-object/from16 v83, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9a0

    move-object/from16 v84, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9b0

    move-object/from16 v85, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9c0

    move-object/from16 v86, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9d0

    move-object/from16 v87, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9e0

    move-object/from16 v88, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9f0

    move-object/from16 v89, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a00

    move-object/from16 v90, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a10

    move-object/from16 v91, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a20

    move-object/from16 v92, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a30

    move-object/from16 v93, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a40

    move-object/from16 v94, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a50

    move-object/from16 v95, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a60

    move-object/from16 v96, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a70

    move-object/from16 v97, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a80

    move-object/from16 v98, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a90

    move-object/from16 v99, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_aa0

    move-object/from16 v100, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ab0

    move-object/from16 v101, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ac0

    move-object/from16 v102, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ad0

    move-object/from16 v103, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ae0

    move-object/from16 v104, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_af0

    move-object/from16 v105, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_b00

    move-object/from16 v106, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_b10

    const/16 v107, 0x6

    const/4 v0, 0x7

    move-object/from16 v108, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_b20

    const/16 v109, 0x7

    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/16 v110, 0x0

    aput-object v16, v0, v110

    const/16 v16, 0x1

    aput-object v2, v0, v16

    const/4 v2, 0x2

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v4, v0, v2

    const/4 v2, 0x4

    aput-object v5, v0, v2

    const/4 v2, 0x5

    aput-object v6, v0, v2

    aput-object v7, v0, v107

    aput-object v8, v0, v109

    const/16 v2, 0x8

    aput-object v9, v0, v2

    const/16 v2, 0x9

    aput-object v10, v0, v2

    const/16 v2, 0xa

    aput-object v11, v0, v2

    const/16 v2, 0xb

    aput-object v12, v0, v2

    const/16 v2, 0xc

    aput-object v13, v0, v2

    const/16 v2, 0xd

    aput-object v14, v0, v2

    const/16 v2, 0xe

    aput-object v15, v0, v2

    const/16 v2, 0xf

    aput-object v17, v0, v2

    const/16 v2, 0x10

    aput-object v18, v0, v2

    const/16 v2, 0x11

    aput-object v19, v0, v2

    const/16 v2, 0x12

    aput-object v20, v0, v2

    const/16 v2, 0x13

    aput-object v21, v0, v2

    const/16 v2, 0x14

    aput-object v22, v0, v2

    const/16 v2, 0x15

    aput-object v23, v0, v2

    const/16 v2, 0x16

    aput-object v24, v0, v2

    const/16 v2, 0x17

    aput-object v25, v0, v2

    const/16 v2, 0x18

    aput-object v26, v0, v2

    const/16 v2, 0x19

    aput-object v27, v0, v2

    const/16 v2, 0x1a

    aput-object v28, v0, v2

    const/16 v2, 0x1b

    aput-object v29, v0, v2

    const/16 v2, 0x1c

    aput-object v30, v0, v2

    const/16 v2, 0x1d

    aput-object v31, v0, v2

    const/16 v2, 0x1e

    aput-object v32, v0, v2

    const/16 v2, 0x1f

    aput-object v33, v0, v2

    const/16 v2, 0x20

    aput-object v34, v0, v2

    const/16 v2, 0x21

    aput-object v35, v0, v2

    const/16 v2, 0x22

    aput-object v36, v0, v2

    const/16 v2, 0x23

    aput-object v37, v0, v2

    const/16 v2, 0x24

    aput-object v38, v0, v2

    const/16 v2, 0x25

    aput-object v39, v0, v2

    const/16 v2, 0x26

    aput-object v40, v0, v2

    const/16 v2, 0x27

    aput-object v41, v0, v2

    const/16 v2, 0x28

    aput-object v42, v0, v2

    const/16 v2, 0x29

    aput-object v43, v0, v2

    const/16 v2, 0x2a

    aput-object v44, v0, v2

    const/16 v2, 0x2b

    aput-object v45, v0, v2

    const/16 v2, 0x2c

    aput-object v46, v0, v2

    const/16 v2, 0x2d

    aput-object v47, v0, v2

    const/16 v2, 0x2e

    aput-object v48, v0, v2

    const/16 v2, 0x2f

    aput-object v49, v0, v2

    const/16 v2, 0x30

    aput-object v50, v0, v2

    const/16 v2, 0x31

    aput-object v51, v0, v2

    const/16 v2, 0x32

    aput-object v52, v0, v2

    const/16 v2, 0x33

    aput-object v53, v0, v2

    const/16 v2, 0x34

    aput-object v54, v0, v2

    const/16 v2, 0x35

    aput-object v55, v0, v2

    const/16 v2, 0x36

    aput-object v56, v0, v2

    const/16 v2, 0x37

    aput-object v57, v0, v2

    const/16 v2, 0x38

    aput-object v58, v0, v2

    const/16 v2, 0x39

    aput-object v59, v0, v2

    const/16 v2, 0x3a

    aput-object v60, v0, v2

    const/16 v2, 0x3b

    aput-object v61, v0, v2

    const/16 v2, 0x3c

    aput-object v62, v0, v2

    const/16 v2, 0x3d

    aput-object v63, v0, v2

    const/16 v2, 0x3e

    aput-object v64, v0, v2

    const/16 v2, 0x3f

    aput-object v65, v0, v2

    const/16 v2, 0x40

    aput-object v66, v0, v2

    const/16 v2, 0x41

    aput-object v67, v0, v2

    const/16 v2, 0x42

    aput-object v68, v0, v2

    const/16 v2, 0x43

    aput-object v69, v0, v2

    const/16 v2, 0x44

    aput-object v70, v0, v2

    const/16 v2, 0x45

    aput-object v71, v0, v2

    const/16 v2, 0x46

    aput-object v72, v0, v2

    const/16 v2, 0x47

    aput-object v73, v0, v2

    const/16 v2, 0x48

    aput-object v74, v0, v2

    const/16 v2, 0x49

    aput-object v75, v0, v2

    const/16 v2, 0x4a

    aput-object v76, v0, v2

    const/16 v2, 0x4b

    aput-object v77, v0, v2

    const/16 v2, 0x4c

    aput-object v78, v0, v2

    const/16 v2, 0x4d

    aput-object v79, v0, v2

    const/16 v2, 0x4e

    aput-object v80, v0, v2

    const/16 v2, 0x4f

    aput-object v81, v0, v2

    const/16 v2, 0x50

    aput-object v82, v0, v2

    const/16 v2, 0x51

    aput-object v83, v0, v2

    const/16 v2, 0x52

    aput-object v84, v0, v2

    const/16 v2, 0x53

    aput-object v85, v0, v2

    const/16 v2, 0x54

    aput-object v86, v0, v2

    const/16 v2, 0x55

    aput-object v87, v0, v2

    const/16 v2, 0x56

    aput-object v88, v0, v2

    const/16 v2, 0x57

    aput-object v89, v0, v2

    const/16 v2, 0x58

    aput-object v90, v0, v2

    const/16 v2, 0x59

    aput-object v91, v0, v2

    const/16 v2, 0x5a

    aput-object v92, v0, v2

    const/16 v2, 0x5b

    aput-object v93, v0, v2

    const/16 v2, 0x5c

    aput-object v94, v0, v2

    const/16 v2, 0x5d

    aput-object v95, v0, v2

    const/16 v2, 0x5e

    aput-object v96, v0, v2

    const/16 v2, 0x5f

    aput-object v97, v0, v2

    const/16 v2, 0x60

    aput-object v98, v0, v2

    const/16 v2, 0x61

    aput-object v99, v0, v2

    const/16 v2, 0x62

    aput-object v100, v0, v2

    const/16 v2, 0x63

    aput-object v101, v0, v2

    const/16 v2, 0x64

    aput-object v102, v0, v2

    const/16 v2, 0x65

    aput-object v103, v0, v2

    const/16 v2, 0x66

    aput-object v104, v0, v2

    const/16 v2, 0x67

    aput-object v105, v0, v2

    const/16 v2, 0x68

    aput-object v106, v0, v2

    const/16 v2, 0x69

    aput-object v108, v0, v2

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    sput-object v0, Lcom/dcloud/zxing2/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_480
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_490
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_4a0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_4b0
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_4c0
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_4d0
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_4e0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_4f0
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_500
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_510
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_520
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_530
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_540
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_550
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_560
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_570
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_580
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_590
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_5a0
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_5b0
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_5c0
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_5d0
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_5e0
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_5f0
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_600
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_610
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_620
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_630
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_640
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_650
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_660
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_670
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_680
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_690
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_6a0
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_6b0
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_6c0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_6d0
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_6e0
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_6f0
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_700
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_710
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_720
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_730
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_740
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_750
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_760
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_770
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_780
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_790
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_7a0
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_7b0
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_7c0
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_7d0
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_7e0
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_7f0
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_800
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_810
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_820
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_830
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_840
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_850
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_860
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_870
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_880
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_890
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_8a0
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_8b0
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_8c0
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_8d0
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_8e0
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_8f0
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_900
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_910
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_920
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_930
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_940
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_950
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_960
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_970
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_980
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_990
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_9a0
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_9b0
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_9c0
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_9d0
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_9e0
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_9f0
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_a00
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_a10
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_a20
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_a30
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_a40
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_a50
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_a60
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_a70
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_a80
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_a90
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_aa0
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_ab0
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_ac0
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_ad0
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_ae0
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_af0
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_b00
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_b10
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_b20
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/dcloud/zxing2/common/BitArray;[II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p1}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    const/high16 p0, 0x3e800000    # 0.25f

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 4
    :goto_7
    sget-object v1, Lcom/dcloud/zxing2/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 5
    aget-object v1, v1, v0

    const v2, 0x3f333333    # 0.7f

    .line 6
    invoke-static {p1, v1, v2}, Lcom/dcloud/zxing2/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v1

    cmpg-float v2, v1, p0

    if-gez v2, :cond_1b

    move p2, v0

    move p0, v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    if-ltz p2, :cond_21

    return p2

    .line 16
    :cond_21
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static findStartPattern(Lcom/dcloud/zxing2/common/BitArray;)[I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result v2

    const/4 v3, 0x6

    .line 5
    new-array v3, v3, [I

    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_f
    if-ge v2, v0, :cond_70

    .line 11
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    const/4 v8, 0x1

    if-eqz v7, :cond_1f

    .line 12
    aget v7, v3, v6

    add-int/2addr v7, v8

    aput v7, v3, v6

    goto :goto_6d

    :cond_1f
    const/4 v7, 0x5

    if-ne v6, v7, :cond_67

    const/4 v9, -0x1

    const/high16 v10, 0x3e800000    # 0.25f

    const/16 v11, 0x67

    :goto_27
    const/16 v12, 0x69

    if-gt v11, v12, :cond_3f

    .line 18
    sget-object v12, Lcom/dcloud/zxing2/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v12, v12, v11

    const v13, 0x3f333333    # 0.7f

    invoke-static {v3, v12, v13}, Lcom/dcloud/zxing2/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v12

    cmpg-float v13, v12, v10

    if-gez v13, :cond_3c

    move v9, v11

    move v10, v12

    :cond_3c
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_3f
    const/4 v10, 0x2

    if-ltz v9, :cond_56

    sub-int v11, v2, v4

    .line 26
    div-int/2addr v11, v10

    sub-int v11, v4, v11

    .line 27
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v11, v4, v1}, Lcom/dcloud/zxing2/common/BitArray;->isRange(IIZ)Z

    move-result v11

    if-eqz v11, :cond_56

    .line 28
    filled-new-array {v4, v2, v9}, [I

    move-result-object p0

    return-object p0

    .line 30
    :cond_56
    aget v9, v3, v1

    aget v11, v3, v8

    add-int/2addr v9, v11

    add-int/2addr v4, v9

    const/4 v9, 0x4

    .line 31
    invoke-static {v3, v10, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    aput v1, v3, v9

    .line 33
    aput v1, v3, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_69

    :cond_67
    add-int/lit8 v6, v6, 0x1

    .line 38
    :goto_69
    aput v8, v3, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 42
    :cond_70
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;,
            Lcom/dcloud/zxing2/ChecksumException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 1
    sget-object v4, Lcom/dcloud/zxing2/DecodeHintType;->ASSUME_GS1:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 3
    :goto_13
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/Code128Reader;->findStartPattern(Lcom/dcloud/zxing2/common/BitArray;)[I

    move-result-object v4

    const/4 v5, 0x2

    .line 4
    aget v6, v4, v5

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    int-to-byte v9, v6

    .line 7
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    packed-switch v6, :pswitch_data_21e

    .line 21
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0

    :pswitch_31
    const/16 v12, 0x63

    goto :goto_39

    :pswitch_34
    const/16 v12, 0x64

    goto :goto_39

    :pswitch_37
    const/16 v12, 0x65

    .line 27
    :goto_39
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    aget v8, v4, v3

    .line 30
    aget v14, v4, v2

    const/4 v15, 0x6

    const/16 v16, 0x1

    .line 31
    new-array v2, v15, [I

    move/from16 p3, v12

    move v12, v8

    move v8, v14

    move/from16 v14, p3

    const/16 p3, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_5b
    if-nez v17, :cond_18b

    .line 50
    invoke-static {v0, v2, v8}, Lcom/dcloud/zxing2/oned/Code128Reader;->decodeCode(Lcom/dcloud/zxing2/common/BitArray;[II)I

    move-result v5

    int-to-byte v12, v5

    .line 52
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v12, 0x6a

    if-eq v5, v12, :cond_6f

    const/16 v19, 0x1

    :cond_6f
    if-eq v5, v12, :cond_77

    add-int/lit8 v18, v18, 0x1

    mul-int v23, v18, v5

    add-int v6, v6, v23

    :cond_77
    move/from16 v24, v8

    const/4 v11, 0x0

    :goto_7a
    if-ge v11, v15, :cond_83

    .line 67
    aget v25, v2, v11

    add-int v24, v24, v25

    add-int/lit8 v11, v11, 0x1

    goto :goto_7a

    :cond_83
    packed-switch v5, :pswitch_data_228

    const/16 v11, 0x60

    const-string v15, "]C1"

    packed-switch v14, :pswitch_data_232

    goto/16 :goto_fb

    .line 222
    :pswitch_8f
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0

    :pswitch_94
    const/16 v10, 0x40

    if-ge v5, v10, :cond_a8

    if-ne v9, v3, :cond_a1

    add-int/lit8 v9, v5, 0x20

    int-to-char v9, v9

    .line 84
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fa

    :cond_a1
    add-int/lit16 v9, v5, 0xa0

    int-to-char v9, v9

    .line 86
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fa

    :cond_a8
    if-ge v5, v11, :cond_ba

    if-ne v9, v3, :cond_b3

    add-int/lit8 v9, v5, -0x40

    int-to-char v9, v9

    .line 91
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fa

    :cond_b3
    add-int/lit8 v9, v5, 0x40

    int-to-char v9, v9

    .line 93
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fa

    :cond_ba
    if-eq v5, v12, :cond_be

    const/16 v19, 0x0

    :cond_be
    if-eq v5, v12, :cond_136

    packed-switch v5, :pswitch_data_23c

    goto :goto_fb

    :pswitch_c4
    if-eqz v1, :cond_fb

    .line 105
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_d0

    .line 108
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fb

    :cond_d0
    const/16 v10, 0x1d

    .line 111
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fb

    :pswitch_d6
    if-nez v3, :cond_db

    if-eqz v9, :cond_db

    goto :goto_122

    :cond_db
    if-eqz v3, :cond_12a

    if-eqz v9, :cond_12a

    goto :goto_128

    :pswitch_e0
    const/16 v10, 0x64

    goto/16 :goto_16a

    :pswitch_e4
    const/16 v10, 0x64

    const/4 v11, 0x1

    goto/16 :goto_16b

    :pswitch_e9
    if-ge v5, v11, :cond_ff

    if-ne v9, v3, :cond_f4

    add-int/lit8 v9, v5, 0x20

    int-to-char v9, v9

    .line 149
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fa

    :cond_f4
    add-int/lit16 v9, v5, 0xa0

    int-to-char v9, v9

    .line 151
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_fa
    const/4 v9, 0x0

    :cond_fb
    :goto_fb
    const/16 v10, 0x64

    goto/16 :goto_172

    :cond_ff
    if-eq v5, v12, :cond_103

    const/16 v19, 0x0

    :cond_103
    if-eq v5, v12, :cond_136

    packed-switch v5, :pswitch_data_24a

    goto :goto_fb

    :pswitch_109
    if-eqz v1, :cond_fb

    .line 161
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_115

    .line 164
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fb

    :cond_115
    const/16 v10, 0x1d

    .line 167
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fb

    :pswitch_11b
    const/16 v10, 0x64

    goto :goto_166

    :pswitch_11e
    if-nez v3, :cond_124

    if-eqz v9, :cond_124

    :goto_122
    const/4 v3, 0x1

    goto :goto_fa

    :cond_124
    if-eqz v3, :cond_12a

    if-eqz v9, :cond_12a

    :goto_128
    const/4 v3, 0x0

    goto :goto_fa

    :cond_12a
    const/4 v9, 0x1

    goto :goto_fb

    :pswitch_12c
    const/16 v10, 0x64

    const/4 v11, 0x0

    const/16 v14, 0x63

    goto :goto_173

    :pswitch_132
    const/16 v10, 0x64

    const/4 v11, 0x1

    goto :goto_167

    :cond_136
    const/16 v10, 0x64

    goto :goto_16e

    :pswitch_139
    const/16 v10, 0x64

    if-ge v5, v10, :cond_14a

    const/16 v11, 0xa

    if-ge v5, v11, :cond_146

    const/16 v11, 0x30

    .line 205
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_146
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_172

    :cond_14a
    if-eq v5, v12, :cond_14e

    const/16 v19, 0x0

    :cond_14e
    if-eq v5, v12, :cond_16e

    packed-switch v5, :pswitch_data_258

    goto :goto_172

    :pswitch_154
    if-eqz v1, :cond_172

    .line 215
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_160

    .line 218
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_172

    :cond_160
    const/16 v11, 0x1d

    .line 221
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_172

    :goto_166
    :pswitch_166
    const/4 v11, 0x0

    :goto_167
    const/16 v14, 0x65

    goto :goto_173

    :goto_16a
    :pswitch_16a
    const/4 v11, 0x0

    :goto_16b
    const/16 v14, 0x64

    goto :goto_173

    :cond_16e
    :goto_16e
    const/4 v11, 0x0

    const/16 v17, 0x1

    goto :goto_173

    :cond_172
    :goto_172
    const/4 v11, 0x0

    :goto_173
    const/16 v15, 0x65

    if-eqz v21, :cond_17e

    if-ne v14, v15, :cond_17c

    const/16 v14, 0x64

    goto :goto_17e

    :cond_17c
    const/16 v14, 0x65

    :cond_17e
    :goto_17e
    move/from16 v12, v22

    move/from16 v22, v5

    move v5, v12

    move v12, v8

    move/from16 v21, v11

    move/from16 v8, v24

    const/4 v15, 0x6

    goto/16 :goto_5b

    :cond_18b
    sub-int v1, v8, v12

    .line 397
    invoke-virtual {v0, v8}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result v2

    .line 399
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v3

    sub-int v8, v2, v12

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v8, 0x0

    .line 400
    invoke-virtual {v0, v2, v3, v8}, Lcom/dcloud/zxing2/common/BitArray;->isRange(IIZ)Z

    move-result v0

    if-eqz v0, :cond_219

    mul-int v18, v18, v5

    sub-int v6, v6, v18

    .line 409
    rem-int/lit8 v6, v6, 0x67

    if-ne v6, v5, :cond_214

    .line 414
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_20f

    if-lez v0, :cond_1c6

    if-eqz v19, :cond_1c6

    const/16 v2, 0x63

    if-ne v14, v2, :cond_1c1

    add-int/lit8 v2, v0, -0x2

    .line 424
    invoke-virtual {v13, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1c6

    :cond_1c1
    add-int/lit8 v2, v0, -0x1

    .line 426
    invoke-virtual {v13, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 430
    :cond_1c6
    :goto_1c6
    aget v0, v4, v16

    const/16 v20, 0x0

    aget v2, v4, v20

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v3, v12

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    .line 433
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 434
    new-array v2, v1, [B

    const/4 v8, 0x0

    :goto_1dc
    if-ge v8, v1, :cond_1ed

    .line 436
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1dc

    .line 439
    :cond_1ed
    new-instance v1, Lcom/dcloud/zxing2/Result;

    .line 440
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/dcloud/zxing2/ResultPoint;

    move/from16 v6, p1

    int-to-float v6, v6

    invoke-direct {v5, v0, v6}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    invoke-direct {v0, v3, v6}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dcloud/zxing2/ResultPoint;

    const/16 v20, 0x0

    aput-object v5, v3, v20

    aput-object v0, v3, v16

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v1

    .line 441
    :cond_20f
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 442
    :cond_214
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object v0

    throw v0

    .line 443
    :cond_219
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :pswitch_data_21e
    .packed-switch 0x67
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x67
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x63
        :pswitch_139
        :pswitch_e9
        :pswitch_94
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x62
        :pswitch_e4
        :pswitch_12c
        :pswitch_e0
        :pswitch_d6
        :pswitch_c4
    .end packed-switch

    :pswitch_data_24a
    .packed-switch 0x62
        :pswitch_132
        :pswitch_12c
        :pswitch_11e
        :pswitch_11b
        :pswitch_109
    .end packed-switch

    :pswitch_data_258
    .packed-switch 0x64
        :pswitch_16a
        :pswitch_166
        :pswitch_154
    .end packed-switch
.end method
