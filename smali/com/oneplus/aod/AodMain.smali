.class public Lcom/oneplus/aod/AodMain;
.super Landroid/widget/LinearLayout;
.source "AodMain.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBatteryAnalogContainer:Landroid/widget/LinearLayout;

.field private mBatteryContainer:Landroid/widget/LinearLayout;

.field private mBatteryDefaultContainer:Landroid/widget/LinearLayout;

.field private mBatteryEmptyView:Landroid/view/View;

.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mNotificationIconContainer:Landroid/widget/LinearLayout;

.field private mNotificationMoreIcon:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    .line 48
    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    .line 53
    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    .line 58
    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    .line 63
    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryEmptyView:Landroid/view/View;

    .line 77
    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    .line 78
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f0a02c8

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationMoreIcon:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateRTL()V

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateLayout()V

    .line 85
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateLayout()V

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateRTL()V

    .line 113
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "clockStyle"    # I

    .line 222
    iput p1, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    .line 223
    return-void
.end method

.method public updateLayout()V
    .locals 4

    .line 184
    iget v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    .local v0, "battery_lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    if-nez v3, :cond_2

    .line 204
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 207
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 210
    :cond_2
    iget v2, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 212
    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryEmptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 214
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 215
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    :cond_3
    :goto_0
    return-void

    .line 187
    .end local v0    # "battery_lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    return-void
.end method

.method protected updateRTL()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 158
    .local v0, "isRTL":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 159
    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 160
    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 162
    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mNotificationMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    if-eqz v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 165
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 166
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_1

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 169
    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 170
    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 173
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->invalidate()V

    .line 174
    return-void
.end method
