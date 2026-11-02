package dc.squareup.okio;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.media.ExifInterface;
import java.io.FileDescriptor;
import java.util.Optional;
import java.util.concurrent.atomic.DoubleAdder;
import java.util.concurrent.atomic.LongAdder;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Okio$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ NotificationChannel m(String str, CharSequence charSequence, int i) {
        return new NotificationChannel(str, charSequence, i);
    }

    public static /* synthetic */ NotificationChannelGroup m(String str, CharSequence charSequence) {
        return new NotificationChannelGroup(str, charSequence);
    }

    public static /* bridge */ /* synthetic */ ImageDecoder.Source m(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AnimatedImageDrawable m408m(Object obj) {
        return (AnimatedImageDrawable) obj;
    }

    public static /* synthetic */ ExifInterface m(FileDescriptor fileDescriptor) {
        return new ExifInterface(fileDescriptor);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Optional m414m(Object obj) {
        return (Optional) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ DoubleAdder m415m(Object obj) {
        return (DoubleAdder) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ LongAdder m416m(Object obj) {
        return (LongAdder) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m422m(Object obj) {
        return obj instanceof LongAdder;
    }

    public static /* bridge */ /* synthetic */ boolean m$1(Object obj) {
        return obj instanceof DoubleAdder;
    }

    public static /* bridge */ /* synthetic */ boolean m$2(Object obj) {
        return obj instanceof AnimatedImageDrawable;
    }
}
