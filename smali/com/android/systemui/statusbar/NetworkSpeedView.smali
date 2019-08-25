.class public Lcom/android/systemui/statusbar/NetworkSpeedView;
.super Landroid/widget/LinearLayout;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsVisible:Z

.field private mLastFontType:I

.field private mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mTextDown:Ljava/lang/String;

.field private mTextUp:Ljava/lang/String;

.field private mTextViewDown:Landroid/widget/TextView;

.field private mTextViewUp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsVisible:Z

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NetworkSpeedView$1;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 49
    const-class v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    .line 50
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NetworkSpeedView;

    .line 19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateText()V

    return-void
.end method

.method private refreshTextView()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    const v1, -0x42b33333    # -0.05f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 164
    return-void

    .line 161
    :cond_1
    :goto_0
    return-void
.end method

.method private updateText()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, "isScreenTurnedOn":Z
    :goto_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkSpeedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextUp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextDown:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mIsVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsVisible:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextUp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextDown:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->registerReceiver()V

    .line 91
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 102
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkSpeedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onConfigurationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->unregisterReceiver()V

    .line 97
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    const v0, 0x7f0a0406

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0405

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    .line 66
    const-string v0, "NetworkSpeedView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 68
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->oneplusfont:I

    iput v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastFontType:I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->refreshTextView()V

    .line 71
    return-void
.end method

.method public onSpeedChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "speed"    # Ljava/lang/String;

    .line 76
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 79
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextUp:Ljava/lang/String;

    .line 80
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextDown:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateText()V

    .line 84
    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->addCallback(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewUp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTextViewDown:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "isVisiable":Z
    :goto_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkSpeedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setVisibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsVisible:Z

    if-eq v1, v0, :cond_2

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsVisible:Z

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateText()V

    .line 136
    :cond_2
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->removeCallback(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
