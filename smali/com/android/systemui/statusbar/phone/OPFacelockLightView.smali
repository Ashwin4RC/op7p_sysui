.class public Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
.super Landroid/widget/RelativeLayout;
.source "OPFacelockLightView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButton:Landroid/widget/TextView;

.field private mClockView:Lcom/android/keyguard/clock/OPTextClock;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/android/keyguard/clock/OPTextClock;

.field private mInnerView:Landroid/widget/LinearLayout;

.field private mNotify:Landroid/widget/TextView;

.field private mNotifyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private getDateViewFormat()Ljava/lang/String;
    .locals 2

    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 114
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "EEMMMd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refresh()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->refreshTime()V

    .line 129
    return-void
.end method

.method private relayout()V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 95
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 74
    const v0, 0x7f0a0162

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotify:Landroid/widget/TextView;

    .line 76
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    .line 77
    const v1, 0x7f0a0160

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 78
    const v1, 0x7f0a0161

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotifyView:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0165

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mButton:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x68

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const v1, 0x7f080219

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :cond_0
    const-string v1, "OPFacelockLightView"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->relayout()V

    .line 90
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotify:Landroid/widget/TextView;

    const v1, 0x7f11027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mButton:Landroid/widget/TextView;

    const v1, 0x7f110069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    .line 71
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 103
    if-nez p2, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->refresh()V

    .line 106
    :cond_0
    return-void
.end method

.method public refreshTime()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getDateViewFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getDateViewFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
