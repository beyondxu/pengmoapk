package com.taobao.weex.appfram.storage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.taobao.weex.utils.WXLogUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4 */
/* JADX INFO: loaded from: classes.dex */
public class WXSQLiteOpenHelper extends SQLiteOpenHelper {
    static final String COLUMN_KEY = "key";
    static final String COLUMN_PERSISTENT = "persistent";
    static final String COLUMN_TIMESTAMP = "timestamp";
    static final String COLUMN_VALUE = "value";
    private static final String DATABASE_NAME = "WXStorage";
    private static final int DATABASE_VERSION = 2;
    private static final int SLEEP_TIME_MS = 30;
    private static final String STATEMENT_CREATE_TABLE = "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)";
    static final String TABLE_STORAGE = "default_wx_storage";
    static final String TAG_STORAGE = "weex_storage";
    static SimpleDateFormat sDateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
    private Context mContext;
    private SQLiteDatabase mDb;
    private long mMaximumDatabaseSize;

    public WXSQLiteOpenHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 2);
        this.mMaximumDatabaseSize = 52428800L;
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
            java.lang.String r1 = "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)"
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
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.weex.appfram.storage.WXSQLiteOpenHelper.createTableIfNotExists(android.database.sqlite.SQLiteDatabase):void");
    }

    private boolean deleteDB() {
        closeDatabase();
        return this.mContext.deleteDatabase(DATABASE_NAME);
    }

    public synchronized void closeDatabase() {
        SQLiteDatabase sQLiteDatabase = this.mDb;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            return;
        }
        this.mDb.close();
        this.mDb = null;
    }

    synchronized void ensureDatabase() {
        SQLiteDatabase sQLiteDatabase = this.mDb;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            for (int i = 0; i < 2; i++) {
                if (i > 0) {
                    try {
                        deleteDB();
                    } catch (SQLiteException e) {
                        try {
                            e.printStackTrace();
                            try {
                                Thread.sleep(30L);
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                            }
                        } catch (Throwable th) {
                            this.mDb = null;
                            WXLogUtils.d(TAG_STORAGE, "ensureDatabase failed, throwable = " + th.getMessage());
                        }
                    }
                }
                this.mDb = getWritableDatabase();
            }
            SQLiteDatabase sQLiteDatabase2 = this.mDb;
            if (sQLiteDatabase2 != null) {
                createTableIfNotExists(sQLiteDatabase2);
                this.mDb.setMaximumSize(this.mMaximumDatabaseSize);
            }
        }
    }

    public SQLiteDatabase getDatabase() {
        ensureDatabase();
        return this.mDb;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(STATEMENT_CREATE_TABLE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i != i2) {
            if (i2 != 2 || i != 1) {
                deleteDB();
                onCreate(sQLiteDatabase);
                return;
            }
            WXLogUtils.d(TAG_STORAGE, "storage is updating from version " + i + " to version " + i2);
            try {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    sQLiteDatabase.beginTransaction();
                    WXLogUtils.d(TAG_STORAGE, "exec sql : ALTER TABLE default_wx_storage ADD COLUMN timestamp TEXT;");
                    sQLiteDatabase.execSQL("ALTER TABLE default_wx_storage ADD COLUMN timestamp TEXT;");
                    WXLogUtils.d(TAG_STORAGE, "exec sql : ALTER TABLE default_wx_storage ADD COLUMN persistent INTEGER;");
                    sQLiteDatabase.execSQL("ALTER TABLE default_wx_storage ADD COLUMN persistent INTEGER;");
                    String str = "UPDATE default_wx_storage SET timestamp = '" + sDateFormatter.format(new Date()) + "' , persistent = 0";
                    WXLogUtils.d(TAG_STORAGE, "exec sql : " + str);
                    sQLiteDatabase.execSQL(str);
                    sQLiteDatabase.setTransactionSuccessful();
                    WXLogUtils.d(TAG_STORAGE, "storage updated success (" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms)");
                } catch (Exception e) {
                    WXLogUtils.d(TAG_STORAGE, "storage updated failed from version " + i + " to version " + i2 + "," + e.getMessage());
                    sQLiteDatabase.endTransaction();
                    WXLogUtils.d(TAG_STORAGE, "storage is rollback,all data will be removed");
                    deleteDB();
                    onCreate(sQLiteDatabase);
                }
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }
    }

    public synchronized void setMaximumSize(long j) {
        this.mMaximumDatabaseSize = j;
        SQLiteDatabase sQLiteDatabase = this.mDb;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.setMaximumSize(j);
        }
    }
}
