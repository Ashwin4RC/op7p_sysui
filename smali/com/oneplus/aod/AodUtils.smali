.class public Lcom/oneplus/aod/AodUtils;
.super Ljava/lang/Object;
.source "AodUtils.java"


# static fields
.field public static final DEBUG_ONEPLUS:Z

.field public static KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

.field public static KEY_MOTION_AWAKE:Ljava/lang/String;

.field public static KEY_NOTIFICATION_WAKE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mIsAlwaysOnModeEnabled:Z

.field private static mIsNotificationWakeUpEnabled:Z

.field private static mMotionAwakeOn:Z

.field private static mSingleTapAwakeOn:Z

.field private static sDeviceTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "OPAodUtils"

    sput-object v0, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/aod/AodUtils;->DEBUG_ONEPLUS:Z

    .line 38
    const-string v0, "prox_wake_enabled"

    sput-object v0, Lcom/oneplus/aod/AodUtils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    .line 40
    const-string v0, "aod_display_mode"

    sput-object v0, Lcom/oneplus/aod/AodUtils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    .line 42
    const-string v0, "notification_wake_enabled"

    sput-object v0, Lcom/oneplus/aod/AodUtils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/oneplus/aod/AodUtils;->sDeviceTag:Ljava/lang/String;

    return-void
.end method

.method public static getDeviceTag()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 69
    invoke-static {p0, p1}, Lcom/oneplus/aod/AodUtils;->updateDozeSettings(Landroid/content/Context;I)V

    .line 70
    return-void
.end method

.method public static isAlwaysOnEnabled()Z
    .locals 3

    .line 132
    sget-object v0, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlwaysOnEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/AodUtils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string/jumbo v0, "sys.aod.localtest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "test":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    return v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isAlwaysOnEnabledWithTimer()Z
    .locals 4

    .line 145
    const-string/jumbo v0, "sys.aod.localtest.timer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "test":Ljava/lang/String;
    sget-object v1, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlwaysOnEnabledWithTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isMotionAwakeOn()Z
    .locals 3

    .line 110
    sget-object v0, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionAwakeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/AodUtils;->mMotionAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-boolean v0, Lcom/oneplus/aod/AodUtils;->mMotionAwakeOn:Z

    return v0
.end method

.method public static isNotificationLightEnabled()Z
    .locals 4

    .line 200
    const-string/jumbo v0, "sys.aod.notif_light_disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "test":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 202
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x79

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    return v1
.end method

.method public static isNotificationWakeUpEnabled()Z
    .locals 1

    .line 165
    sget-boolean v0, Lcom/oneplus/aod/AodUtils;->mIsNotificationWakeUpEnabled:Z

    return v0
.end method

.method public static isSingleTapEnabled()Z
    .locals 3

    .line 187
    sget-object v0, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSingleTapEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/AodUtils;->mSingleTapAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-boolean v0, Lcom/oneplus/aod/AodUtils;->mSingleTapAwakeOn:Z

    return v0
.end method

.method public static isSupportAlwaysOn()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public static updateAlwaysOnState(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 152
    sget-boolean v0, Lcom/oneplus/aod/AodUtils;->mMotionAwakeOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/aod/AodUtils;->isSupportAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/oneplus/aod/AodUtils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/aod/AodUtils;->mIsAlwaysOnModeEnabled:Z

    .line 154
    sget-boolean v0, Lcom/oneplus/aod/AodUtils;->mIsAlwaysOnModeEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_1

    :cond_1
    const-string v0, "1"

    .line 156
    .local v0, "properties":Ljava/lang/String;
    :goto_1
    :try_start_0
    const-string/jumbo v1, "sys.aod.disable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_2

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v1, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAlwaysOnState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/aod/AodUtils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public static updateDozeSettings(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 174
    invoke-static {p0, p1}, Lcom/oneplus/aod/AodUtils;->updateMotionAwakeState(Landroid/content/Context;I)V

    .line 176
    invoke-static {p0, p1}, Lcom/oneplus/aod/AodUtils;->updateSingleTapAwakeState(Landroid/content/Context;I)V

    .line 178
    invoke-static {p0, p1}, Lcom/oneplus/aod/AodUtils;->updateNotificationWakeState(Landroid/content/Context;I)V

    .line 179
    return-void
.end method

.method public static updateMotionAwakeState(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/aod/AodUtils;->mMotionAwakeOn:Z

    .line 116
    invoke-static {p0, p1}, Lcom/oneplus/aod/AodUtils;->updateAlwaysOnState(Landroid/content/Context;I)V

    .line 117
    sget-object v0, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMotionAwakeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/AodUtils;->mMotionAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public static updateNotificationWakeState(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/oneplus/aod/AodUtils;->mIsNotificationWakeUpEnabled:Z

    .line 170
    sget-object v0, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotificationWakeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/AodUtils;->mIsNotificationWakeUpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public static updateSingleTapAwakeState(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 125
    .local v0, "gestureValue":I
    and-int/lit16 v1, v0, 0x800

    shr-int/lit8 v1, v1, 0xb

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    sput-boolean v2, Lcom/oneplus/aod/AodUtils;->mSingleTapAwakeOn:Z

    .line 126
    sget-object v1, Lcom/oneplus/aod/AodUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSingleTapAwakeState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/aod/AodUtils;->mSingleTapAwakeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
