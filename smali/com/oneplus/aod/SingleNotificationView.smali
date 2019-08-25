.class public Lcom/oneplus/aod/SingleNotificationView;
.super Landroid/widget/LinearLayout;
.source "SingleNotificationView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHeader:Landroid/widget/TextView;

.field private mHeaderContainer:Landroid/widget/LinearLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

.field private mNotificationViewCustom:Landroid/widget/LinearLayout;

.field private mNotificationViewDefault:Landroid/widget/LinearLayout;

.field private mSmallText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const-string v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private resolveAppName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 6
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 237
    .local v1, "n":Landroid/app/Notification;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 238
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 248
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "SingleNotificationView"

    const-string v4, "Unable to recover builder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.appInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 244
    .local v3, "appInfo":Landroid/os/Parcelable;
    instance-of v4, v3, Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 245
    move-object v4, v3

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 245
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "appInfo":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private showCustomNotification(ZLandroid/view/View;)V
    .locals 3
    .param p1, "isCustom"    # Z
    .param p2, "contentView"    # Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 222
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    :goto_0
    return-void
.end method

.method private updateViewInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 20
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v1, p0

    .line 113
    move-object/from16 v2, p1

    const-string v0, "SingleNotificationView"

    const-string/jumbo v3, "updateViewInternal"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 115
    .local v3, "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v4, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 116
    .local v4, "extras":Landroid/os/Bundle;
    const-string v0, ""

    .line 117
    .local v0, "title":Ljava/lang/CharSequence;
    const-string v5, ""

    .line 118
    .local v5, "smallText":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 120
    .local v6, "icon":Landroid/graphics/drawable/Icon;
    const-string v7, "android.title"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 121
    .end local v0    # "title":Ljava/lang/CharSequence;
    .local v7, "title":Ljava/lang/CharSequence;
    const-string v0, "android.text"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 123
    iget-object v8, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 125
    .local v8, "contentView":Landroid/widget/RemoteViews;
    const/4 v9, 0x0

    .line 126
    .local v9, "contentViewLocal":Landroid/view/View;
    const/4 v10, 0x0

    .line 128
    .local v10, "isCustom":Z
    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    .line 131
    :try_start_0
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v3, v0}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-virtual {v8, v0, v11, v11}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    .line 136
    const v0, 0x1020426

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 138
    if-eqz v10, :cond_1

    .line 139
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    iget-object v14, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v9, v14}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 141
    .local v0, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-direct {v1, v10, v9}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    .line 142
    return-void

    .line 144
    .end local v0    # "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_1
    invoke-direct {v1, v10, v11}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v14, "SingleNotificationView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception e = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 151
    .local v0, "color":I
    if-nez v0, :cond_2

    iget-object v12, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x106000b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    goto :goto_2

    :cond_2
    const/16 v12, 0x19

    invoke-static {v0, v12}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v12

    .line 152
    .local v12, "headerColor":I
    :goto_2
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldHideSensitive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v14

    .line 153
    .local v14, "shouldHideSensitive":Z
    const-string v15, "SingleNotificationView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateViewInternal: custom="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", hideSensitivie="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isLock="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLock()Z

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", color=0x"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", headerColor=0x"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 153
    invoke-static {v15, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v11, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 157
    invoke-direct {v1, v3}, Lcom/oneplus/aod/SingleNotificationView;->resolveAppName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "appName":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 159
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .end local v11    # "appName":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 163
    :cond_4
    const-string v11, "SingleNotificationView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mHeader is null"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_3
    iget-object v11, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    if-eqz v11, :cond_8

    if-eqz v6, :cond_8

    .line 167
    iget-object v11, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 169
    .local v11, "d":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_5

    .line 170
    const-string v13, "SingleNotificationView"

    const-string v15, "drawable = null"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_5
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 176
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    if-eqz v0, :cond_6

    .line 178
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 181
    :cond_6
    if-eqz v6, :cond_7

    .line 182
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 184
    :cond_7
    const-string v13, "SingleNotificationView"

    const-string v15, "private layout icon null"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v11    # "d":Landroid/graphics/drawable/Drawable;
    :goto_4
    goto :goto_5

    .line 187
    :cond_8
    const-string v11, "SingleNotificationView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mIcon and icon is null"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_5
    if-eqz v14, :cond_9

    .line 191
    iget-object v13, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    iget-object v15, v1, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v18, v0

    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/Object;

    .line 192
    .end local v0    # "color":I
    .local v18, "color":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v0, v16

    const/high16 v2, 0x50b0000

    invoke-virtual {v15, v2, v11, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    return-void

    .line 198
    .end local v18    # "color":I
    .restart local v0    # "color":I
    :cond_9
    move/from16 v18, v0

    .line 198
    .end local v0    # "color":I
    .restart local v18    # "color":I
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto :goto_8

    .line 201
    :cond_a
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    if-eqz v7, :cond_b

    .line 205
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 208
    :cond_b
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :goto_6
    if-eqz v5, :cond_c

    .line 212
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 215
    :cond_c
    iget-object v0, v1, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    const-string v0, "SingleNotificationView"

    const-string/jumbo v2, "small text is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_7
    return-void

    .line 199
    :cond_d
    :goto_8
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

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

    .line 91
    .local v0, "isRTL":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 92
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iget-object v4, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    iget-object v4, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v4, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    .line 97
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    const v2, 0x7f12054f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 99
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x3

    const/4 v4, 0x4

    if-eqz v0, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 100
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f120551

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 103
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v4

    nop

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 104
    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const v2, 0x7f120550

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 105
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 77
    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0a03ee

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a02c2

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    .line 84
    return-void
.end method

.method public onNotificationHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 108
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    .line 109
    invoke-direct {p0, p1}, Lcom/oneplus/aod/SingleNotificationView;->updateViewInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 110
    return-void
.end method
