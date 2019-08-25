.class public Lcom/oneplus/aod/AodNotificationIconAreaController;
.super Ljava/lang/Object;
.source "AodNotificationIconAreaController.java"


# instance fields
.field private final NOTIFICATION_ICON_AMOUNT_MAX:I

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreIcon:Landroid/widget/TextView;

.field private final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mNotificationEmptyView:Landroid/view/View;

.field protected mNotificationIconArea:Landroid/widget/LinearLayout;

.field mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mNotificationIcons:Lcom/oneplus/aod/IconMerger;

.field private final mTintArea:Landroid/graphics/Rect;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "userId"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "AodNotificationIconArea"

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->NOTIFICATION_ICON_AMOUNT_MAX:I

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 49
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 51
    iput-object p1, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 52
    iput p3, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mUserId:I

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/AodNotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 54
    return-void
.end method

.method private generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p1, "index"    # I

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 77
    iget v1, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mIconHPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 81
    :cond_0
    return-object v0
.end method

.method private reloadDimens()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mIconSize:I

    .line 91
    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mIconHPadding:I

    .line 92
    iget-object v2, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    const v3, 0x7f120533

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 94
    iget-object v2, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 100
    return-void
.end method


# virtual methods
.method protected initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 60
    const v0, 0x7f0a02c9

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    .line 61
    const v0, 0x7f0a02c8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    .line 64
    const v1, 0x7f0a02b7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/IconMerger;

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    .line 66
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0a027c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0}, Lcom/oneplus/aod/AodNotificationIconAreaController;->reloadDimens()V

    .line 68
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 85
    iput p1, p0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mUserId:I

    .line 86
    return-void
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 21
    .param p1, "iconContainer"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v0, p0

    .line 110
    iget-object v1, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/aod/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    iget v3, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mUserId:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 111
    .local v1, "clockStyle":I
    const/16 v2, 0x8

    const/4 v3, 0x2

    if-eq v3, v1, :cond_a

    const/4 v3, 0x3

    if-ne v3, v1, :cond_0

    goto/16 :goto_6

    .line 118
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/AodNotificationIconAreaController;->reloadDimens()V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    .line 122
    .local v3, "iconSize":I
    const/4 v5, 0x3

    .line 123
    .local v5, "maxIconAmounts":I
    iget-object v6, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    invoke-virtual {v6}, Lcom/oneplus/aod/IconMerger;->removeAllViews()V

    .line 124
    const/4 v6, 0x1

    if-le v3, v5, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v4

    .line 126
    .local v7, "showMore":Z
    :goto_0
    sget-boolean v8, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_2

    const-string v8, "AodNotificationIconArea"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNotificationIcons: toShow size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    if-nez v3, :cond_3

    .line 129
    const-string v4, "AodNotificationIconArea"

    const-string/jumbo v6, "updateNotificationIcons: setVisibility to gone"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v4, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v4, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void

    .line 134
    :cond_3
    iget-object v8, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    .line 136
    .local v9, "emptyHeight":I
    if-nez v1, :cond_4

    .line 137
    iget-object v6, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0703ea

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 138
    :cond_4
    if-ne v1, v6, :cond_5

    .line 139
    iget-object v6, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0703e8

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 141
    :cond_5
    :goto_1
    iget-object v6, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v6, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "emptyHeight":I
    if-eqz v7, :cond_6

    .line 146
    iget-object v2, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v2, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v8, v3, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const-string v2, "AodNotificationIconArea"

    const-string v6, "more than 7 icons"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    :cond_6
    iget-object v6, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_2
    if-eqz v7, :cond_7

    move v2, v5

    goto :goto_3

    :cond_7
    move v2, v3

    .line 155
    .local v2, "toShowCount":I
    :goto_3
    iget-object v6, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    invoke-virtual {v6}, Lcom/oneplus/aod/IconMerger;->removeAllViews()V

    .line 156
    nop

    .line 156
    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_9

    .line 157
    move-object/from16 v6, p1

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 158
    .local v8, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v9, Lcom/oneplus/aod/AodNotificationIconView;

    iget-object v10, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/oneplus/aod/AodNotificationIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 159
    .local v9, "copyIcon":Lcom/oneplus/aod/AodNotificationIconView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/aod/AodNotificationIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 160
    invoke-direct {v0, v4}, Lcom/oneplus/aod/AodNotificationIconAreaController;->generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 163
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v15, v9

    .line 165
    .local v15, "v":Landroid/widget/ImageView;
    iget-object v11, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v18

    .line 167
    .local v18, "isGrayScale":Z
    if-eqz v18, :cond_8

    .line 168
    const/4 v11, -0x1

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 173
    move-object/from16 v20, v15

    goto :goto_5

    .line 170
    :cond_8
    iget-object v11, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x1

    move-object v12, v15

    move-object/from16 v20, v15

    move-wide/from16 v15, v16

    .line 170
    .end local v15    # "v":Landroid/widget/ImageView;
    .local v20, "v":Landroid/widget/ImageView;
    move/from16 v17, v19

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    .line 173
    :goto_5
    iget-object v11, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    move-object/from16 v12, v20

    invoke-virtual {v11, v12, v4, v10}, Lcom/oneplus/aod/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .end local v8    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v9    # "copyIcon":Lcom/oneplus/aod/AodNotificationIconView;
    .end local v18    # "isGrayScale":Z
    .end local v20    # "v":Landroid/widget/ImageView;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 175
    .end local v4    # "i":I
    .end local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move-object/from16 v6, p1

    return-void

    .line 113
    .end local v2    # "toShowCount":I
    .end local v3    # "iconSize":I
    .end local v5    # "maxIconAmounts":I
    .end local v7    # "showMore":Z
    :cond_a
    :goto_6
    move-object/from16 v6, p1

    iget-object v3, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v3, v0, Lcom/oneplus/aod/AodNotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method
