.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDismissing:Z

.field protected mEcaView:Landroid/view/View;

.field private mEmergencyBubblePanel:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

.field private mEmergencyPanelShow:Z

.field protected mEnableHaptics:Z

.field private mLockOut:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxCountdownTimes:I

.field final mPanelCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    .line 74
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockOut:Z

    .line 83
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPanelCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    .line 204
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p1, "x1"    # Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showEmergencyPanel(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Lcom/android/keyguard/EmergencyButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockOut:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getSecurityModeLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSecurityModeLabel()Ljava/lang/String;
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 323
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    const-string v1, ""

    .line 324
    .local v1, "label":Ljava/lang/String;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v2, :cond_0

    .line 325
    const-string v1, "pin"

    goto :goto_0

    .line 326
    :cond_0
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v2, :cond_1

    .line 327
    const-string v1, "password"

    .line 329
    :cond_1
    :goto_0
    return-object v1
.end method

.method private isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 572
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 576
    .local v1, "sTmpInt":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 577
    aget v2, v1, v0

    .line 578
    .local v2, "viewX":I
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 579
    .local v4, "viewY":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 580
    .local v5, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 581
    .local v6, "viewHeight":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 582
    .local v7, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 583
    .local v8, "x":F
    add-int v9, v2, v5

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_1

    int-to-float v9, v2

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_1

    add-int v9, v4, v6

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_1

    int-to-float v9, v4

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_1

    .line 585
    return v3

    .line 587
    :cond_1
    return v0

    .line 573
    .end local v1    # "sTmpInt":[I
    .end local v2    # "viewX":I
    .end local v4    # "viewY":I
    .end local v5    # "viewWidth":I
    .end local v6    # "viewHeight":I
    .end local v7    # "y":F
    .end local v8    # "x":F
    :cond_2
    :goto_0
    return v0
.end method

.method private notifyEmergencyPanelTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 621
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyBubblePanel:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 625
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyBubblePanel:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 626
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showEmergencyPanel(Z)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 630
    :goto_0
    return-void

    .line 622
    .end local v0    # "action":I
    :cond_2
    :goto_1
    return-void
.end method

.method private onPasswordChecked(IZIZ)V
    .locals 17
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPassword"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 335
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 336
    .local v3, "dismissKeyguard":Z
    :goto_0
    if-eqz p2, :cond_1

    .line 337
    iget-object v6, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 338
    iget-object v6, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v1, v5, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 339
    if-eqz v3, :cond_5

    .line 340
    iput-boolean v5, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 341
    iget-object v4, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v5, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 344
    :cond_1
    if-eqz p4, :cond_2

    .line 345
    iget-object v7, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 347
    iget v4, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    if-gtz v4, :cond_2

    if-lez v2, :cond_2

    .line 349
    iget-object v4, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v7

    .line 351
    .local v7, "deadline":J
    invoke-virtual {v0, v7, v8}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 354
    .end local v7    # "deadline":J
    :cond_2
    if-nez v2, :cond_3

    .line 355
    iget-object v4, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 358
    :cond_3
    iget-object v4, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 359
    .local v4, "vib":Landroid/os/Vibrator;
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportLinearVibration()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 360
    iget-object v7, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const/16 v8, 0x3f6

    invoke-static {v7, v8}, Lcom/oneplus/util/VibratorSceneUtils;->isVibratorSceneSupported(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 361
    const/16 v13, 0x3f6

    .line 362
    .local v13, "sceneId":I
    const/16 v14, 0x50

    .line 363
    .local v14, "delay":I
    const/16 v15, 0x32

    .line 364
    .local v15, "gap":I
    const/16 v16, 0x2

    .line 366
    .local v16, "times":I
    iget-object v7, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const/16 v9, 0x3f6

    move-object v8, v4

    move v10, v14

    move v11, v15

    move/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z

    .line 367
    .end local v13    # "sceneId":I
    .end local v14    # "delay":I
    .end local v15    # "gap":I
    .end local v16    # "times":I
    goto :goto_1

    .line 369
    :cond_4
    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 373
    .end local v4    # "vib":Landroid/os/Vibrator;
    :cond_5
    :goto_1
    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 374
    return-void
.end method

.method private showEmergencyPanel(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 592
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-nez v0, :cond_0

    .line 593
    const-string v0, "KeyguardAbsKeyInputView"

    const-string/jumbo v1, "showEmergencyPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void

    .line 596
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showEmergencyPanel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEmergencyPanelShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanelShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanelShow:Z

    if-eq v0, p1, :cond_3

    .line 598
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanelShow:Z

    .line 599
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {v1, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onStart()V

    .line 602
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPanelCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->addCallback(Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;)V

    .line 603
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0

    .line 608
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oneplus/keyguard/OpEmergencyPanel;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onStop()V

    .line 610
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->removeCallback()V

    .line 611
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .line 540
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 545
    :cond_0
    return-void
.end method

.method protected getMessageWithCount(I)Ljava/lang/String;
    .locals 8
    .param p1, "msgId"    # I

    .line 430
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    .line 432
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 433
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 432
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 434
    .local v1, "remaining":I
    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11036b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 436
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 435
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    :cond_0
    return-object v0
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromptReasonStringRes(I)I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .line 227
    const v0, 0x7f110375

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 387
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 391
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyPasswordLockout()V

    .line 392
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->hideSecurityIcon()V

    .line 398
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockOut:Z

    .line 401
    sub-long v2, p1, v0

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 403
    .local v2, "secondsInFuture":J
    new-instance v10, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    const-wide/16 v4, 0x3e8

    mul-long v6, v2, v4

    const-wide/16 v8, 0x3e8

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    .line 425
    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->start()Landroid/os/CountDownTimer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 426
    return-void
.end method

.method public isCheckingPassword()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowEmergencyPanel()Z
    .locals 1

    .line 617
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportEmergencyPanel()Z

    move-result v0

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 196
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 202
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 189
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 170
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 171
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 172
    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    .line 177
    const v0, 0x7f0a0143

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 178
    .local v0, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 182
    :cond_0
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 453
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_3

    .line 455
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0

    .line 461
    :cond_0
    if-eqz p1, :cond_3

    .line 463
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 465
    :cond_1
    return v0

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    .line 470
    :cond_3
    :goto_0
    return v0
.end method

.method public onLaunchEmergencyPanel()V
    .locals 1

    .line 568
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showEmergencyPanel(Z)V

    .line 569
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 482
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 486
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 490
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showEmergencyPanel(Z)V

    .line 492
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showEmergencyPanel(Z)V

    .line 499
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 562
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 563
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->notifyEmergencyPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 564
    return v0
.end method

.method protected onUserInput()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public reset()V
    .locals 4

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 143
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 145
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    .line 147
    .local v1, "deadline":J
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 151
    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockOut:Z

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 153
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockOut:Z

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 158
    :goto_0
    return-void
.end method

.method protected abstract resetPasswordText(ZZ)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 122
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isShowEmergencyPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->getEmergencyPanel()Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEmergencyBubblePanel:Landroid/view/View;

    .line 131
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 137
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method

.method protected shouldLockout(J)Z
    .locals 2
    .param p1, "deadline"    # J

    .line 162
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method

.method public showPromptReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 509
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f11034e

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 511
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f11027d

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 518
    return-void

    .line 522
    :cond_1
    if-eqz p1, :cond_2

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result v0

    .line 524
    .local v0, "promtReasonStringRes":I
    if-eqz v0, :cond_2

    .line 525
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 528
    .end local v0    # "promtReasonStringRes":I
    :cond_2
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .line 231
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "entry":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 235
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    .line 237
    const-string v2, "KeyguardAbsKeyInputView"

    const-string/jumbo v3, "verifyPasswordAndUnlock to cancel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 242
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 243
    .local v2, "userId":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 246
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 247
    invoke-direct {p0, v2, v1, v1, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    .line 248
    return-void

    .line 251
    :cond_2
    const-string v1, "KeyguardAbsKeyInputView"

    const-string v3, "checkPassword begin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 255
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 257
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v3, p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 318
    return-void
.end method
