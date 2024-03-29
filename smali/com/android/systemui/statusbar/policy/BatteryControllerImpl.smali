.class public Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "BatteryControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAodPowerSave:Z

.field private mBatteryStyle:I

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mCharged:Z

.field protected mCharging:Z

.field private final mContext:Landroid/content/Context;

.field private mDemoMode:Z

.field private mFastchargeType:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasReceivedBattery:Z

.field protected mLevel:I

.field protected mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field protected mPowerSave:Z

.field private final mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

.field private mShowPercent:Z

.field private mTestmode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "BatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;Landroid/os/PowerManager;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 72
    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    .line 74
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    .line 76
    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->registerReceiver()V

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 51
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
    .param p1, "x1"    # I

    .line 51
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryStylechange()V

    return-void
.end method

.method private fireBatteryStylechange()V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 296
    .local v0, "N":I
    const-string v1, "BatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fireBatteryStylechange mShowPercent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFastchargeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_1

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "BatteryController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " fireBatteryStylechange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private firePowerSaveChanged()V
    .locals 5

    .line 283
    const-string v0, "BatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " firePowerSaveChanged mPowerSave:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 287
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerReceiver()V
    .locals 2

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->observe()V

    .line 104
    return-void
.end method

.method private setPowerSave(Z)V
    .locals 4
    .param p1, "powerSave"    # Z

    .line 254
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 255
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 259
    .local v0, "state":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    .line 261
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "BatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power save is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    if-eqz v3, :cond_1

    const-string v3, "on"

    goto :goto_0

    :cond_1
    const-string v3, "off"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->firePowerSaveChanged()V

    .line 263
    return-void
.end method

.method private updatePowerSave()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->setPowerSave(Z)V

    .line 251
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    .line 135
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(I)V

    .line 136
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    .line 139
    return-void

    .line 129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->registerReceiver()V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_0

    .line 321
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_5

    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "plugged":Ljava/lang/String;
    const-string v3, "powersave"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "powerSave":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 326
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v4, 0x64

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    .line 328
    :cond_2
    if-eqz v2, :cond_3

    .line 329
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    .line 331
    :cond_3
    if-eqz v3, :cond_4

    .line 332
    const-string/jumbo v1, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->firePowerSaveChanged()V

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryLevelChanged()V

    .line 337
    .end local v0    # "level":Ljava/lang/String;
    .end local v2    # "plugged":Ljava/lang/String;
    .end local v3    # "powerSave":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 108
    const-string v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 110
    const-string v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 112
    const-string v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 113
    const-string v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 115
    const-string v0, "  mShowPercent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    const-string v0, "  mBatteryStyle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 118
    return-void
.end method

.method protected fireBatteryLevelChanged()V
    .locals 7

    .line 267
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "BatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fireBatteryLevelChanged mLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PluggedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFastchargeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 272
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 275
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(I)V

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAodPowerSave()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    return v0
.end method

.method public isFastCharging(I)Z
    .locals 1
    .param p1, "fastChargeType"    # I

    .line 242
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 243
    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPowerSave()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    return v0
.end method

.method public isWarpCharging(I)Z
    .locals 1
    .param p1, "fastChargeType"    # I

    .line 234
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 152
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 154
    :cond_0
    const/4 v1, 0x0

    .line 155
    .local v1, "refreshOthers":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 157
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 158
    const/high16 v4, 0x42c80000    # 100.0f

    const-string v5, "level"

    .line 159
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const-string v5, "scale"

    const/16 v6, 0x64

    .line 160
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    .line 161
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    .line 163
    const-string/jumbo v4, "status"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 165
    .local v4, "status":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    .line 166
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    if-nez v5, :cond_5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v2

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    .line 168
    const-string v5, "fastcharge_status"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 169
    .local v5, "chargingstatus":I
    sget-boolean v6, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz v6, :cond_6

    .line 170
    move v2, v5

    goto :goto_4

    :cond_6
    if-lez v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    .line 173
    if-eqz v1, :cond_8

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryStylechange()V

    .line 177
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryLevelChanged()V

    .line 178
    .end local v1    # "refreshOthers":Z
    .end local v4    # "status":I
    .end local v5    # "chargingstatus":I
    goto :goto_5

    :cond_9
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_5

    .line 180
    :cond_a
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 181
    const-string v1, "mode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->setPowerSave(Z)V

    goto :goto_5

    .line 183
    :cond_b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    goto :goto_5

    .line 186
    :cond_c
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 187
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_d
    :goto_5
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public setPowerSaveMode(Z)V
    .locals 2
    .param p1, "powerSave"    # Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    .line 123
    return-void
.end method
