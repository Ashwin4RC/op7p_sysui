.class public Lcom/oneplus/aod/AodNotificationIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "AodNotificationIconView.java"


# instance fields
.field private mAlwaysScaleIcon:Z

.field private final mBlocked:Z

.field private mDensity:I

.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mNotification:Landroid/app/Notification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mBlocked:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mAlwaysScaleIcon:Z

    .line 117
    invoke-direct {p0}, Lcom/oneplus/aod/AodNotificationIconView;->updateIconScale()V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mDensity:I

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/AodNotificationIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "blocked"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean p4, p0, Lcom/oneplus/aod/AodNotificationIconView;->mBlocked:Z

    .line 67
    iput-object p2, p0, Lcom/oneplus/aod/AodNotificationIconView;->mSlot:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberPain:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberPain:Landroid/graphics/Paint;

    const v1, 0x7f080709

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/oneplus/aod/AodNotificationIconView;->setNotification(Landroid/app/Notification;)V

    .line 73
    invoke-direct {p0}, Lcom/oneplus/aod/AodNotificationIconView;->maybeUpdateIconScale()V

    .line 74
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodNotificationIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mDensity:I

    .line 76
    return-void
.end method

.method public static contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .line 340
    const-string v0, ""

    .line 342
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 343
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 353
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "StatusBarIconView"

    const-string v3, "Unable to recover builder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.appInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 349
    .local v2, "appInfo":Landroid/os/Parcelable;
    instance-of v3, v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 350
    move-object v3, v2

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "appInfo":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 356
    .local v1, "title":Ljava/lang/CharSequence;
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 358
    .local v2, "ticker":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    const-string v3, ""

    .line 361
    .local v3, "desc":Ljava/lang/CharSequence;
    :goto_1
    const v4, 0x7f11006d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusBarIcon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 225
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 226
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 230
    :cond_0
    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p0, v0}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 233
    .local v2, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706dd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 234
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 237
    .local v3, "scaleFactor":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 238
    return-object v1

    .line 241
    :cond_1
    new-instance v4, Lcom/oneplus/aod/ScalingDrawableWrapper;

    invoke-direct {v4, v1, v3}, Lcom/oneplus/aod/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v4
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 214
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodNotificationIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private maybeUpdateIconScale()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mAlwaysScaleIcon:Z

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/AodNotificationIconView;->updateIconScale()V

    .line 84
    :cond_1
    return-void
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .line 321
    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodNotificationIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "d":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodNotificationIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    .end local v0    # "d":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateDrawable(Z)Z
    .locals 5
    .param p1, "withClear"    # Z

    .line 195
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "StatusBarIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/AodNotificationIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/AodNotificationIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 202
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 203
    const-string v2, "StatusBarIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/AodNotificationIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v1

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/AodNotificationIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodNotificationIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    const/4 v1, 0x1

    return v1
.end method

.method private updateIconScale()V
    .locals 0

    .line 95
    return-void
.end method


# virtual methods
.method protected debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .line 282
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->debug(I)V

    .line 283
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/oneplus/aod/AodNotificationIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/AodNotificationIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/oneplus/aod/AodNotificationIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "a"    # Landroid/graphics/drawable/Icon;
    .param p2, "b"    # Landroid/graphics/drawable/Icon;

    .line 135
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    .line 143
    return v3

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 139
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 99
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 101
    .local v0, "density":I
    iget v1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 102
    iput v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mDensity:I

    .line 103
    invoke-direct {p0}, Lcom/oneplus/aod/AodNotificationIconView;->maybeUpdateIconScale()V

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->updateDrawable()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 272
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberText:Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 250
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 266
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onRtlPropertiesChanged(I)V

    .line 267
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->updateDrawable()V

    .line 268
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AnimatedImageView;->onSizeChanged(IIII)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->placeNumber()V

    .line 262
    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 12

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 291
    .local v0, "tooBig":I
    iget-object v1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v1, v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    goto :goto_0

    .line 295
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 296
    .local v1, "f":Ljava/text/NumberFormat;
    iget-object v2, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v2, v2, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "str":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberText:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->getWidth()I

    move-result v2

    .line 301
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->getHeight()I

    move-result v3

    .line 302
    .local v3, "h":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 303
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v1, v6, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 304
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    .line 305
    .local v5, "tw":I
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    .line 306
    .local v6, "th":I
    iget-object v7, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 307
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iget v8, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 308
    .local v7, "dw":I
    iget-object v8, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 309
    iget-object v8, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    .line 311
    :cond_1
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int v8, v2, v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int v9, v7, v9

    iget v10, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberX:I

    .line 312
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    .line 313
    .local v8, "dh":I
    iget-object v9, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 314
    iget-object v9, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    .line 316
    :cond_2
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int v10, v8, v10

    sub-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberY:I

    .line 317
    iget-object v9, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v10, v2, v7

    sub-int v11, v3, v8

    invoke-virtual {v9, v10, v11, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 318
    return-void
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 9
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 150
    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/aod/AodNotificationIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 151
    .local v0, "iconEquals":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 153
    .local v3, "levelEquals":Z
    :goto_1
    iget-object v4, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 155
    .local v4, "visibilityEquals":Z
    :goto_2
    iget-object v5, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v5, v6, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 157
    .local v5, "numberEquals":Z
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 158
    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/oneplus/aod/AodNotificationIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    if-nez v0, :cond_4

    .line 160
    invoke-direct {p0, v2}, Lcom/oneplus/aod/AodNotificationIconView;->updateDrawable(Z)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    .line 162
    :cond_4
    if-nez v3, :cond_5

    .line 163
    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v6}, Lcom/oneplus/aod/AodNotificationIconView;->setImageLevel(I)V

    .line 166
    :cond_5
    if-nez v5, :cond_8

    .line 167
    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v6, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 169
    iget-object v6, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0805a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 173
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->placeNumber()V

    goto :goto_4

    .line 175
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 176
    iput-object v6, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNumberText:Ljava/lang/String;

    .line 178
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/aod/AodNotificationIconView;->invalidate()V

    .line 180
    :cond_8
    if-nez v4, :cond_b

    .line 182
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_9

    const-string v6, "StatusBarIconView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set mSlot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/oneplus/aod/AodNotificationIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " icon.visible:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mBlocked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/oneplus/aod/AodNotificationIconView;->mBlocked:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_9
    iget-boolean v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/oneplus/aod/AodNotificationIconView;->mBlocked:Z

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {p0, v2}, Lcom/oneplus/aod/AodNotificationIconView;->setVisibility(I)V

    .line 187
    :cond_b
    return v1
.end method

.method public setNotification(Landroid/app/Notification;)V
    .locals 0
    .param p1, "notification"    # Landroid/app/Notification;

    .line 109
    iput-object p1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNotification:Landroid/app/Notification;

    .line 110
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodNotificationIconView;->setContentDescription(Landroid/app/Notification;)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarIconView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/AodNotificationIconView;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawable()V
    .locals 1

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/AodNotificationIconView;->updateDrawable(Z)Z

    .line 192
    return-void
.end method
