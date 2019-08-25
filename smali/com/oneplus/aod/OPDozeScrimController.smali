.class public Lcom/oneplus/aod/OPDozeScrimController;
.super Ljava/lang/Object;
.source "OPDozeScrimController.java"


# instance fields
.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mFullyPulsing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private final mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p3, "mainView"    # Landroid/view/ViewGroup;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/oneplus/aod/OPDozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPDozeScrimController$1;-><init>(Lcom/oneplus/aod/OPDozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 200
    new-instance v0, Lcom/oneplus/aod/OPDozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPDozeScrimController$2;-><init>(Lcom/oneplus/aod/OPDozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/oneplus/aod/OPDozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPDozeScrimController$3;-><init>(Lcom/oneplus/aod/OPDozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 101
    iput-object p2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 103
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "OPDozeScrimController"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OPDozeScrimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    iget v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OPDozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    invoke-direct {p0}, Lcom/oneplus/aod/OPDozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OPDozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/aod/OPDozeScrimController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mFullyPulsing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OPDozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    invoke-direct {p0}, Lcom/oneplus/aod/OPDozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object v0
.end method

.method private pulseFinished()V
    .locals 2

    .line 186
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    .line 187
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "OPDozeScrimController"

    const-string v1, "release pulse wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 198
    :cond_1
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    .line 178
    iget v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 181
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPulsing()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "OPDozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mFullyPulsing:Z

    .line 171
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    invoke-direct {p0}, Lcom/oneplus/aod/OPDozeScrimController;->pulseFinished()V

    .line 175
    :cond_0
    return-void
.end method

.method public extendPulse(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 160
    const-string v0, "OPDozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendPulse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iput p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    .line 163
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method public isPulsing()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .line 118
    if-eqz p1, :cond_3

    .line 122
    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 135
    iput p2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    .line 137
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    .line 138
    return-void

    .line 124
    :cond_1
    :goto_0
    const-string v0, "OPDozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse supressed. Dozing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " had callback? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 129
    return-void

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .line 109
    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 110
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    .line 111
    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/aod/OPDozeScrimController;->cancelPulsing()V

    .line 114
    :cond_1
    return-void
.end method
