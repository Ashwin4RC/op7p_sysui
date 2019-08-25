.class public Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final DEBUG:Z

.field public static final SHOW_TRANSPARENT_ICON_VIEW:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private IS_SUPPORT_QL:Z

.field private mAuthenticatedPkg:Ljava/lang/String;

.field private mAuthenticatedSuccess:Z

.field public mDialogShowing:Z

.field private mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private mExpanded:Z

.field private mFingerOnSensor:Z

.field private mFingerOnView:Z

.field private mFpSensorPressing:Z

.field private mHandler:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs2KDisplay:Z

.field private mIsEnableQL:Z

.field private mIsFaceUnlocked:Z

.field private mOnViewPressing:Z

.field private mQLConfig:Ljava/lang/String;

.field private final mQLConfigObserver:Landroid/database/ContentObserver;

.field private final mQLEnableObserver:Landroid/database/ContentObserver;

.field private mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

.field private mQLShowing:Z

.field private mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mShowQLView:Ljava/lang/Runnable;

.field private mTransparentIconShowing:Z

.field private mTransparentIconSize:I

.field private mTransparentIconView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    .line 80
    const-string v0, "debug.show_transparent_icon_view"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    .line 911
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 912
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 913
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 911
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfig:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnSensor:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsFaceUnlocked:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mExpanded:Z

    .line 141
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 657
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    .line 666
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$5;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$5;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfigObserver:Landroid/database/ContentObserver;

    .line 678
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogImpl$vUYJBQOiJyWOXJKQuWoOP0Phroo;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogImpl$vUYJBQOiJyWOXJKQuWoOP0Phroo;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Lcom/android/internal/os/SomeArgs;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintEnroll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticatedFail()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->isQLEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideQLView()V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleQLTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfig:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleClearMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAcquire(II)V

    return-void
.end method

.method private getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 487
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconSize:I

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconSize:I

    const/16 v3, 0x901

    const v4, 0x1000108

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 497
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 498
    const-string v1, "FingerprintTransparentIcon"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 505
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomFingerprintType2()Z

    move-result v1

    .line 508
    .local v1, "isFpType2":Z
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportResolutionSwitch()Z

    move-result v2

    const v3, 0x7f070503

    if-eqz v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0704ff

    goto :goto_0

    :cond_1
    const v3, 0x7f0704fe

    .line 509
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const v3, 0x7f0704fd

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 516
    :goto_2
    return-object v0
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 871
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-void

    .line 875
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling negative button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 880
    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 884
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void

    .line 888
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling positive button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 893
    return-void
.end method

.method private handleClearMessage()V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetMessage()V

    .line 897
    return-void
.end method

.method private handleFingerprintAcquire(II)V
    .locals 7
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 577
    .local v0, "isInterActive":Z
    const-string v1, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFingerprintAcquire: acquireInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", onViewPressing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SensorPressing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", vendorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", interactive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", IconShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dialogShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    .line 587
    if-nez p2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnSensor:Z

    .line 588
    sget-boolean v4, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FingerprintDialogImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFingerprintAcquire mFingerOnSensor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnSensor:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mFingerOnView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnSensor:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v4, :cond_2

    .line 591
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 592
    iput-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 597
    :cond_2
    if-ne p1, v2, :cond_3

    if-nez p2, :cond_3

    .line 598
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->removeTimeOutMessage()V

    .line 601
    :cond_3
    if-ne p1, v2, :cond_4

    if-nez p2, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v4, :cond_4

    .line 602
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 603
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed()V

    goto :goto_1

    .line 604
    :cond_4
    if-ne p1, v2, :cond_6

    if-ne p2, v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-eqz v1, :cond_6

    .line 606
    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 607
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v1, :cond_5

    .line 608
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 609
    iput-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 612
    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 613
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->hideFingerprintPressed()V

    .line 615
    :cond_6
    :goto_1
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 4

    .line 742
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 751
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    .line 752
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 751
    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 754
    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->isQLEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsFaceUnlocked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    const-string v1, "forceShow-keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "QuickLaunch"

    const-string v1, "postDelayed mShowQLView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_2
    return-void
.end method

.method private handleFingerprintAuthenticatedFail()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 627
    return-void
.end method

.method private handleFingerprintEnroll()V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 619
    return-void
.end method

.method private handleFingerprintError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 788
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_2

    .line 791
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_1
    return-void

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 799
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showErrorMessage(Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method private handleFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 776
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showHelpMessage(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 3
    .param p1, "userCanceled"    # Z

    .line 807
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHideDialog, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_1

    .line 811
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog already dismissed, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 818
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isDefault()Z

    move-result v0

    if-nez v0, :cond_4

    .line 822
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 823
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 825
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 827
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 829
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_4

    .line 833
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 835
    :cond_3
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "handleHideDialog: don\'t hide window since keyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return-void

    .line 841
    .end local v0    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_4
    if-eqz p1, :cond_6

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :cond_5
    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "RemoteException when hiding dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 852
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->startDismiss(Z)V

    .line 858
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnSensor:Z

    if-nez v1, :cond_7

    .line 861
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 862
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 863
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 864
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "remove transparent Icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_7
    return-void
.end method

.method private handleQLTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 325
    .local v0, "action":I
    sget-boolean v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_2

    .line 326
    :cond_0
    const-string v1, "QuickLaunch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQLShowing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mQLRootView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " attach "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v4}, Lcom/android/systemui/fingerprint/QLRootView;->isAttachedToWindow()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->isQLEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 332
    const/4 v1, 0x3

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_5

    .line 333
    :cond_3
    sget-boolean v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "QuickLaunch"

    const-string v4, "removeCallbacks mShowQLView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    if-eqz v3, :cond_8

    .line 338
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/QLRootView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/fingerprint/QLRootView;->onTouch(Landroid/view/MotionEvent;)V

    .line 339
    :cond_6
    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_8

    .line 341
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideQLView()V

    .line 345
    :cond_8
    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 8
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .line 422
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 423
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "key_fingerprint_package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "authenticatedPkg":Ljava/lang/String;
    const-string v2, "FingerprintDialogImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticatedPkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 433
    sget-boolean v2, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FingerprintDialogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShowDialog, isAnimatingAway: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 434
    invoke-virtual {v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", showing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->forceRemove()V

    goto :goto_0

    .line 442
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v2, :cond_4

    .line 443
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 444
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 445
    const-string v2, "FingerprintDialogImpl"

    const-string v3, "Dialog already showing"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void

    .line 451
    :cond_4
    :goto_0
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 454
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 456
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    .line 457
    iput-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 460
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 463
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v4}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_5

    .line 464
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 470
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 471
    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-nez v4, :cond_6

    .line 472
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 473
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 475
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 480
    :cond_7
    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 481
    iput-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    .line 482
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    .line 900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 901
    return-void
.end method

.method private hideQLView()V
    .locals 4

    .line 714
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch"

    const-string v1, "hideQLView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 718
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogImpl$yv9GmaRly3Y3AuAlb93wiAjQjcY;

    .local v0, "removeQLView":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogImpl$yv9GmaRly3Y3AuAlb93wiAjQjcY;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 729
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/QLRootView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 732
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 735
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 738
    :cond_2
    return-void
.end method

.method private isQLEnabled()Z
    .locals 1

    .line 905
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    if-eqz v0, :cond_0

    .line 907
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 905
    :goto_0
    return v0
.end method

.method public static synthetic lambda$hideQLView$1(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRootView;->onQLExit()V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    .line 726
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    .line 727
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 5

    .line 679
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->isCurrentGuest(Landroid/content/Context;)Z

    move-result v0

    .line 680
    .local v0, "isGuest":Z
    sget-boolean v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "QuickLaunch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowQLView enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->isQLEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGuest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->isQLEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 682
    :cond_1
    sget-boolean v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "QuickLaunch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowQLView mQLShowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFingerOnView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    if-eqz v1, :cond_5

    .line 686
    const/16 v1, 0x3ff

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->vibrate(I)V

    .line 690
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 695
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    .line 696
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0194

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fingerprint/QLRootView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    .line 697
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfig:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfig:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/fingerprint/QLRootView;->setQLConfig(Ljava/lang/String;)V

    .line 698
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v4}, Lcom/android/systemui/fingerprint/QLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$6;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/fingerprint/QLRootView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 710
    :cond_5
    return-void

    .line 681
    :cond_6
    :goto_0
    return-void
.end method

.method private vibrate(I)V
    .locals 4
    .param p1, "sceneId"    # I

    .line 917
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 920
    .local v0, "vib":Landroid/os/Vibrator;
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportLinearVibration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    goto :goto_0

    .line 923
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x8d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 925
    .local v1, "effect":Landroid/os/VibrationEffect;
    sget-object v2, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 926
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    goto :goto_0

    .line 927
    :cond_1
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 928
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    sget-object v2, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 931
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    :goto_0
    return-void
.end method


# virtual methods
.method public forceShowDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 409
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 413
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 414
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 415
    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    .line 416
    return-void
.end method

.method protected handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 983
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    :cond_0
    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 3

    .line 400
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "hideFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    return-void
.end method

.method public is2KDisplay()Z
    .locals 1

    .line 1015
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .line 993
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onDensityOrFontScaleChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIndicationTextSize()V

    .line 997
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportResolutionSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 999
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1000
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1001
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateLayoutDimension(ZF)V

    .line 1006
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1007
    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    if-eqz v2, :cond_2

    const v2, 0x7f070502

    goto :goto_1

    :cond_2
    const v2, 0x7f070501

    .line 1006
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconSize:I

    .line 1010
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_3
    return-void
.end method

.method public onFaceUnlocked()V
    .locals 3

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsFaceUnlocked:Z

    .line 959
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceUnlocked mIsEnableQL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mTransparentIconShowing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    if-eqz v0, :cond_4

    .line 961
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_2

    .line 962
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 966
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFaceUnlocked removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 971
    :cond_2
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceUnlocked mQLShowing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mQLRootView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    if-eqz v0, :cond_4

    .line 973
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideQLView()V

    .line 976
    :cond_4
    return-void
.end method

.method public onFingerprintAcquired(II)V
    .locals 2
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 364
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 365
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 2

    .line 382
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 384
    return-void
.end method

.method public onFingerprintAuthenticatedFail()V
    .locals 2

    .line 375
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticatedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 377
    return-void
.end method

.method public onFingerprintEnrollResult()V
    .locals 2

    .line 369
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 396
    return-void
.end method

.method public onFingerprintEventCallback(II)V
    .locals 3
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 935
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintEventCallback: acquireInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 937
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 388
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    return-void
.end method

.method public resetState()V
    .locals 2

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 943
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    .line 945
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFingerOnView:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsFaceUnlocked:Z

    .line 947
    :cond_0
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 350
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string/jumbo v1, "showFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 356
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 357
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 359
    return-void
.end method

.method public start()V
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 216
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 220
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportQuickLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    .line 221
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_quickpay_enable"

    .line 224
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    .line 223
    const/4 v5, -0x1

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_quick_launch_apps"

    .line 230
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLConfigObserver:Landroid/database/ContentObserver;

    .line 229
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 234
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 242
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d013e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setTransparentIconView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070500

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconSize:I

    .line 310
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 315
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 316
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 317
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    .line 319
    return-void
.end method

.method public updateTransparentIconLayoutParams(Z)V
    .locals 7
    .param p1, "expand"    # Z

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_4

    .line 524
    :cond_0
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTransparentIconLayoutParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mExpanded:Z

    .line 526
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 532
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    .line 533
    .local v1, "orientation":I
    if-eqz p1, :cond_1

    .line 534
    const/4 v2, -0x1

    .line 535
    .local v2, "w":I
    const/4 v3, -0x1

    .line 536
    .local v3, "h":I
    const/4 v4, 0x0

    .line 537
    .local v4, "x":I
    const/4 v5, 0x0

    .line 538
    .local v5, "y":I
    const/4 v1, 0x1

    goto :goto_3

    .line 545
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconSize:I

    .line 546
    .restart local v2    # "w":I
    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconSize:I

    .line 549
    .restart local v3    # "h":I
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomFingerprintType2()Z

    move-result v4

    .line 551
    .local v4, "isFpType2":Z
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportResolutionSwitch()Z

    move-result v5

    const v6, 0x7f070503

    if-eqz v5, :cond_4

    .line 552
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v4, :cond_2

    goto :goto_0

    .line 553
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIs2KDisplay:Z

    if-eqz v6, :cond_3

    const v6, 0x7f0704ff

    goto :goto_0

    :cond_3
    const v6, 0x7f0704fe

    .line 552
    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 552
    .restart local v5    # "y":I
    goto :goto_2

    .line 555
    .end local v5    # "y":I
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const v6, 0x7f0704fd

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 559
    .restart local v5    # "y":I
    :goto_2
    const/4 v1, -0x1

    .line 562
    .end local v4    # "isFpType2":Z
    :goto_3
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 563
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 565
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 566
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 568
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v4, v6, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    return-void

    .line 522
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "orientation":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v5    # "y":I
    :cond_6
    :goto_4
    return-void
.end method

.method public updateTransparentIconVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 951
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 954
    return-void
.end method
