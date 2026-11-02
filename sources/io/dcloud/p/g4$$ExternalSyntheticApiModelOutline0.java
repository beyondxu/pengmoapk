package io.dcloud.p;

import android.app.Notification;
import android.content.Context;
import android.media.ExifInterface;
import android.os.LocaleList;
import java.io.InputStream;
import java.lang.reflect.Parameter;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileSystemLoopException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Locale;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g4$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ Notification.Builder m(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    public static /* synthetic */ ExifInterface m(InputStream inputStream) {
        return new ExifInterface(inputStream);
    }

    public static /* synthetic */ LocaleList m(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }

    public static /* bridge */ /* synthetic */ Class m() {
        return BasicFileAttributes.class;
    }

    public static /* bridge */ /* synthetic */ Parameter m(Object obj) {
        return (Parameter) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ DirectoryStream m451m(Object obj) {
        return (DirectoryStream) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileSystemException m455m(Object obj) {
        return (FileSystemException) obj;
    }

    public static /* synthetic */ FileSystemException m(String str) {
        return new FileSystemException(str);
    }

    public static /* synthetic */ FileSystemException m(String str, String str2, String str3) {
        return new FileSystemException(str, str2, str3);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ FileSystemLoopException m456m(String str) {
        return new FileSystemLoopException(str);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileVisitResult m459m(Object obj) {
        return (FileVisitResult) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileVisitor m460m(Object obj) {
        return (FileVisitor) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ NoSuchFileException m462m(String str, String str2, String str3) {
        return new NoSuchFileException(str, str2, str3);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Path m463m(Object obj) {
        return (Path) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ SecureDirectoryStream m466m(Object obj) {
        return (SecureDirectoryStream) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ BasicFileAttributeView m469m(Object obj) {
        return (BasicFileAttributeView) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ BasicFileAttributes m470m(Object obj) {
        return (BasicFileAttributes) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m474m() {
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m475m(Object obj) {
        return obj instanceof SecureDirectoryStream;
    }

    public static /* bridge */ /* synthetic */ Class m$1() {
        return BasicFileAttributeView.class;
    }

    /* JADX INFO: renamed from: m$1, reason: collision with other method in class */
    public static /* synthetic */ void m483m$1() {
    }

    /* JADX INFO: renamed from: m$2, reason: collision with other method in class */
    public static /* synthetic */ void m486m$2() {
    }

    public static /* synthetic */ void m$3() {
    }

    public static /* synthetic */ void m$4() {
    }

    public static /* synthetic */ void m$5() {
    }

    public static /* synthetic */ void m$6() {
    }

    public static /* synthetic */ void m$7() {
    }
}
