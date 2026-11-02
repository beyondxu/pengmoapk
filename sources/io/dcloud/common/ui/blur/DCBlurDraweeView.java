package io.dcloud.common.ui.blur;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.ui.blur.AppEventForBlurManager;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.TitleNViewUtil;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
/* JADX INFO: loaded from: classes.dex */
public class DCBlurDraweeView extends FrameLayout implements AppEventForBlurManager.OnAppChangedCallBack {
    public static final String AUTOMATICALLY = "automatically";
    public static final String DARK = "dark";
    public static final String EXTRALIGHT = "extralight";
    public static final String LIGHT = "light";
    public static final String NONE = "none";
    public static final String SEMI_AUTOMATICALLY = "semi-automatic";
    public static final String STATIC = "static";
    private final String TAG;
    private Choreographer.FrameCallback invalidationLoop;
    private boolean isBlur;
    private float mAlpha;
    private boolean mAttachedToWindow;
    private String mBlurEffect;
    private int mBlurRadius;
    private String mBlurState;
    private BlurLayoutChangeCallBack mChangeCB;
    private float mCornerRadius;
    private float mDownscaleFactor;
    private int mFPS;
    private int mGravityType;
    private ImageView mImageView;
    private float mOverlayColorAlpha;
    private long mPostTime;
    private WeakReference<View> mRootView;
    private boolean mRunning;
    private int postDelayTime;
    private Choreographer.FrameCallback postInvalidationLoop;
    private Runnable removePostDelayed;

    /* JADX INFO: compiled from: r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843 */
    public interface BlurLayoutChangeCallBack {
        void setVisibility(int i);
    }

    public DCBlurDraweeView(Context context) {
        super(context);
        this.TAG = "DCBlurDraweeView";
        this.mDownscaleFactor = 0.2f;
        this.mBlurRadius = 15;
        this.mFPS = 60;
        this.mCornerRadius = 0.0f;
        this.mAlpha = Float.NaN;
        this.isBlur = false;
        this.mGravityType = 17;
        this.mBlurState = "static";
        this.mBlurEffect = "none";
        this.mPostTime = 1500L;
        this.invalidationLoop = new Choreographer.FrameCallback() { // from class: io.dcloud.common.ui.blur.DCBlurDraweeView.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                if (!BaseInfo.sDoingAnimation) {
                    DCBlurDraweeView.this.invalidate();
                }
                Choreographer.getInstance().postFrameCallbackDelayed(this, 1000 / DCBlurDraweeView.this.mFPS);
            }
        };
        this.postDelayTime = 50;
        this.postInvalidationLoop = new Choreographer.FrameCallback() { // from class: io.dcloud.common.ui.blur.DCBlurDraweeView.2
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                if (DCBlurDraweeView.this.mRunning) {
                    return;
                }
                if (!BaseInfo.sDoingAnimation) {
                    DCBlurDraweeView.this.invalidate();
                }
                Choreographer.getInstance().postFrameCallbackDelayed(this, DCBlurDraweeView.this.postDelayTime);
            }
        };
        this.removePostDelayed = new Runnable() { // from class: io.dcloud.common.ui.blur.DCBlurDraweeView.3
            @Override // java.lang.Runnable
            public void run() {
                Choreographer.getInstance().removeFrameCallback(DCBlurDraweeView.this.postInvalidationLoop);
            }
        };
        this.mOverlayColorAlpha = 0.6f;
    }

    private View getActivityView() {
        try {
            return ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.content);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    private Bitmap getDownscaledBitmapForView(View view, Rect rect, float f, int i) throws Exception {
        int iHeight;
        int iHeight2;
        float f2 = f / 0.5f;
        if (f >= 0.5f) {
            f2 = 1.0f;
        } else {
            f = 0.5f;
        }
        int iWidth = (int) (rect.width() * f);
        int iHeight3 = (int) (rect.height() * f);
        if (view.getWidth() <= 0 || view.getHeight() <= 0 || iWidth <= 0 || iHeight3 <= 0) {
            throw new Exception("No screen available (width or height = 0)");
        }
        float f3 = (-rect.left) * f;
        float f4 = ((-rect.top) + i) * f;
        int i2 = this.mGravityType;
        if (i2 == 17) {
            iHeight = rect.height();
            i *= 2;
        } else {
            if (i2 == 48) {
                iHeight2 = (int) ((rect.height() + i) * f);
                f4 -= i * f;
                setViewVisibility(4);
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iWidth, iHeight2, config);
                BlurCanvas blurCanvas = new BlurCanvas(bitmapCreateBitmap);
                Matrix matrix = new Matrix();
                matrix.postScale(f, f);
                matrix.postTranslate(f3, f4);
                blurCanvas.setMatrix(matrix);
                view.draw(blurCanvas);
                blurCanvas.drawColor(getOverlayColor());
                blurCanvas.save();
                setViewVisibility(0);
                float f5 = iWidth;
                int i3 = (int) (f5 * f2);
                float f6 = iHeight2;
                int i4 = (int) (f2 * f6);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i3, i4, config);
                Canvas canvas = new Canvas(bitmapCreateBitmap2);
                Matrix matrix2 = new Matrix();
                matrix2.setScale(i3 / f5, i4 / f6);
                canvas.setMatrix(matrix2);
                canvas.drawColor(getBlurBGColor());
                Paint paint = new Paint();
                paint.setFlags(3);
                canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
                bitmapCreateBitmap.recycle();
                return bitmapCreateBitmap2;
            }
            iHeight = rect.height();
        }
        iHeight2 = (int) ((iHeight + i) * f);
        setViewVisibility(4);
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(iWidth, iHeight2, config2);
        BlurCanvas blurCanvas2 = new BlurCanvas(bitmapCreateBitmap3);
        Matrix matrix3 = new Matrix();
        matrix3.postScale(f, f);
        matrix3.postTranslate(f3, f4);
        blurCanvas2.setMatrix(matrix3);
        view.draw(blurCanvas2);
        blurCanvas2.drawColor(getOverlayColor());
        blurCanvas2.save();
        setViewVisibility(0);
        float f52 = iWidth;
        int i32 = (int) (f52 * f2);
        float f62 = iHeight2;
        int i42 = (int) (f2 * f62);
        Bitmap bitmapCreateBitmap22 = Bitmap.createBitmap(i32, i42, config2);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap22);
        Matrix matrix22 = new Matrix();
        matrix22.setScale(i32 / f52, i42 / f62);
        canvas2.setMatrix(matrix22);
        canvas2.drawColor(getBlurBGColor());
        Paint paint2 = new Paint();
        paint2.setFlags(3);
        canvas2.drawBitmap(bitmapCreateBitmap3, 0.0f, 0.0f, paint2);
        bitmapCreateBitmap3.recycle();
        return bitmapCreateBitmap22;
    }

    private int getOverlayColor() {
        String str = this.mBlurEffect;
        str.getClass();
        str.hashCode();
        switch (str) {
            case "dark":
                return Color.parseColor(TitleNViewUtil.changeColorAlpha("#454545", this.mOverlayColorAlpha));
            case "light":
                return Color.parseColor(TitleNViewUtil.changeColorAlpha("#F8F8F8", this.mOverlayColorAlpha));
            case "extralight":
                return Color.parseColor(TitleNViewUtil.changeColorAlpha(TitleNViewUtil.TRANSPARENT_BUTTON_TEXT_COLOR, this.mOverlayColorAlpha));
            default:
                return 0;
        }
    }

    private Point getPositionInScreen() {
        PointF positionInScreen = getPositionInScreen(this);
        return new Point((int) positionInScreen.x, (int) positionInScreen.y);
    }

    private void initImageView() {
        ImageView imageView = this.mImageView;
        if (imageView == null) {
            this.mImageView = new ImageView(getContext());
        } else if (imageView.getParent() == null) {
            ((ViewGroup) this.mImageView.getParent()).removeView(this.mImageView);
        }
        this.mImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        addView(this.mImageView, 0);
        setCornerRadius(this.mCornerRadius);
    }

    private void pauseBlur() {
        if (this.mRunning && this.isBlur) {
            this.mRunning = false;
            Choreographer.getInstance().removeFrameCallback(this.invalidationLoop);
        }
    }

    private void setViewVisibility(int i) {
        setVisibility(i);
        BlurLayoutChangeCallBack blurLayoutChangeCallBack = this.mChangeCB;
        if (blurLayoutChangeCallBack != null) {
            blurLayoutChangeCallBack.setVisibility(i);
        }
    }

    private void startBlur() {
        if (this.mRunning || !this.isBlur || this.mFPS <= 0 || this.mBlurState.equals("static")) {
            return;
        }
        this.mRunning = true;
        Choreographer.getInstance().removeFrameCallback(this.postInvalidationLoop);
        Choreographer.getInstance().postFrameCallback(this.invalidationLoop);
    }

    public boolean checkBlurEffect(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(LIGHT) || str.equals(DARK) || str.equals(EXTRALIGHT);
    }

    public int getBlurBGColor() {
        String str = this.mBlurEffect;
        str.getClass();
        str.hashCode();
        switch (str) {
            case "dark":
                return Color.parseColor("#F2454545");
            case "light":
                return Color.parseColor("#F2F8F8F8");
            case "extralight":
                return Color.parseColor("#F2FFFFFF");
            default:
                return 0;
        }
    }

    @Override // android.view.View
    public void invalidate() {
        Bitmap bitmapMakeBlur;
        super.invalidate();
        if (!this.mAttachedToWindow || this.mImageView == null || !this.isBlur || (bitmapMakeBlur = makeBlur()) == null) {
            return;
        }
        this.mImageView.setImageBitmap(bitmapMakeBlur);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Bitmap makeBlur() {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.ui.blur.DCBlurDraweeView.makeBlur():android.graphics.Bitmap");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            super.onAttachedToWindow()
            r0 = 1
            r4.mAttachedToWindow = r0
            boolean r1 = r4.isBlur
            if (r1 == 0) goto L57
            java.lang.String r1 = r4.mBlurState
            r1.getClass()
            r1.hashCode()
            int r2 = r1.hashCode()
            r3 = -1
            switch(r2) {
                case -892481938: goto L30;
                case 1030681228: goto L27;
                case 1977933731: goto L1c;
                default: goto L1a;
            }
        L1a:
            r0 = -1
            goto L3b
        L1c:
            java.lang.String r0 = "automatically"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L25
            goto L1a
        L25:
            r0 = 2
            goto L3b
        L27:
            java.lang.String r2 = "semi-automatic"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3b
            goto L1a
        L30:
            java.lang.String r0 = "static"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3a
            goto L1a
        L3a:
            r0 = 0
        L3b:
            switch(r0) {
                case 0: goto L4f;
                case 1: goto L46;
                case 2: goto L3f;
                default: goto L3e;
            }
        L3e:
            goto L57
        L3f:
            io.dcloud.common.ui.blur.AppEventForBlurManager.removeEventChangedCallBack(r4)
            r4.startBlur()
            return
        L46:
            long r0 = r4.mPostTime
            r4.postInvalidate(r0)
            io.dcloud.common.ui.blur.AppEventForBlurManager.addEventChangedCallBack(r4)
            return
        L4f:
            long r0 = r4.mPostTime
            r4.postInvalidate(r0)
            io.dcloud.common.ui.blur.AppEventForBlurManager.removeEventChangedCallBack(r4)
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.common.ui.blur.DCBlurDraweeView.onAttachedToWindow():void");
    }

    @Override // io.dcloud.common.ui.blur.AppEventForBlurManager.OnAppChangedCallBack
    public void onContentScrollEnd() {
        pauseBlur();
    }

    @Override // io.dcloud.common.ui.blur.AppEventForBlurManager.OnAppChangedCallBack
    public void onContentScrollStart() {
        startBlur();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAttachedToWindow = false;
        pauseBlur();
        AppEventForBlurManager.removeEventChangedCallBack(this);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.isBlur) {
            postInvalidate(this.mPostTime);
        }
    }

    @Override // io.dcloud.common.ui.blur.AppEventForBlurManager.OnAppChangedCallBack
    public void onSplashclosed() {
        postInvalidate(this.mPostTime);
    }

    public void postInvalidate(long j) {
        if (this.mRunning || !this.isBlur) {
            return;
        }
        MessageHandler.removeCallbacks(this.removePostDelayed);
        Choreographer.getInstance().removeFrameCallback(this.postInvalidationLoop);
        Choreographer.getInstance().postFrameCallback(this.postInvalidationLoop);
        MessageHandler.postDelayed(this.removePostDelayed, j + 10);
    }

    public void setBlur(boolean z) {
        this.isBlur = z;
        if (z && this.mImageView == null) {
            initImageView();
        }
    }

    public void setBlurEffect(String str) {
        this.mBlurEffect = str;
        if (this.isBlur || !this.mBlurState.equals("none")) {
            setBackgroundColor(0);
        } else {
            setBackgroundColor(getBlurBGColor());
        }
    }

    public void setBlurLayoutChangeCallBack(BlurLayoutChangeCallBack blurLayoutChangeCallBack) {
        this.mChangeCB = blurLayoutChangeCallBack;
    }

    public void setBlurRadius(int i) {
        if (i < 0) {
            i = 15;
        } else if (i > 25) {
            i = 25;
        }
        this.mBlurRadius = i;
        invalidate();
    }

    public void setBlurState(String str) {
        this.mBlurState = str;
    }

    public void setContentFocusable(boolean z) {
        String str = this.mBlurState;
        str.getClass();
        str.hashCode();
        switch (str) {
            case "static":
                AppEventForBlurManager.removeEventChangedCallBack(this);
                pauseBlur();
                break;
            case "semi-automatic":
                if (!z) {
                    AppEventForBlurManager.removeEventChangedCallBack(this);
                    break;
                } else {
                    AppEventForBlurManager.addEventChangedCallBack(this);
                    break;
                }
                break;
            case "automatically":
                if (!z) {
                    pauseBlur();
                    break;
                } else {
                    startBlur();
                    break;
                }
                break;
        }
    }

    public void setCornerRadius(float f) {
        this.mCornerRadius = f;
        invalidate();
    }

    public void setDownscaleFactor(float f) {
        this.mDownscaleFactor = f;
        invalidate();
    }

    public void setFPS(int i) {
        if (this.mRunning) {
            pauseBlur();
        }
        this.mFPS = i;
    }

    public void setGravityType(int i) {
        this.mGravityType = i;
    }

    public void setOverlayColorAlpha(float f) {
        this.mOverlayColorAlpha = f;
    }

    public void setRootView(View view) {
        WeakReference<View> weakReference = this.mRootView;
        if (weakReference != null && weakReference.get() != null) {
            this.mRootView.clear();
        }
        this.mRootView = new WeakReference<>(view);
    }

    private PointF getPositionInScreen(View view) {
        if (getParent() == null) {
            return new PointF();
        }
        if (this.mRootView.get() != null && view == this.mRootView.get()) {
            return new PointF();
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup == null) {
                return new PointF();
            }
            PointF positionInScreen = getPositionInScreen(viewGroup);
            positionInScreen.offset(view.getX(), view.getY());
            return positionInScreen;
        } catch (Exception unused) {
            return new PointF();
        }
    }

    public DCBlurDraweeView(Context context, boolean z, String str) {
        super(context);
        this.TAG = "DCBlurDraweeView";
        this.mDownscaleFactor = 0.2f;
        this.mBlurRadius = 15;
        this.mFPS = 60;
        this.mCornerRadius = 0.0f;
        this.mAlpha = Float.NaN;
        this.isBlur = false;
        this.mGravityType = 17;
        this.mBlurState = "static";
        this.mBlurEffect = "none";
        this.mPostTime = 1500L;
        this.invalidationLoop = new Choreographer.FrameCallback() { // from class: io.dcloud.common.ui.blur.DCBlurDraweeView.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                if (!BaseInfo.sDoingAnimation) {
                    DCBlurDraweeView.this.invalidate();
                }
                Choreographer.getInstance().postFrameCallbackDelayed(this, 1000 / DCBlurDraweeView.this.mFPS);
            }
        };
        this.postDelayTime = 50;
        this.postInvalidationLoop = new Choreographer.FrameCallback() { // from class: io.dcloud.common.ui.blur.DCBlurDraweeView.2
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                if (DCBlurDraweeView.this.mRunning) {
                    return;
                }
                if (!BaseInfo.sDoingAnimation) {
                    DCBlurDraweeView.this.invalidate();
                }
                Choreographer.getInstance().postFrameCallbackDelayed(this, DCBlurDraweeView.this.postDelayTime);
            }
        };
        this.removePostDelayed = new Runnable() { // from class: io.dcloud.common.ui.blur.DCBlurDraweeView.3
            @Override // java.lang.Runnable
            public void run() {
                Choreographer.getInstance().removeFrameCallback(DCBlurDraweeView.this.postInvalidationLoop);
            }
        };
        this.mOverlayColorAlpha = 0.6f;
        this.isBlur = z;
        this.mBlurState = str;
        if (z) {
            initImageView();
        }
    }
}
