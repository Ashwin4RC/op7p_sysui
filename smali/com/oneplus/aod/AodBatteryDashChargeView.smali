.class public Lcom/oneplus/aod/AodBatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "AodBatteryDashChargeView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDark:Z

.field private mIconTint:I

.field private mLevel:I

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    .line 34
    iput v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mIconTint:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    .line 53
    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private getImageResId()I
    .locals 4

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "resId":I
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-nez v1, :cond_1

    .line 102
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_0

    .line 103
    const v1, 0x7f080616

    goto :goto_0

    .line 104
    :cond_0
    const v1, 0x7f080617

    :goto_0
    move v0, v1

    goto/16 :goto_11

    .line 105
    :cond_1
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0xb

    if-lez v1, :cond_3

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_3

    .line 106
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_2

    .line 107
    const v1, 0x7f080618

    goto :goto_1

    .line 108
    :cond_2
    const v1, 0x7f080627

    :goto_1
    move v0, v1

    goto/16 :goto_11

    .line 109
    :cond_3
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x11

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_5

    .line 110
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_4

    .line 111
    const v1, 0x7f080628

    goto :goto_2

    .line 112
    :cond_4
    const v1, 0x7f080629

    :goto_2
    move v0, v1

    goto/16 :goto_11

    .line 113
    :cond_5
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x17

    if-le v1, v3, :cond_7

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_7

    .line 114
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_6

    .line 115
    const v1, 0x7f08062a

    goto :goto_3

    .line 116
    :cond_6
    const v1, 0x7f08062b

    :goto_3
    move v0, v1

    goto/16 :goto_11

    .line 117
    :cond_7
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x1d

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_9

    .line 118
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_8

    .line 119
    const v1, 0x7f08062c

    goto :goto_4

    .line 120
    :cond_8
    const v1, 0x7f08062d

    :goto_4
    move v0, v1

    goto/16 :goto_11

    .line 121
    :cond_9
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-le v1, v3, :cond_b

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_b

    .line 122
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_a

    .line 123
    const v1, 0x7f08062e

    goto :goto_5

    .line 124
    :cond_a
    const v1, 0x7f08062f

    :goto_5
    move v0, v1

    goto/16 :goto_11

    .line 125
    :cond_b
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x29

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_d

    .line 126
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_c

    .line 127
    const v1, 0x7f080630

    goto :goto_6

    .line 128
    :cond_c
    const v1, 0x7f080631

    :goto_6
    move v0, v1

    goto/16 :goto_11

    .line 129
    :cond_d
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-le v1, v3, :cond_f

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_f

    .line 130
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_e

    .line 131
    const v1, 0x7f080632

    goto :goto_7

    .line 132
    :cond_e
    const v1, 0x7f080633

    :goto_7
    move v0, v1

    goto/16 :goto_11

    .line 133
    :cond_f
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x35

    if-le v1, v2, :cond_11

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_11

    .line 134
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_10

    .line 135
    const v1, 0x7f080634

    goto :goto_8

    .line 136
    :cond_10
    const v1, 0x7f080635

    :goto_8
    move v0, v1

    goto/16 :goto_11

    .line 137
    :cond_11
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-le v1, v3, :cond_13

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_13

    .line 138
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_12

    .line 139
    const v1, 0x7f080636

    goto :goto_9

    .line 140
    :cond_12
    const v1, 0x7f080637

    :goto_9
    move v0, v1

    goto/16 :goto_11

    .line 141
    :cond_13
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x41

    if-le v1, v2, :cond_15

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_15

    .line 142
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_14

    .line 143
    const v1, 0x7f080619

    goto :goto_a

    .line 144
    :cond_14
    const v1, 0x7f08061a

    :goto_a
    move v0, v1

    goto/16 :goto_11

    .line 145
    :cond_15
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-le v1, v3, :cond_17

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_17

    .line 146
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_16

    .line 147
    const v1, 0x7f08061b

    goto :goto_b

    .line 148
    :cond_16
    const v1, 0x7f08061c

    :goto_b
    move v0, v1

    goto/16 :goto_11

    .line 149
    :cond_17
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x4d

    if-le v1, v2, :cond_19

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_19

    .line 150
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_18

    .line 151
    const v1, 0x7f08061d

    goto :goto_c

    .line 152
    :cond_18
    const v1, 0x7f08061e

    :goto_c
    move v0, v1

    goto/16 :goto_11

    .line 153
    :cond_19
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-le v1, v3, :cond_1b

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1b

    .line 154
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1a

    .line 155
    const v1, 0x7f08061f

    goto :goto_d

    .line 156
    :cond_1a
    const v1, 0x7f080620

    :goto_d
    move v0, v1

    goto :goto_11

    .line 157
    :cond_1b
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x59

    if-le v1, v2, :cond_1d

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_1d

    .line 158
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1c

    .line 159
    const v1, 0x7f080621

    goto :goto_e

    .line 160
    :cond_1c
    const v1, 0x7f080622

    :goto_e
    move v0, v1

    goto :goto_11

    .line 161
    :cond_1d
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-le v1, v3, :cond_1f

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1f

    .line 162
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1e

    .line 163
    const v1, 0x7f080623

    goto :goto_f

    .line 164
    :cond_1e
    const v1, 0x7f080624

    :goto_f
    move v0, v1

    goto :goto_11

    .line 165
    :cond_1f
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-le v1, v2, :cond_21

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_21

    .line 166
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_20

    .line 167
    const v1, 0x7f080625

    goto :goto_10

    .line 168
    :cond_20
    const v1, 0x7f080626

    :goto_10
    move v0, v1

    .line 170
    :cond_21
    :goto_11
    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 75
    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 76
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method public setLevel(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "force"    # Z

    .line 92
    iget v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 93
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    .line 94
    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->getImageResId()I

    move-result v0

    .line 95
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setImageResource(I)V

    .line 97
    .end local v0    # "resId":I
    :cond_1
    return-void
.end method
