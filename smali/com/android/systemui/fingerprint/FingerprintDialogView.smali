.class public Lcom/android/systemui/fingerprint/FingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "FingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;
    }
.end annotation


# instance fields
.field private final OP_DISPLAY_AOD_MODE:I

.field private final OP_DISPLAY_APPLY_HIDE_AOD:I

.field private final OP_DISPLAY_NOTIFY_PRESS:I

.field private final OP_DISPLAY_SET_DIM:I

.field private WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAodIndicationTextView:Landroid/widget/TextView;

.field private mAodMode:I

.field private mBundle:Landroid/os/Bundle;

.field mCallbacks:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mContextResolver:Landroid/content/ContentResolver;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDeviceInteractive:Z

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

.field private mDimLayout:Landroid/view/ViewGroup;

.field private mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDimOnWindow:Z

.field private mDimView:Landroid/widget/ImageView;

.field private mDisplayOverLayOn:Z

.field private mDisplayWidth:F

.field private final mErrorColor:I

.field private final mErrorText:Landroid/widget/TextView;

.field private mFaceUnlocked:Z

.field private final mFingerprintColor:I

.field private mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIsKeyguardDone:Z

.field private mIsScreenOn:Z

.field private mIsScreenTurningOn:Z

.field private mLastState:I

.field private mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNeedToShowAodText:Z

.field private mOwnerString:Ljava/lang/String;

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mPressedLayout:Landroid/view/ViewGroup;

.field private mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mScreenOffAuthenticating:Z

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSettingsObserver:Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mShowDefaultDialog:Z

.field private mShowOnWindow:Z

.field private mShowingKeyguard:Z

.field private mShowingPressed:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mSurfaceFlinger:Landroid/os/IBinder;

.field private mTempDisableColorInverse:Z

.field private final mTextColor:I

.field private mTimeoutAnimator:Landroid/animation/ValueAnimator;

.field private mTransparentIconView:Landroid/view/View;

.field private final mUpdateIconRunnable:Ljava/lang/Runnable;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "defaultDialog"    # Z
    .param p4, "dialogImpl"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 237
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_AOD_MODE:I

    .line 112
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_NOTIFY_PRESS:I

    .line 113
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_SET_DIM:I

    .line 114
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_APPLY_HIDE_AOD:I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    .line 126
    const-string v1, "OPFingerprintView"

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    .line 127
    const-string v1, "OPFingerprintVDDim"

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    .line 128
    const-string v1, "OPFingerprintVDpressed"

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    .line 139
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    .line 157
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 176
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 186
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayOverLayOn:Z

    .line 205
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    .line 207
    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    .line 217
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 629
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 718
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mCallbacks:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    .line 1026
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1280
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$9;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    .line 1987
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$10;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 238
    iput-boolean p3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    .line 239
    iput-object p4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 241
    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    .line 242
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 243
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 245
    const v4, 0x7f0701fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    .line 246
    nop

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    .line 248
    nop

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    .line 250
    nop

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFingerprintColor:I

    .line 253
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 254
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 255
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 261
    .local v4, "factory":Landroid/view/LayoutInflater;
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    .line 262
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 263
    iget-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0d0070

    goto :goto_0

    :cond_0
    const v5, 0x7f0d013f

    :goto_0
    invoke-virtual {v4, v5, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 264
    const v5, 0x7f0d013c

    invoke-virtual {v4, v5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    .line 265
    const v5, 0x7f0d013d

    invoke-virtual {v4, v5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 272
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 275
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    .line 282
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02fe

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimView:Landroid/widget/ImageView;

    .line 283
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0303

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 285
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0301

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 286
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0300

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 287
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02f0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 289
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 292
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContextResolver:Landroid/content/ContentResolver;

    .line 293
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSettingsObserver:Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;

    .line 294
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    .line 295
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x3a98

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 299
    :cond_1
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->addView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0127

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a014f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0400

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, "space":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a0235

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 329
    .local v1, "leftSpace":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v6, 0x7f0a0385

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 330
    .local v5, "rightSpace":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a00b1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 331
    .local v6, "negative":Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0a00b0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 333
    .local v7, "positive":Landroid/widget/Button;
    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 334
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 335
    invoke-direct {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 337
    new-instance v8, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;

    invoke-direct {v8, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    new-instance v8, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;

    invoke-direct {v8, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 346
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 349
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintDialogView(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIndicationTextSize()V

    .line 357
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTempDisableColorInverse:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTempDisableColorInverse:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFPIndicationText(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # I

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayHideAod(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContextResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimChangeAnimation(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # I

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    return p1
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 842
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 843
    const v0, 0x7f080242

    .local v0, "iconRes":I
    :goto_0
    goto :goto_1

    .line 844
    .end local v0    # "iconRes":I
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 845
    const v0, 0x7f080242

    goto :goto_0

    .line 846
    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 847
    const v0, 0x7f080241

    goto :goto_0

    .line 848
    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 850
    const v0, 0x7f080241

    goto :goto_0

    .line 856
    .restart local v0    # "iconRes":I
    :goto_1
    nop

    .line 858
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 854
    .end local v0    # "iconRes":I
    :cond_3
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 12
    .param p1, "title"    # Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    .line 887
    .local v0, "isKeyguard":Z
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    .line 889
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 890
    if-nez v0, :cond_1

    const-string v4, "com.oneplus.applocker"

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 892
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v1

    .line 893
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5

    .line 895
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 896
    if-nez v0, :cond_4

    const-string v4, "com.oneplus.applocker"

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 898
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v1

    .line 899
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_8

    .line 901
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 902
    if-nez v0, :cond_7

    const-string v4, "com.oneplus.applocker"

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    goto :goto_5

    :cond_7
    :goto_4
    move v2, v3

    :goto_5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 904
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v1

    .line 908
    :cond_8
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 910
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 911
    const/16 v4, 0x901

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_6

    .line 912
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 913
    const/16 v4, 0x900

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_6

    .line 914
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 915
    const/16 v4, 0x902

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 916
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 920
    :cond_b
    :goto_6
    const v4, 0x1000518

    .line 926
    .local v4, "flags":I
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 927
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 937
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomFingerprintType2()Z

    move-result v5

    .line 940
    .local v5, "isFpType2":Z
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 941
    const/4 v6, -0x2

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 942
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 943
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 944
    const/16 v6, 0x11

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 947
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportResolutionSwitch()Z

    move-result v6

    const v7, 0x7f0704ef

    const v8, 0x7f0704f0

    const v9, 0x7f0704e7

    const/16 v10, 0x30

    if-eqz v6, :cond_15

    .line 948
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v6}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->is2KDisplay()Z

    move-result v6

    .line 949
    .local v6, "is2KDisplay":Z
    iget-object v11, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 950
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 951
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v6, :cond_c

    const v8, 0x7f07020f

    goto :goto_7

    :cond_c
    const v8, 0x7f07020e

    :goto_7
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 952
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 953
    if-eqz v5, :cond_d

    goto :goto_8

    .line 954
    :cond_d
    if-eqz v6, :cond_e

    const v9, 0x7f0704ea

    goto :goto_8

    :cond_e
    const v9, 0x7f0704e9

    .line 952
    :goto_8
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 955
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_b

    .line 956
    :cond_f
    iget-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 957
    iget-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 958
    if-eqz v5, :cond_10

    goto :goto_9

    .line 959
    :cond_10
    if-eqz v6, :cond_11

    const v8, 0x7f0704f3

    goto :goto_9

    :cond_11
    const v8, 0x7f0704f2

    .line 957
    :goto_9
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 960
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 961
    if-eqz v5, :cond_12

    goto :goto_a

    .line 962
    :cond_12
    if-eqz v6, :cond_13

    const v7, 0x7f0704ee

    goto :goto_a

    :cond_13
    const v7, 0x7f0704ed

    .line 960
    :goto_a
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 963
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 965
    .end local v6    # "is2KDisplay":Z
    :cond_14
    :goto_b
    goto :goto_f

    .line 966
    :cond_15
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 967
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 968
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07020d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 969
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 970
    if-eqz v5, :cond_16

    goto :goto_c

    :cond_16
    const v9, 0x7f0704e8

    .line 969
    :goto_c
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 971
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_f

    .line 972
    :cond_17
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 973
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 974
    if-eqz v5, :cond_18

    goto :goto_d

    :cond_18
    const v8, 0x7f0704f1

    .line 973
    :goto_d
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 975
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 976
    if-eqz v5, :cond_19

    goto :goto_e

    :cond_19
    const v7, 0x7f0704ec

    .line 975
    :goto_e
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 977
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 981
    :cond_1a
    :goto_f
    if-nez v0, :cond_1c

    const-string v6, "com.oneplus.applocker"

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_10

    :cond_1b
    goto :goto_11

    :cond_1c
    :goto_10
    move v2, v3

    :goto_11
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 982
    const v2, 0x50e0013

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 983
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 986
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1d

    const-string v2, "FingerprintDialogView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCustomLayoutParams owner:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " title:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getSystemUiVisibility()I

    move-result v2

    .line 990
    .local v2, "systemUIVisibility":I
    or-int/lit16 v2, v2, 0x402

    .line 991
    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setSystemUiVisibility(I)V

    .line 993
    return-object v1
.end method

.method private getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1546
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "forceShow-keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 338
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 343
    return-void
.end method

.method public static synthetic lambda$setDismissesDialog$2(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 490
    return v1
.end method

.method public static synthetic lambda$setDisplayAodMode$3(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1595
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    goto :goto_0

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDisplayDimMode$4(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1605
    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set dim mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    .line 1611
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1612
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    .line 1613
    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1614
    const-string v1, "FingerPrintMode"

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 1616
    :cond_0
    const-string v1, "FingerPrintMode"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1620
    :cond_1
    :goto_0
    goto :goto_1

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static synthetic lambda$setDisplayHideAod$6(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1667
    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set hide aod mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xb

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    goto :goto_0

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDisplayPressMode$5(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1657
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    goto :goto_0

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 487
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    return-void
.end method

.method private setDisplayHideAod(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1665
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$-Yy718xw-H-3ufypLW2C4h3xjN0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$-Yy718xw-H-3ufypLW2C4h3xjN0;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1673
    return-void
.end method

.method private setDisplayPressMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 1627
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1628
    .local v2, "press":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-ne v3, v2, :cond_1

    .line 1629
    const-string v0, "FingerprintDialogView"

    const-string/jumbo v1, "setDisplayPressMode: the same state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void

    .line 1632
    :cond_1
    const-string v3, "FingerprintDialogView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set press mode to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    .line 1636
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 1637
    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 1638
    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-nez v3, :cond_3

    .line 1639
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1641
    :cond_2
    if-eqz v2, :cond_3

    .line 1642
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1644
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    .line 1650
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    if-ne p1, v1, :cond_5

    .line 1651
    return-void

    .line 1655
    :cond_5
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1662
    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 827
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    .line 828
    return v0

    .line 829
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 830
    return v1

    .line 831
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 832
    return v1

    .line 833
    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 835
    return v0

    .line 837
    :cond_3
    return v0
.end method

.method private shouldEnableHBM()Z
    .locals 4

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1320
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1321
    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM since highlight icon is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return v2

    .line 1325
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1326
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to going to sleep"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return v1

    .line 1334
    :cond_2
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 1339
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1340
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1341
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return v1

    .line 1345
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_5

    .line 1346
    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM in aod and fp is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    return v2

    .line 1350
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1351
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to device isn\'t interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    return v1

    .line 1355
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v0, :cond_7

    .line 1356
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to already face unlocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return v1

    .line 1361
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 1367
    :cond_8
    return v2

    .line 1363
    :cond_9
    :goto_0
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to lockout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    return v1

    .line 1335
    :cond_a
    :goto_1
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to duraing fp wake and unlock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return v1

    .line 1316
    :cond_b
    :goto_2
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM dim view is gone or not show on window"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v1
.end method

.method private showTemporaryMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 592
    return-void
.end method

.method private updateDimChangeAnimation(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1995
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDimChangeAnimation: animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    if-eqz p1, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1998
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2000
    :cond_0
    return-void
.end method

.method private updateFPIndicationText(ZLjava/lang/String;)V
    .locals 4
    .param p1, "help"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .line 1802
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1804
    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFPIndicationText: lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const v1, 0x1040243

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1808
    return-void

    .line 1810
    :cond_1
    const/4 v0, 0x0

    .line 1812
    .local v0, "resId":I
    if-eqz p1, :cond_4

    .line 1813
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "forceShow-keyguard"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1815
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-nez v1, :cond_3

    .line 1816
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1818
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    .line 1820
    :goto_0
    const/4 v0, 0x1

    .line 1821
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1824
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 1825
    .local v1, "security":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1827
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_5

    .line 1828
    const v0, 0x7f110365

    goto :goto_1

    .line 1829
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_6

    .line 1830
    const v0, 0x7f110364

    goto :goto_1

    .line 1831
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_7

    .line 1832
    const v0, 0x7f110366

    .line 1834
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 1835
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1838
    .end local v1    # "security":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_8
    :goto_2
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFPIndicationText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    if-nez v0, :cond_9

    .line 1841
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1843
    :cond_9
    return-void
.end method

.method private updateFingerprintIcon(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 804
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 806
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 807
    const-string v1, "FingerprintDialogView"

    const-string v2, "Animation not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void

    .line 811
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 812
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    .line 813
    :cond_1
    const/4 v1, 0x0

    .line 815
    .local v1, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a016d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 816
    .local v2, "fingerprint_icon":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 819
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 820
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 823
    :cond_2
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 824
    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 2

    .line 559
    const-string v0, "FingerprintDialogView"

    const-string v1, "forceRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 564
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 566
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 864
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 869
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7de

    const/high16 v5, 0x1000000

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 875
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 876
    const-string v1, "FingerprintDialogView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 878
    return-object v0
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    .line 1846
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1848
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_4

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1864
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security quality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1857
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    .line 1851
    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    .line 1860
    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    .line 1862
    :cond_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1
.end method

.method public handleFpResultEvent()V
    .locals 3

    .line 733
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    .line 734
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFpResultEvent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", keyguardDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    .line 736
    const-string v0, "FingerprintDialogView"

    const-string v1, "fp window not exist don\'t show pressed button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mCallbacks:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V

    .line 757
    :cond_1
    return-void
.end method

.method public hideFingerprintPressed()V
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideFingerprintPressed, owner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 705
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 709
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 713
    :goto_0
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/AodDisplayViewManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/AodDisplayViewManager;->onFingerPressed(Z)V

    .line 715
    return-void
.end method

.method public isAnimatingAway()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    return v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-boolean v0, v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    return v0
.end method

.method public isFpLockOut()Z
    .locals 2

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2006
    return v1

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public notifyBrightnessChange()V
    .locals 1

    .line 1792
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->onBrightnessChange()V

    .line 1794
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimChangeAnimation(Z)V

    .line 1796
    :cond_1
    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 2

    .line 1564
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 1565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 1566
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 1567
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1568
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    .line 1570
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1571
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 1572
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1573
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 1575
    :cond_1
    return-void
.end method

.method public notifyKeyguardDone()V
    .locals 3

    .line 1550
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyKeyguardDone, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_0

    .line 1553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 1556
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1557
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 1558
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 1561
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 12

    .line 388
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 390
    const-string v0, "FingerprintDialogView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a045e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a041d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 394
    .local v1, "subtitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a0112

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 395
    .local v2, "description":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 396
    .local v3, "negative":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a00b0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 398
    .local v4, "positive":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 400
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 401
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 404
    iget-boolean v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v7, :cond_3

    .line 405
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 408
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "subtitle"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 409
    .local v7, "subtitleText":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_0

    .line 410
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v10, "description"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 417
    .local v8, "descriptionText":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 418
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 420
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "negative_text"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "positive_text"

    .line 427
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 428
    .local v10, "positiveText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 429
    if-eqz v10, :cond_2

    .line 430
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 432
    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 435
    .end local v7    # "subtitleText":Ljava/lang/CharSequence;
    .end local v8    # "descriptionText":Ljava/lang/CharSequence;
    .end local v10    # "positiveText":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 436
    iput-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    .line 438
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_5

    .line 440
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSettingsObserver:Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;

    if-eqz v6, :cond_4

    .line 441
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSettingsObserver:Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;

    invoke-virtual {v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->register()V

    .line 444
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    .line 445
    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 446
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 447
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 448
    return-void

    .line 452
    :cond_5
    const-string v6, "FingerprintDialogView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWasForceRemoved = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    const/4 v8, 0x0

    if-nez v6, :cond_6

    .line 455
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 456
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 457
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 460
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 461
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 462
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 463
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 464
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 467
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 468
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1872
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1873
    const-string v0, "FingerprintDialogView"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V

    .line 1880
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 472
    const-string v0, "FingerprintDialogView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSettingsObserver:Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSettingsObserver:Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->unregister()V

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    .line 482
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 483
    return-void
.end method

.method public onFingerprintEventCallback(II)V
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->onFingerprintEventCallback(II)V

    .line 1681
    :cond_0
    return-void
.end method

.method public playAnimation(I)V
    .locals 2
    .param p1, "type"    # I

    .line 762
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 763
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    return-void

    .line 770
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_2

    .line 771
    return-void

    .line 775
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenTurningOn:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->playAnimation(I)V

    .line 784
    :cond_4
    return-void

    .line 776
    :cond_5
    :goto_0
    const-string v0, "FingerprintDialogView"

    const-string v1, "don\'t play animation due to going to sleep or screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void
.end method

.method public postTimeOutRunnable()V
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    return-void
.end method

.method public removeTimeOutMessage()V
    .locals 2

    .line 646
    const-string v0, "FingerprintDialogView"

    const-string v1, "remove time out message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    return-void
.end method

.method protected resetMessage()V
    .locals 2

    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f110285

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 580
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    return-void
.end method

.method protected resetState()V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->resetState()V

    goto :goto_0

    .line 1295
    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState: fp client to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reuse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    .line 1302
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->resetState()V

    .line 1304
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1306
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 1307
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 573
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    .line 574
    return-void
.end method

.method public setDisplayAodMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1579
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    return-void

    .line 1584
    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set aod mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    if-ne v0, p1, :cond_1

    .line 1586
    return-void

    .line 1588
    :cond_1
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    .line 1593
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$iinQwULtuAjE9o2W9MjvSm6d430;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$iinQwULtuAjE9o2W9MjvSm6d430;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1600
    return-void
.end method

.method public setDisplayDimMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1603
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$8VfScsnOd98BYjKaRA_IRALOFY4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$8VfScsnOd98BYjKaRA_IRALOFY4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1622
    return-void
.end method

.method public setOwnerString(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 607
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fp client to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 611
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes(Z)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

.method public setPressDimWindow(Z)V
    .locals 3
    .param p1, "attach"    # Z

    .line 360
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPressDimWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz p1, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-nez v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 384
    :cond_3
    :goto_0
    return-void
.end method

.method public setTransparentIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "iconView"    # Landroid/view/View;

    .line 1542
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTransparentIconView:Landroid/view/View;

    .line 1543
    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 3

    .line 1763
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldHideDismissButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1765
    return v1

    .line 1768
    :cond_0
    const-string v0, "com.oneplus.applocker"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1769
    return v1

    .line 1772
    :cond_1
    const-string v0, "com.android.settings"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1773
    return v1

    .line 1776
    :cond_2
    const-string v0, "com.oneplus.filemanager"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1777
    return v1

    .line 1780
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1781
    return v1

    .line 1784
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 599
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "o"    # Ljava/lang/Object;

    .line 1751
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-object v1, p2

    check-cast v1, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->forceShowDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    .line 1752
    return-void
.end method

.method public showFingerprintPressed()V
    .locals 4

    .line 652
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_1

    .line 657
    const-string v0, "FingerprintDialogView"

    const-string v1, "press state the same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void

    .line 661
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_2

    .line 662
    const-string v0, "FingerprintDialogView"

    const-string v1, "fp window not exist don\'t show pressed button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 667
    const-string v0, "FingerprintDialogView"

    const-string v2, "fp is disabled currently"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    .line 674
    return-void

    .line 677
    :cond_3
    const-string v0, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFingerprintPressed, owner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", done:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/AodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodDisplayViewManager;->onFingerPressed(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 686
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    .line 690
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 693
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 695
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 696
    return-void
.end method

.method public showHelpMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 595
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public startDismiss(Z)V
    .locals 3
    .param p1, "authenticatedSuccess"    # Z

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 503
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 523
    .local v0, "endActionRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 525
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 526
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 527
    return-void

    .line 531
    :cond_0
    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation(I)V

    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 791
    :cond_0
    return-void
.end method

.method public updateDimViewVisibility(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 1527
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDimViewVisibility: show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    if-eqz p1, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    goto :goto_0

    .line 1536
    :cond_0
    if-nez p1, :cond_1

    .line 1537
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    .line 1539
    :cond_1
    :goto_0
    return-void
.end method

.method public updateFpDaemonStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .line 1010
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 1011
    return-void

    .line 1014
    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFpDaemonStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_2

    .line 1016
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldEnableHBM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 1018
    return-void

    .line 1019
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 1021
    return-void

    .line 1024
    :cond_2
    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 19
    .param p1, "forceHide"    # Z

    move-object/from16 v0, p0

    .line 1373
    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v2, :cond_0

    .line 1374
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1376
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 1381
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    .line 1382
    .local v2, "isUnlockwithFingerPrintAllowed":Z
    iget-object v4, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v4

    .line 1383
    .local v4, "isOccluded":Z
    iget-object v5, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v5

    .line 1384
    .local v5, "isBouncer":Z
    iget-object v6, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isImeShow()Z

    move-result v6

    .line 1385
    .local v6, "isImeShow":Z
    iget-object v7, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v7

    .line 1386
    .local v7, "isSimPin":Z
    iget-object v8, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v8

    .line 1387
    .local v8, "isDreaming":Z
    iget-object v9, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v9

    .line 1389
    .local v9, "isUserUnlocked":Z
    iget-object v10, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v10

    .line 1390
    .local v10, "isQSExpanded":Z
    iget-object v11, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeActivte()Z

    move-result v11

    .line 1391
    .local v11, "isPreventModeActivte":Z
    iget-object v12, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v12

    .line 1392
    .local v12, "faceRecognizing":Z
    iget-object v13, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLaunchingCamera()Z

    move-result v13

    .line 1394
    .local v13, "isLaunchingCamera":Z
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLaunchingLeftAffordance()Z

    move-result v14

    .line 1395
    .local v14, "isLaunchingLeftAffordance":Z
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v15

    .line 1397
    .local v15, "isShowing":Z
    const-string v3, "FingerprintDialogView"

    move/from16 v16, v9

    new-instance v9, Ljava/lang/StringBuilder;

    .line 1397
    .end local v9    # "isUserUnlocked":Z
    .local v16, "isUserUnlocked":Z
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string/jumbo v3, "updateIconVisibility: fp client:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", forceHide:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBouncer:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isImeShow:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showOnWindow:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", goingToSleep:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", screenOn:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isUnlockAllowed:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyguard:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDreaming:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isOccluded:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFaceUnlocked:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSimPin:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isQSExpanded:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Camera:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", LeftAffordance:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Prevent:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isShowing:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", LockOut:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1417
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", recognizing:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", AodText:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mNeedToShowAodText:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", OffAuthenticating:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", visibility:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 1421
    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1397
    move-object/from16 v9, v17

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const-string v3, "0"

    .line 1424
    .local v3, "caseLog":Ljava/lang/String;
    const/4 v9, 0x4

    if-eqz v1, :cond_2

    .line 1425
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1426
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1427
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1428
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    const-string v3, "1"

    goto/16 :goto_3

    .line 1431
    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_3

    .line 1433
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1434
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1435
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1436
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1437
    const-string v3, "2"

    goto/16 :goto_3

    .line 1440
    :cond_3
    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_15

    :cond_5
    if-nez v7, :cond_15

    if-nez v13, :cond_15

    if-nez v14, :cond_15

    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v1, :cond_6

    if-nez v15, :cond_6

    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 1447
    invoke-direct {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-nez v1, :cond_15

    :cond_6
    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v1, :cond_8

    if-nez v11, :cond_8

    if-eqz v10, :cond_7

    if-nez v5, :cond_7

    if-nez v16, :cond_15

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    goto/16 :goto_2

    .line 1457
    :cond_8
    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v1, :cond_9

    .line 1458
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1459
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1460
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1461
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    const-string v3, "4"

    goto/16 :goto_3

    .line 1463
    :cond_9
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1465
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1466
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1467
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1468
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v9, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v9, :cond_a

    const/4 v9, 0x4

    goto :goto_0

    :cond_a
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1469
    const-string v3, "5"

    goto/16 :goto_3

    .line 1471
    :cond_b
    if-nez v2, :cond_e

    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 1473
    invoke-direct {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "forceShow-keyguard"

    iget-object v9, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1474
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1475
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1476
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1477
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v9, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v9, :cond_d

    const/4 v9, 0x4

    goto :goto_1

    :cond_d
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1478
    const-string v3, "6"

    goto/16 :goto_3

    .line 1480
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1481
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1482
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1486
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1487
    const-string v3, "7"

    goto/16 :goto_3

    .line 1488
    :cond_f
    const/4 v9, 0x4

    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v1

    if-ne v1, v9, :cond_14

    .line 1490
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1491
    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v1, :cond_11

    if-eqz v12, :cond_11

    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    if-eqz v1, :cond_11

    .line 1493
    :cond_10
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1494
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1495
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1496
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1499
    const-string v3, "8-0"

    goto :goto_3

    .line 1500
    :cond_11
    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-nez v1, :cond_12

    if-nez v8, :cond_12

    iget-boolean v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-nez v1, :cond_16

    if-eqz v5, :cond_16

    .line 1501
    :cond_12
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1502
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1503
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1504
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1505
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    .line 1506
    const-string v3, "8-1"

    goto :goto_3

    .line 1511
    :cond_13
    const/4 v9, 0x0

    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1512
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1513
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1514
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1515
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    .line 1516
    const-string v3, "8-2"

    goto :goto_3

    .line 1520
    :cond_14
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1450
    :cond_15
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1451
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1452
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1453
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1455
    iget-object v1, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    .line 1456
    const-string v3, "3"

    .line 1523
    :cond_16
    :goto_3
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_17

    const-string v1, "FingerprintDialogView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    const-string v2, "caseLog: "

    .line 1523
    .end local v2    # "isUnlockwithFingerPrintAllowed":Z
    .local v18, "isUnlockwithFingerPrintAllowed":Z
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1524
    .end local v18    # "isUnlockwithFingerPrintAllowed":Z
    .restart local v2    # "isUnlockwithFingerPrintAllowed":Z
    :cond_17
    move/from16 v18, v2

    .line 1524
    .end local v2    # "isUnlockwithFingerPrintAllowed":Z
    .restart local v18    # "isUnlockwithFingerPrintAllowed":Z
    :goto_4
    return-void

    .line 1377
    .end local v3    # "caseLog":Ljava/lang/String;
    .end local v4    # "isOccluded":Z
    .end local v5    # "isBouncer":Z
    .end local v6    # "isImeShow":Z
    .end local v7    # "isSimPin":Z
    .end local v8    # "isDreaming":Z
    .end local v10    # "isQSExpanded":Z
    .end local v11    # "isPreventModeActivte":Z
    .end local v12    # "faceRecognizing":Z
    .end local v13    # "isLaunchingCamera":Z
    .end local v14    # "isLaunchingLeftAffordance":Z
    .end local v15    # "isShowing":Z
    .end local v16    # "isUserUnlocked":Z
    .end local v18    # "isUnlockwithFingerPrintAllowed":Z
    :cond_18
    :goto_5
    const/4 v9, 0x0

    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update when icon null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v4, 0x1

    if-nez v3, :cond_19

    move v3, v4

    goto :goto_6

    :cond_19
    move v3, v9

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-nez v3, :cond_1a

    goto :goto_7

    :cond_1a
    move v4, v9

    :goto_7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return-void
.end method

.method public updateIndicationTextSize()V
    .locals 4

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    .line 1887
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 1886
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1890
    :cond_0
    return-void
.end method

.method public updateLayoutDimension(ZF)V
    .locals 5
    .param p1, "is2KDisplay"    # Z
    .param p2, "widthPixels"    # F

    .line 1896
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportResolutionSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1897
    iput p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    .line 1899
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1900
    const v1, 0x7f0704fa

    goto :goto_0

    .line 1901
    :cond_0
    const v1, 0x7f0704f9

    .line 1899
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1904
    .local v0, "iconWidth":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1905
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1906
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1907
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->updateLayoutDimension(Z)V

    .line 1909
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1910
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1911
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1912
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->updateLayoutDimension(Z)V

    .line 1914
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1915
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1916
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1917
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->updateLayoutDimension(Z)V

    .line 1919
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 1920
    const v3, 0x7f0704f3

    goto :goto_1

    .line 1921
    :cond_1
    const v3, 0x7f0704f2

    .line 1919
    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 1922
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1923
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1924
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1925
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->updateLayoutDimension(Z)V

    .line 1927
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateLayoutDimension(Z)V

    .line 1929
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1931
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1932
    const-string v2, "FingerprintDialogView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mViewLayoutParams height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1934
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1936
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V

    .line 1939
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 1941
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1942
    .local v2, "indicationLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_3

    .line 1943
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1944
    if-eqz p1, :cond_2

    const v4, 0x7f07007f

    goto :goto_2

    .line 1945
    :cond_2
    const v4, 0x7f07007e

    .line 1943
    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1946
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1952
    .end local v0    # "iconWidth":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "indicationLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    return-void
.end method
