.class public Lcom/android/systemui/classifier/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final CLASSIFIER_SENSORS:[I

.field private static final COLLECTOR_SENSORS:[I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingManager;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerOffOnDown:Z

.field private mBouncerOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataCollector:Lcom/android/systemui/analytics/DataCollector;

.field private mEnforceBouncer:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

.field private mIsTouchScreen:Z

.field private mPendingWtf:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionActive:Z

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowingAod:Z

.field private mState:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x8
        0x5
        0xb
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOffOnDown:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mIsTouchScreen:Z

    .line 81
    iput v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 86
    new-instance v1, Lcom/android/systemui/classifier/FalsingManager$1;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/classifier/FalsingManager$1;-><init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    .line 95
    const-class v1, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/analytics/DataCollector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 99
    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 100
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 102
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "falsing_manager_enforce_bouncer"

    .line 103
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 102
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/classifier/FalsingManager;

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    return-void
.end method

.method private clearPendingWtf()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 260
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 114
    :cond_0
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$isFalseTouch$2(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "enabled"    # I
    .param p2, "screenOn"    # I
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "here"    # Ljava/lang/Throwable;

    .line 229
    const-string v0, "isFalseTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session did not become active after query for a false touch."

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mScreenOn="

    .line 233
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mState="

    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Look for warnings ~1000ms earlier to see root cause."

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1, p4}, Lcom/android/systemui/classifier/FalsingLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$registerSensors$1(Lcom/android/systemui/classifier/FalsingManager;Landroid/hardware/Sensor;)V
    .locals 2
    .param p1, "s"    # Landroid/hardware/Sensor;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 191
    return-void
.end method

.method public static synthetic lambda$sessionExitpoint$0(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 148
    return-void
.end method

.method private onSessionStart()V
    .locals 3

    .line 161
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "onSessionStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classifierEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 168
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    new-array v1, v1, [I

    const/16 v2, 0x75

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabledFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onFalsingSessionStarted()V

    .line 181
    :cond_3
    return-void
.end method

.method private registerSensors([I)V
    .locals 6
    .param p1, "sensors"    # [I

    .line 184
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 185
    .local v2, "sensorType":I
    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 186
    .local v3, "s":Landroid/hardware/Sensor;
    if-eqz v3, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;-><init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/hardware/Sensor;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 184
    .end local v2    # "sensorType":I
    .end local v3    # "s":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->onSessionStart()V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 146
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$y6A_bA-S5VQwPHuaVePl4zXiK1I;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$y6A_bA-S5VQwPHuaVePl4zXiK1I;-><init>(Lcom/android/systemui/classifier/FalsingManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 150
    :cond_1
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 2

    .line 123
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mShowingAod:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateConfiguration()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "falsing_manager_enforce_bouncer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 120
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 485
    const-string v0, "FALSING MANAGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    const-string v0, "classifierEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 487
    const-string v0, "mSessionActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 488
    const-string v0, "mBouncerOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 489
    const-string v0, "mState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    const-string v0, "mScreenOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 491
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 492
    return-void
.end method

.method public isClassiferEnabled()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFalseTouch()Z
    .locals 10

    .line 208
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    .line 214
    .local v0, "enabled":I
    iget-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    move v7, v1

    .line 215
    .local v7, "screenOn":I
    iget v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "state":Ljava/lang/String;
    new-instance v6, Ljava/lang/Throwable;

    const-string v1, "here"

    invoke-direct {v6, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 217
    .local v6, "here":Ljava/lang/Throwable;
    const-string v1, "isFalseTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is not active, yet there\'s a query for a false touch."

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled="

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mScreenOn="

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mState="

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Escalating to WTF if screen does not turn on soon."

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->wLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v9, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;

    move-object v1, v9

    move-object v2, p0

    move v3, v0

    move v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;-><init>(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V

    iput-object v9, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    .end local v0    # "enabled":I
    .end local v6    # "here":Ljava/lang/Throwable;
    .end local v7    # "screenOn":I
    .end local v8    # "state":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 245
    return v1

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mIsTouchScreen:Z

    if-nez v0, :cond_2

    .line 250
    return v1

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isFalseTouch()Z

    move-result v0

    return v0
.end method

.method public isReportingEnabled()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isReportingEnabled()Z

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 270
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/analytics/DataCollector;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 271
    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingAborted()V

    .line 451
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 2
    .param p1, "rightCorner"    # Z

    .line 438
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "onAffordanceSwipingStarted"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    if-eqz p1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingStarted(Z)V

    .line 447
    return-void
.end method

.method public onBouncerHidden()V
    .locals 3

    .line 349
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "onBouncerHidden"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_1

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 356
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerHidden()V

    .line 358
    :cond_1
    return-void
.end method

.method public onBouncerShown()V
    .locals 3

    .line 337
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "onBouncerShown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-nez v0, :cond_1

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 344
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerShown()V

    .line 346
    :cond_1
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraHintStarted()V

    .line 459
    return-void
.end method

.method public onCameraOn()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraOn()V

    .line 431
    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceHintStarted()V

    .line 463
    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceOn()V

    .line 435
    return-void
.end method

.method public onNotificationActive()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationActive()V

    .line 387
    return-void
.end method

.method public onNotificationDismissed()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDismissed()V

    .line 415
    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 3
    .param p1, "accepted"    # Z
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 390
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "onNotificationDoubleTap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " dy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " (px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDoubleTap()V

    .line 395
    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 2

    .line 418
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "onNotificatonStartDismissing"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDismissing()V

    .line 423
    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 2

    .line 402
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "onNotificatonStartDraggingDown"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDraggingDown()V

    .line 407
    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDismissing()V

    .line 427
    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDraggingDown()V

    .line 411
    return-void
.end method

.method public onQsDown()V
    .locals 2

    .line 361
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "onQsDown"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onQsDown()V

    .line 366
    return-void
.end method

.method public onScreenOff()V
    .locals 3

    .line 319
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "onScreenOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOff()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 326
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    .line 327
    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 3

    .line 307
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "onScreenOnFromTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOnFromTouch()V

    .line 316
    :cond_1
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 3

    .line 294
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "onScreenTurningOn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 300
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenTurningOn()V

    .line 304
    :cond_1
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 263
    .end local p1    # "event":Landroid/hardware/SensorEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/classifier/FalsingManager;
    throw p1
.end method

.method public onSucccessfulUnlock()V
    .locals 2

    .line 330
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "onSucccessfulUnlock"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onSucccessfulUnlock()V

    .line 334
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mIsTouchScreen:Z

    .line 470
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOffOnDown:Z

    .line 472
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_2

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/analytics/DataCollector;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 478
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOffOnDown:Z

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 482
    :cond_2
    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .line 373
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "onTrackingStarted"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    if-eqz p1, :cond_1

    .line 377
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 376
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStarted()V

    .line 379
    return-void
.end method

.method public onTrackingStopped()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStopped()V

    .line 383
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onUnlockHintStarted()V

    .line 455
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 498
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationExpanded()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->setNotificationExpanded()V

    .line 399
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->setQsExpanded(Z)V

    .line 370
    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0
    .param p1, "showingAod"    # Z

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mShowingAod:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateSessionActive()V

    .line 280
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 283
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "setStatusBarState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to="

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    iput p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateSessionActive()V

    .line 291
    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    return v0
.end method

.method public updateSessionActive()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    .line 158
    :goto_0
    return-void
.end method
