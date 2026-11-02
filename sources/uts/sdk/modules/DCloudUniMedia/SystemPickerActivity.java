package uts.sdk.modules.DCloudUniMedia;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.fragment.app.FragmentActivity;
import com.dmcbig.mediapicker.PickerConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SystemPickerActivity extends FragmentActivity {
    public static final int DEFAULT_SELECTED_MAX_COUNT = Integer.MAX_VALUE;
    public static final String DOC_PATH = "doc_path";
    public static final String MAX_SELECT_COUNT = "max_select_count";
    public static final int PICKER_IMAGE = 100;
    public static final int PICKER_IMAGE_VIDEO = 101;
    public static final int PICKER_VIDEO = 102;
    public static final String SELECT_MODE = "select_mode";
    int activityOrientation = Integer.MAX_VALUE;
    private boolean copyToPrivacyPath = false;
    private String docPath;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType;
        super.onCreate(bundle);
        setContentView(new RelativeLayout(this));
        if (getIntent().hasExtra("page_orientation")) {
            int intExtra = getIntent().getIntExtra("page_orientation", 1);
            this.activityOrientation = intExtra;
            setRequestedOrientation(intExtra);
        }
        this.copyToPrivacyPath = getIntent().getBooleanExtra("copy_privacy_path", false);
        this.docPath = getIntent().getStringExtra("doc_path");
        int intExtra2 = getIntent().getIntExtra("select_mode", 101);
        int intExtra3 = getIntent().getIntExtra("max_select_count", Integer.MAX_VALUE);
        try {
            if (intExtra3 > MediaStore.getPickImagesMaxLimit()) {
                intExtra3 = MediaStore.getPickImagesMaxLimit();
            }
        } catch (Throwable unused) {
            if (intExtra3 > 100) {
                intExtra3 = 100;
            }
        }
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = null;
        switch (intExtra2) {
            case 100:
                visualMediaType = ActivityResultContracts.PickVisualMedia.ImageOnly.INSTANCE;
                break;
            case 101:
                visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
                break;
            case 102:
                visualMediaType = ActivityResultContracts.PickVisualMedia.VideoOnly.INSTANCE;
                break;
            default:
                visualMediaType = null;
                break;
        }
        if (intExtra3 == 1) {
            activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.PickVisualMedia(), new ActivityResultCallback() { // from class: uts.sdk.modules.DCloudUniMedia.SystemPickerActivity$$ExternalSyntheticLambda1
                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    this.f$0.m2164lambda$onCreate$0$utssdkmodulesDCloudUniMediaSystemPickerActivity((Uri) obj);
                }
            });
        } else if (intExtra3 > 1) {
            activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.PickMultipleVisualMedia(intExtra3), new ActivityResultCallback() { // from class: uts.sdk.modules.DCloudUniMedia.SystemPickerActivity$$ExternalSyntheticLambda2
                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    this.f$0.m2165lambda$onCreate$1$utssdkmodulesDCloudUniMediaSystemPickerActivity((List) obj);
                }
            });
        }
        if (activityResultLauncherRegisterForActivityResult != null && visualMediaType != null) {
            activityResultLauncherRegisterForActivityResult.launch(new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).build());
        } else {
            setResult(0);
            finish();
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$uts-sdk-modules-DCloudUniMedia-SystemPickerActivity, reason: not valid java name */
    /* synthetic */ void m2164lambda$onCreate$0$utssdkmodulesDCloudUniMediaSystemPickerActivity(Uri uri) {
        if (uri != null) {
            onChooseFinish(uri);
        } else {
            setResult(0);
            finish();
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$uts-sdk-modules-DCloudUniMedia-SystemPickerActivity, reason: not valid java name */
    /* synthetic */ void m2165lambda$onCreate$1$utssdkmodulesDCloudUniMediaSystemPickerActivity(List list) {
        if (list != null && !list.isEmpty()) {
            onChooseFinish((Uri[]) list.toArray(new Uri[0]));
        } else {
            setResult(0);
            finish();
        }
    }

    private void onChooseFinish(Uri... uriArr) {
        if (uriArr != null && uriArr.length > 0) {
            setTopAndBottomBarColor();
            compress(Arrays.asList(uriArr).iterator(), new ArrayList<>());
        } else {
            setResult(0);
            finish();
        }
    }

    private void compress(Iterator<Uri> it, final ArrayList<Media> arrayList) {
        String string;
        while (it.hasNext()) {
            Uri next = it.next();
            getContentResolver().takePersistableUriPermission(next, 1);
            String type = getContentResolver().getType(next);
            if (this.copyToPrivacyPath && type != null && type.startsWith("image/")) {
                string = this.docPath + System.currentTimeMillis() + "_" + getFileName(next);
                if (!copyFile(next, string, this)) {
                    string = next.toString();
                }
            } else {
                string = next.toString();
            }
            arrayList.add(makeMedia(string));
        }
        runOnUiThread(new Runnable() { // from class: uts.sdk.modules.DCloudUniMedia.SystemPickerActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m2163lambda$compress$2$utssdkmodulesDCloudUniMediaSystemPickerActivity(arrayList);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$compress$2$uts-sdk-modules-DCloudUniMedia-SystemPickerActivity, reason: not valid java name */
    /* synthetic */ void m2163lambda$compress$2$utssdkmodulesDCloudUniMediaSystemPickerActivity(ArrayList arrayList) {
        Intent intent = new Intent();
        intent.putExtra(PickerConfig.EXTRA_RESULT, arrayList);
        setResult(-1, intent);
        finish();
    }

    private Media makeMedia(String str) {
        Media media = new Media(str, "name", System.currentTimeMillis(), 0, 0L, -1, "");
        new ArrayList().add(media);
        return media;
    }

    private void setTopAndBottomBarColor() {
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(Color.parseColor("#99000000"));
        window.setNavigationBarColor(Color.parseColor("#99000000"));
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004b A[PHI: r1
      0x004b: PHI (r1v6 java.lang.String) = (r1v0 java.lang.String), (r1v7 java.lang.String) binds: [B:19:0x0046, B:21:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String getFileName(android.net.Uri r9) {
        /*
            r8 = this;
            java.lang.String r0 = r9.getScheme()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 != 0) goto L4f
            java.lang.String r0 = r9.getScheme()
            java.lang.String r2 = "content"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L4f
            android.content.ContentResolver r2 = r8.getContentResolver()
            r6 = 0
            r7 = 0
            r4 = 0
            r5 = 0
            r3 = r9
            android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)
            if (r9 == 0) goto L49
            boolean r0 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L45
            if (r0 == 0) goto L49
            java.lang.String r0 = "_display_name"
            int r0 = r9.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L45
            boolean r2 = r9.isNull(r0)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L45
            if (r2 != 0) goto L49
            java.lang.String r0 = r9.getString(r0)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L45
            r1 = r0
            goto L49
        L3e:
            r0 = move-exception
            if (r9 == 0) goto L44
            r9.close()
        L44:
            throw r0
        L45:
            if (r9 == 0) goto L50
            goto L4b
        L49:
            if (r9 == 0) goto L50
        L4b:
            r9.close()
            goto L50
        L4f:
            r3 = r9
        L50:
            boolean r9 = android.text.TextUtils.isEmpty(r1)
            if (r9 == 0) goto L8b
            android.content.ContentResolver r9 = r8.getContentResolver()
            java.lang.String r9 = r9.getType(r3)
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 == 0) goto L67
            java.lang.String r9 = "jpg"
            goto L73
        L67:
            java.lang.String r0 = "/"
            int r0 = r9.indexOf(r0)
            int r0 = r0 + 1
            java.lang.String r9 = r9.substring(r0)
        L73:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            long r1 = java.lang.System.currentTimeMillis()
            r0.append(r1)
            java.lang.String r1 = "."
            r0.append(r1)
            r0.append(r9)
            java.lang.String r1 = r0.toString()
        L8b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: uts.sdk.modules.DCloudUniMedia.SystemPickerActivity.getFileName(android.net.Uri):java.lang.String");
    }

    public boolean copyFile(Uri uri, String str, Context context) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (file.exists()) {
                    file.createNewFile();
                }
            }
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpenInputStream.read(bArr);
                if (i != -1) {
                    fileOutputStream.write(bArr, 0, i);
                } else {
                    inputStreamOpenInputStream.close();
                    fileOutputStream.close();
                    return true;
                }
            }
        } catch (Exception unused) {
            return false;
        }
    }
}
