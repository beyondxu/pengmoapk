package io.dcloud.common.util.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import io.dcloud.common.adapter.util.Logger;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
/* JADX INFO: loaded from: classes.dex */
public class DCSQLiteOpenHelper extends SQLiteOpenHelper {
    static final String COLUMN_KEY = "key";
    static final String COLUMN_TIMESTAMP = "timestamp";
    static final String COLUMN_VALUE = "value";
    private static final String CREATE_TABLE = "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL)";
    private static final String DATABASE_NAME = "DCStorage";
    private static final int DATABASE_VERSION = 1;
    private static final int SLEEP_TIME_MS = 30;
    static final String TABLE_STORAGE = "default_wx_storage";
    static final String TAG_STORAGE = "dc_storage";
    private static DCSQLiteOpenHelper mInstance;
    static SimpleDateFormat sDateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private Context mContext;
    private SQLiteDatabase mDb;

    private DCSQLiteOpenHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.mContext = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void createTableIfNotExists(android.database.sqlite.SQLiteDatabase r3) {
        /*
            r2 = this;
            r0 = 0
            java.lang.String r1 = "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = 'default_wx_storage'"
            android.database.Cursor r0 = r3.rawQuery(r1, r0)     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            if (r0 == 0) goto L13
            int r1 = r0.getCount()     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            if (r1 <= 0) goto L13
            r0.close()
            return
        L13:
            java.lang.String r1 = "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL)"
            r3.execSQL(r1)     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            if (r0 == 0) goto L29
            r0.close()
            return
        L1e:
            r3 = move-exception
            goto L2a
        L20:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L29
            r0.close()
        L29:
            return
        L2a:
            if (r0 == 0) goto L2f
            r0.close()
        L2f:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.util.db.DCSQLiteOpenHelper.createTableIfNotExists(android.database.sqlite.SQLiteDatabase):void");
    }

    private boolean deleteDB() {
        closeDatabase();
        return this.mContext.deleteDatabase(DATABASE_NAME);
    }

    public static DCSQLiteOpenHelper getSQLiteOpenHelper(Context context) {
        if (mInstance == null) {
            mInstance = new DCSQLiteOpenHelper(context);
        }
        return mInstance;
    }

    public synchronized void closeDatabase() {
        SQLiteDatabase sQLiteDatabase = this.mDb;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            this.mDb.close();
            this.mDb = null;
        }
        mInstance = null;
    }

    synchronized void ensureDatabase(String str) {
        SQLiteDatabase sQLiteDatabase = this.mDb;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            createTableIfNotExists(this.mDb, str);
            return;
        }
        for (int i = 0; i < 2; i++) {
            if (i <= 0) {
                this.mDb = getWritableDatabase();
                break;
                break;
            }
            try {
                try {
                    deleteDB();
                    this.mDb = getWritableDatabase();
                    break;
                } catch (SQLiteException e) {
                    e.printStackTrace();
                    try {
                        Thread.sleep(30L);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            } catch (Throwable th) {
                this.mDb = null;
                Logger.d(TAG_STORAGE, "ensureDatabase failed, throwable = " + th.getMessage());
            }
        }
        if (this.mDb != null) {
            if (TextUtils.isEmpty(str)) {
                createTableIfNotExists(this.mDb);
            } else {
                createTableIfNotExists(this.mDb, str);
            }
        }
    }

    public SQLiteDatabase getDatabase() {
        ensureDatabase(null);
        return this.mDb;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(CREATE_TABLE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public SQLiteDatabase getDatabase(String str) {
        ensureDatabase(str);
        return this.mDb;
    }

    private void createTableIfNotExists(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = ?", new String[]{str});
                if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                    cursorRawQuery.close();
                    return;
                }
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str + " (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL)");
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }
}
