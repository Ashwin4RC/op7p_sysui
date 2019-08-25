.class public Lcom/android/systemui/qs/tiles/OPFiveGTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "OPFiveGTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;,
        Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;,
        Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIM_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mKeyguardCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;

.field private mPhoneState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->SIM_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 37
    const v0, 0x7f08075e

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 39
    new-instance v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;Lcom/android/systemui/qs/tiles/OPFiveGTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;

    .line 40
    new-instance v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;-><init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;Lcom/android/systemui/qs/tiles/OPFiveGTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mKeyguardCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;

    .line 41
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mPhoneState:I

    .line 216
    new-instance v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/OPFiveGTile$1;-><init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 47
    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/OPFiveGTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/OPFiveGTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/OPFiveGTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/OPFiveGTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile;

    .line 32
    iget v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mPhoneState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/OPFiveGTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mPhoneState:I

    return p1
.end method

.method private get5GStatus(I)Z
    .locals 8
    .param p1, "slot"    # I

    .line 148
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v1, :cond_0

    .line 149
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 151
    :cond_0
    const-string v1, "OPFiveGTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get5GStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "generalGetter"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 153
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 154
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v2, "b":Landroid/os/Bundle;
    const-string v4, "phone"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "get5gStatus"

    aput-object v5, v3, v0

    aput-object v2, v3, v6

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 157
    .local v3, "result":Landroid/os/Bundle;
    const-string v4, "get5gStatus"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 158
    .local v4, "fiveGStatus":Z
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    const-string v5, "OPFiveGTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get5GStatus: slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_1
    return v4

    .line 160
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v4    # "fiveGStatus":Z
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OPFiveGTile"

    const-string v3, "get5GStatus failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 163
    return v0
.end method

.method private getDdsPhoneId()I
    .locals 1

    .line 126
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method private setEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v0, :cond_0

    .line 132
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 134
    :cond_0
    const-string v0, "OPFiveGTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "generalSetter"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 136
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v1, "b":Landroid/os/Bundle;
    const-string v3, "phone"

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->getDdsPhoneId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v4, "enable5g"

    goto :goto_0

    :cond_1
    const-string v4, "disable5g"

    :goto_0
    aput-object v4, v2, v5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v2, v6

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "b":Landroid/os/Bundle;
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPFiveGTile"

    const-string/jumbo v2, "setEnabled failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->SIM_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 122
    const/16 v0, 0x7d5

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11020c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->getDdsPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->get5GStatus(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->setEnabled(Z)V

    .line 81
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mKeyguardCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oem.intent.action.5gchange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mKeyguardCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 95
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    .line 96
    .local v0, "cb":Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;
    if-nez v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->access$200(Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    move-result-object v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 101
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;->noSim:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mPhoneState:I

    if-eqz v2, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->getDdsPhoneId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->get5GStatus(I)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 105
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_2

    .line 102
    :cond_3
    :goto_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 107
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mContext:Landroid/content/Context;

    const v2, 0x7f11020c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 108
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 109
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 110
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 112
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 113
    const-string v1, "OPFiveGTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState: noSim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;->noSim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", airplaneMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;->airplaneModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", phoneState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile;->mPhoneState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_4
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x76

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 56
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
