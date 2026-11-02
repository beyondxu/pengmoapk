package androidx.activity;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.Person;
import android.app.job.JobWorkItem;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.telephony.SubscriptionManager;
import android.widget.ThemedSpinnerAdapter;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ComponentDialog$$ExternalSyntheticApiModelOutline0 {
    public static /* bridge */ /* synthetic */ Notification.MessagingStyle m(Object obj) {
        return (Notification.MessagingStyle) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ NotificationChannel m6m(Object obj) {
        return (NotificationChannel) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ NotificationChannelGroup m7m(Object obj) {
        return (NotificationChannelGroup) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Person m8m(Object obj) {
        return (Person) obj;
    }

    public static /* synthetic */ JobWorkItem m(Intent intent) {
        return new JobWorkItem(intent);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ ShortcutInfo.Builder m11m(Context context, String str) {
        return new ShortcutInfo.Builder(context, str);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ShortcutInfo m12m(Object obj) {
        return (ShortcutInfo) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ShortcutManager m13m(Object obj) {
        return (ShortcutManager) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Icon m14m(Object obj) {
        return (Icon) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ThemedSpinnerAdapter m18m(Object obj) {
        return (ThemedSpinnerAdapter) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ OnBackInvokedCallback m19m(Object obj) {
        return (OnBackInvokedCallback) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher m20m(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m22m() {
        return Notification.MessagingStyle.class;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m25m() {
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m32m(Object obj) {
        return obj instanceof ThemedSpinnerAdapter;
    }

    public static /* bridge */ /* synthetic */ Class m$1() {
        return Notification.DecoratedCustomViewStyle.class;
    }

    public static /* bridge */ /* synthetic */ boolean m$1(Object obj) {
        return obj instanceof Icon;
    }

    public static /* bridge */ /* synthetic */ Class m$2() {
        return SubscriptionManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$3() {
        return ShortcutManager.class;
    }
}
