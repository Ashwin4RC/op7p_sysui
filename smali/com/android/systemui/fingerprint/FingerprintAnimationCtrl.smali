.class public Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
.super Ljava/lang/Object;
.source "FingerprintAnimationCtrl.java"


# static fields
.field private static final DEBUG:Z

.field public static TYPE_ANIMATION_TOUCH_DOWN:I

.field public static TYPE_ANIMATION_TOUCH_UP:I

.field public static TYPE_NONE:I


# instance fields
.field private final KEY_ANIMATION_RES:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAnimPostDelayTime:J

.field private mAnimPostDelayTimeOnAod:J

.field private mAnimationState:I

.field private mContext:Landroid/content/Context;

.field private mCurAnimationType:I

.field private mDownAnimFrameNum:I

.field private mDownAnimStartIndex:I

.field private mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

.field private mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field private mHandler:Landroid/os/Handler;

.field private mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field mSettingsObserver:Landroid/database/ContentObserver;

.field private mUpAnimFrameNum:I

.field private mUpAnimStartIndex:I

.field private mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

.field private mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->DEBUG:Z

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 5
    .param p1, "main"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "FingerprintAnimationCtrl"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    .line 28
    const-string v0, "op_custom_unlock_animation_style"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->KEY_ANIMATION_RES:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 38
    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    .line 43
    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 47
    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimStartIndex:I

    .line 48
    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimFrameNum:I

    .line 50
    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimStartIndex:I

    .line 51
    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimFrameNum:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 108
    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    .line 110
    const v0, 0x7f0a02fc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 111
    const v0, 0x7f0a02fd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110283

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    .line 116
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110284

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    const-string v4, "Parse fingerprint animation post delay time error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    .line 120
    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_custom_unlock_animation_style"

    .line 128
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    .line 127
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    return-void
.end method


# virtual methods
.method protected checkAnimationValueValid()V
    .locals 5

    .line 83
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 84
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_custom_unlock_animation_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 86
    .local v1, "animValue":I
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " checkAnimationValueValid: current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isMCLVersion()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_custom_unlock_animation_style"

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 91
    return-void

    .line 94
    :cond_0
    iput v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    .line 97
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getDownStartFrameIndex(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimStartIndex:I

    .line 98
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getDownPlayFrameNum(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimFrameNum:I

    .line 100
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getUpStartFrameIndex(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimStartIndex:I

    .line 101
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getUpPlayFrameNum(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimFrameNum:I

    .line 103
    return-void
.end method

.method public playAnimation(I)V
    .locals 3
    .param p1, "type"    # I

    .line 168
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAnimation: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    if-ne p1, v0, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-eq p1, v0, :cond_1

    .line 175
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation(I)V

    .line 180
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-ne p1, v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v0, :cond_2

    .line 182
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->start(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    goto :goto_0

    .line 186
    :cond_3
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    if-ne p1, v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v0, :cond_4

    .line 188
    return-void

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->start(Z)V

    .line 194
    :cond_5
    :goto_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    const-string v1, "resetState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->resetResource()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->resetResource()V

    .line 252
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 253
    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 254
    return-void
.end method

.method public stopAnimation(I)V
    .locals 3
    .param p1, "nextType"    # I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAnimation: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOnGoingAnimationView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    .line 209
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 212
    :cond_3
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 213
    return-void
.end method

.method public updateAnimationRes(Z)V
    .locals 10
    .param p1, "isInteractive"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateanimationRes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownAnimationHelper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUpAnimationHelper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    .line 145
    .local v0, "delayTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v2, :cond_2

    .line 146
    new-instance v9, Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getDownAnimationRes(I)[I

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimStartIndex:I

    iget v8, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimFrameNum:I

    move-object v2, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;-><init>(Landroid/widget/ImageView;[IJII)V

    iput-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    goto :goto_1

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->updateAnimPostDelayTime(J)V

    .line 154
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v2, :cond_3

    .line 155
    new-instance v9, Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getUpAnimationRes(I)[I

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimStartIndex:I

    iget v8, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimFrameNum:I

    move-object v2, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;-><init>(Landroid/widget/ImageView;[IJII)V

    iput-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    goto :goto_2

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->updateAnimPostDelayTime(J)V

    .line 164
    :goto_2
    return-void
.end method

.method public updateLayoutDimension(Z)V
    .locals 4
    .param p1, "is2KDisplay"    # Z

    .line 260
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f070212

    goto :goto_0

    :cond_0
    const v1, 0x7f070211

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 261
    .local v0, "animationWidth":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f07020f

    goto :goto_1

    :cond_1
    const v2, 0x7f07020e

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 264
    .local v1, "animationHeight":I
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 265
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 270
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 271
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    return-void
.end method

.method public waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    .line 279
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register fp animation\'s callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", animationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-ne v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    const-string v1, "It shouldn\'t go into the state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V

    goto :goto_0

    .line 289
    :cond_2
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V

    .line 293
    :cond_3
    :goto_0
    return-void
.end method
