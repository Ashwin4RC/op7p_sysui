.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mFacelockAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockFailAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

.field private mFacelockRunningType:I

.field private mHasFaceUnlockIcon:Z

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPaddingRetryRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 87
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    .line 91
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    .line 459
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$o8HzjahYUK3InDNX35ogdXjHUC0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$o8HzjahYUK3InDNX35ogdXjHUC0;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f010032

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f010033

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    .line 112
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 56
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRetryIcon()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 4
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "oldDeviceInteractive"    # Z
    .param p4, "deviceInteractive"    # Z
    .param p5, "oldScreenOn"    # Z
    .param p6, "screenOn"    # Z

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowFacelockIcon()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 593
    return v1

    .line 597
    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 598
    const v0, 0x7f0806c2

    return v0

    .line 599
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    if-ne p2, v0, :cond_2

    .line 600
    const v0, 0x7f080ade

    return v0

    .line 601
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_3

    .line 602
    const v0, 0x7f080218

    return v0

    .line 603
    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    .line 604
    const v0, 0x7f0806c0

    return v0

    .line 605
    :cond_4
    if-ne p1, v2, :cond_5

    if-ne p2, v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 606
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 607
    const v0, 0x7f0806bc

    return v0

    .line 608
    :cond_5
    if-ne p2, v2, :cond_8

    if-nez p5, :cond_6

    if-eqz p6, :cond_6

    if-nez p4, :cond_7

    :cond_6
    if-eqz p6, :cond_8

    if-nez p3, :cond_8

    if-eqz p4, :cond_8

    .line 610
    :cond_7
    const v0, 0x7f0806be

    return v0

    .line 612
    :cond_8
    return v1
.end method

.method private getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
    .locals 8

    .line 118
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    .local v0, "retryAnimatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 120
    .local v1, "acelerateInterpolator":Landroid/view/animation/Interpolator;
    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 121
    .local v3, "zoomOutAnimtor":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    new-instance v6, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    new-instance v6, Lcom/android/systemui/statusbar/phone/LockIcon$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$2;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 143
    .local v6, "dccelerateInterpolator":Landroid/view/animation/Interpolator;
    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 144
    .local v7, "zoomInAnimtor":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    new-instance v4, Lcom/android/systemui/statusbar/phone/LockIcon$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$3;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    new-instance v4, Lcom/android/systemui/statusbar/phone/LockIcon$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$4;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v7, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 170
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockIcon$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$5;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .line 520
    packed-switch p1, :pswitch_data_0

    const v0, 0x7f08021e

    const v1, 0x7f08021f

    packed-switch p1, :pswitch_data_1

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 577
    :pswitch_0
    const v0, 0x7f0804fd

    .line 578
    .local v0, "iconRes":I
    goto/16 :goto_2

    .line 538
    .end local v0    # "iconRes":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f08021b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 532
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 523
    :pswitch_3
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 573
    :pswitch_4
    const v0, 0x7f0804bb

    .line 574
    .restart local v0    # "iconRes":I
    goto :goto_2

    .line 568
    .end local v0    # "iconRes":I
    :pswitch_5
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 569
    const v0, 0x7f0804ba

    goto :goto_0

    .line 570
    :cond_2
    const v0, 0x7f0806be

    .line 571
    .restart local v0    # "iconRes":I
    :goto_0
    goto :goto_2

    .line 563
    .end local v0    # "iconRes":I
    :pswitch_6
    const v0, 0x7f0804b9

    .line 564
    .restart local v0    # "iconRes":I
    goto :goto_2

    .line 544
    .end local v0    # "iconRes":I
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 549
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    const v0, 0x7f08021f

    goto :goto_1

    .line 553
    :cond_4
    const v0, 0x7f0804ff

    .restart local v0    # "iconRes":I
    :goto_1
    goto :goto_2

    .line 557
    .end local v0    # "iconRes":I
    :cond_5
    const v0, 0x7f0804fe

    .line 561
    .restart local v0    # "iconRes":I
    goto :goto_2

    .line 541
    .end local v0    # "iconRes":I
    :pswitch_8
    const v0, 0x7f0804fc

    .line 542
    .restart local v0    # "iconRes":I
    nop

    .line 581
    :goto_2
    nop

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getState()I
    .locals 5

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 618
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    .line 619
    .local v1, "fingerprintRunning":Z
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    .line 622
    .local v2, "unlockingAllowed":Z
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    const/16 v4, 0xb

    if-eqz v3, :cond_3

    .line 623
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    const/16 v3, 0xc

    return v3

    .line 625
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 626
    return v4

    .line 627
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    const/16 v3, 0xd

    return v3

    .line 629
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v3

    if-nez v3, :cond_4

    .line 630
    const/16 v3, 0xe

    return v3

    .line 635
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowFacelockIcon()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 636
    return v4

    .line 641
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    if-nez v3, :cond_5

    .line 643
    const/4 v3, 0x4

    return v3

    .line 644
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 645
    const/4 v3, 0x1

    return v3

    .line 646
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 647
    const/4 v3, 0x2

    return v3

    .line 649
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    if-nez v3, :cond_8

    .line 651
    const/4 v3, 0x3

    return v3

    .line 653
    :cond_8
    const/4 v3, 0x0

    return v3
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 2

    .line 462
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "LockIcon"

    const-string v1, "mPaddingRetryRunnable run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRetryIcon()V

    .line 464
    return-void
.end method

.method private setRetryIcon()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f08074d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v0

    .line 188
    .local v0, "waitingTap":Z
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "LockIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRetryIcon, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v3, 0x7f080221

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v3, 0x7f08021f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 196
    :goto_0
    return-void
.end method

.method private updateClickability()V
    .locals 7

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    .line 473
    .local v0, "clickToUnlock":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 475
    .local v1, "clickToForceLock":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 482
    .local v4, "longClickToForceLock":Z
    :goto_1
    const/4 v5, 0x0

    .line 483
    .local v5, "facelockClickable":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 484
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 485
    :cond_3
    const/4 v5, 0x1

    .line 488
    :cond_4
    if-nez v1, :cond_6

    if-nez v0, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move v6, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v3

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 489
    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    goto :goto_5

    :cond_8
    :goto_4
    move v2, v3

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 492
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 493
    return-void
.end method

.method private updateIconAnimation(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "state"    # I

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 408
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "LockIcon"

    const-string/jumbo v1, "stop recog anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 416
    :cond_2
    const/16 v0, 0xc

    if-ne p2, v0, :cond_6

    .line 418
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    if-eqz v0, :cond_4

    .line 419
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "LockIcon"

    const-string v1, "play retry anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 423
    :cond_4
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    const-string v0, "LockIcon"

    const-string v1, "screen is off, padding show try icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 429
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldPlayFacelockFailAnim()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 430
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7

    const-string v0, "LockIcon"

    const-string v1, "play fail anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 434
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockIcon$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon$6;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 453
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_9

    const-string v0, "LockIcon"

    const-string/jumbo v1, "start anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 456
    :cond_a
    :goto_0
    return-void

    .line 405
    :cond_b
    :goto_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 260
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 262
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 263
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 265
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 269
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 213
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 497
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 498
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110108

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 503
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11010e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 506
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v0, :cond_1

    .line 508
    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 512
    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 219
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 201
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 207
    :goto_0
    return-void
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 515
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 516
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 229
    return-void
.end method

.method public setFacelockRunning(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "updateIcon"    # Z

    .line 246
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 248
    :cond_0
    const-string v0, "LockIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFacelockRunning , type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updateIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    .line 251
    if-eqz p2, :cond_1

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 255
    :cond_1
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .line 232
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 234
    if-nez p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 242
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 224
    return-void
.end method

.method public update()V
    .locals 1

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 273
    return-void
.end method

.method public update(Z)V
    .locals 17
    .param p1, "force"    # Z

    move-object/from16 v7, p0

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    .line 277
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    .line 278
    .local v10, "visible":Z
    if-eqz v10, :cond_1

    .line 279
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_1

    .line 281
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 283
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v11

    .line 284
    .local v11, "state":I
    const/4 v0, 0x3

    if-eq v11, v0, :cond_3

    const/4 v0, 0x4

    if-ne v11, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move v12, v0

    .line 285
    .local v12, "anyFingerprintIcon":Z
    const/4 v0, 0x2

    if-ne v11, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v9

    :goto_4
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    .line 286
    move v13, v12

    .line 287
    .local v13, "useAdditionalPadding":Z
    move v14, v12

    .line 288
    .local v14, "trustHidden":Z
    iget v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v11, v0, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-ne v0, v1, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_5

    .line 398
    :cond_5
    move/from16 v16, v10

    goto/16 :goto_10

    .line 291
    :cond_6
    :goto_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 293
    iget v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v5, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    iget-boolean v6, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 294
    move-object v0, v7

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v0

    .line 296
    .local v0, "iconAnimRes":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v9

    .line 297
    .local v1, "isAnim":Z
    :goto_6
    const v2, 0x7f0806bc

    if-ne v0, v2, :cond_8

    .line 298
    const/4 v12, 0x1

    .line 299
    const/4 v13, 0x1

    .line 300
    const/4 v3, 0x1

    .line 312
    .end local v14    # "trustHidden":Z
    .local v3, "trustHidden":Z
    :goto_7
    move v14, v3

    goto :goto_8

    .line 301
    .end local v3    # "trustHidden":Z
    .restart local v14    # "trustHidden":Z
    :cond_8
    const v3, 0x7f080ade

    if-ne v0, v3, :cond_9

    .line 302
    const/4 v12, 0x1

    .line 303
    const/4 v13, 0x0

    .line 304
    const/4 v3, 0x1

    goto :goto_7

    .line 305
    :cond_9
    const v3, 0x7f080218

    if-ne v0, v3, :cond_a

    .line 306
    const/4 v12, 0x1

    .line 307
    const/4 v13, 0x0

    .line 308
    const/4 v3, 0x0

    goto :goto_7

    .line 312
    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    .line 314
    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 317
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-direct {v7, v11, v3, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 320
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_9
    instance-of v4, v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_c

    .line 321
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_a

    .line 322
    :cond_c
    const/4 v4, 0x0

    .line 323
    .local v4, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07023d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 325
    .local v6, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v5, 0x7f07023e

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 328
    .local v5, "iconWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-ne v8, v6, :cond_d

    .line 330
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-eq v8, v5, :cond_e

    .line 331
    :cond_d
    new-instance v8, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v8, v3, v5, v6}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v3, v8

    .line 333
    :cond_e
    if-eqz v13, :cond_f

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v2, 0x7f0701fd

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_b

    .line 336
    :cond_f
    nop

    .line 333
    move v2, v9

    :goto_b
    invoke-virtual {v7, v9, v9, v9, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 338
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_10

    .line 339
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    goto :goto_d

    .line 341
    :cond_10
    nop

    .line 342
    if-eqz v12, :cond_11

    goto :goto_c

    :cond_11
    const/high16 v8, 0x3f000000    # 0.5f

    .line 341
    :goto_c
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 346
    :goto_d
    invoke-virtual {v7, v3, v9}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 347
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v2, :cond_12

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f1100fc

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 352
    :cond_12
    iput-boolean v12, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 353
    if-eqz v4, :cond_13

    if-eqz v1, :cond_13

    .line 354
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 355
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 358
    :cond_13
    const v2, 0x7f0806bc

    if-ne v0, v2, :cond_14

    .line 359
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 360
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move/from16 v16, v10

    const-wide/16 v9, 0x320

    .end local v10    # "visible":Z
    .local v16, "visible":Z
    invoke-virtual {v7, v2, v9, v10}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    .line 362
    .end local v16    # "visible":Z
    .restart local v10    # "visible":Z
    :cond_14
    move/from16 v16, v10

    .end local v10    # "visible":Z
    .restart local v16    # "visible":Z
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 367
    :goto_e
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    const/16 v8, 0xb

    if-eqz v2, :cond_17

    .line 368
    iget v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-eq v2, v8, :cond_15

    if-ne v11, v8, :cond_15

    .line 369
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 370
    :cond_15
    iget v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    const/16 v9, 0xd

    if-eq v2, v9, :cond_16

    if-ne v11, v9, :cond_16

    .line 371
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v8, 0x7f08074d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 374
    :cond_16
    if-eq v11, v8, :cond_19

    const/16 v2, 0xc

    if-eq v11, v2, :cond_19

    if-eq v11, v9, :cond_19

    .line 375
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 379
    :cond_17
    iget v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-eq v2, v8, :cond_18

    if-ne v11, v8, :cond_18

    .line 380
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v8, 0x7f080220

    invoke-virtual {v2, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 381
    :cond_18
    if-eq v11, v8, :cond_19

    .line 382
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_19
    :goto_f
    invoke-direct {v7, v7, v11}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconAnimation(Landroid/view/View;I)V

    .line 388
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1a

    iget v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-eq v2, v11, :cond_1a

    .line 389
    const-string v2, "LockIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1a
    iput v11, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 393
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 394
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 398
    .end local v0    # "iconAnimRes":I
    .end local v1    # "isAnim":Z
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v5    # "iconWidth":I
    .end local v6    # "iconHeight":I
    :goto_10
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez v14, :cond_1b

    const/4 v15, 0x1

    goto :goto_11

    :cond_1b
    const/4 v15, 0x0

    :goto_11
    move v0, v15

    .line 399
    .local v0, "trustManaged":Z
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 401
    return-void
.end method
