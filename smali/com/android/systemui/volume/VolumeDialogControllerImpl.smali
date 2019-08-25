.class public Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/VolumeDialogController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;
    }
.end annotation


# static fields
.field private static final SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final STREAMS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudio:Landroid/media/AudioManager;

.field private mAudioService:Landroid/media/IAudioService;

.field protected mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field private mConnectedDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDeviceCallback:Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;

.field private final mHasVibrator:Z

.field private mLastToggledRingerOn:J

.field private mLock:Ljava/lang/Object;

.field private final mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

.field protected final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

.field private final mReceiver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

.field private mShowA11yStream:Z

.field private mShowDndTile:Z

.field private mShowSafetyWarning:Z

.field private mShowVolumeDialog:Z

.field private final mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mThreeKeySatus:I

.field private mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mVibrateWhenMute:I

.field private final mVibrator:Landroid/os/Vibrator;

.field protected final mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

.field private final mWorkerThread:Landroid/os/HandlerThread;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    const-class v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 106
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    .line 111
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110604

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110605

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110606

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110607

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110603

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110608

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110609

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11060a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11060b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11060c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11060d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mReceiver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    .line 134
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 135
    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 136
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 145
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceCallback:Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLock:Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowDndTile:Z

    .line 157
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 159
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrateWhenMute:I

    .line 160
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mZenMode:I

    .line 161
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mThreeKeySatus:I

    .line 162
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 182
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 184
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v2, v4, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 185
    new-instance v2, Landroid/os/HandlerThread;

    const-class v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 188
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    .line 190
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 191
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 192
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    .line 193
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->init()V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mReceiver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->init()V

    .line 195
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    .line 197
    const-string v2, "audio"

    .line 198
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 197
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStatusBar()V

    .line 201
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 202
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v2

    .line 203
    .local v2, "accessibilityVolumeStreamActive":Z
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    if-eqz v2, :cond_1

    .line 204
    goto :goto_1

    .line 205
    :cond_1
    nop

    .line 203
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->setA11yMode(I)V

    .line 206
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onDismissRequestedW(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onGetStateW()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetRingerModeW(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetZenModeW(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetExitConditionW(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetStreamMuteW(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetStreamVolumeW(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetActiveStreamW(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # Z

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onNotifyVisibleW(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onUserActivityW()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrateWhenMute:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onShowSafetyWarningW(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeConfigW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeExternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mConnectedDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    return-object v0
.end method

.method private checkRoutedToBluetoothW(I)Z
    .locals 3
    .param p1, "stream"    # I

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "changed":Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 438
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x380

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 442
    .local v1, "routedToBluetooth":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 444
    .end local v1    # "routedToBluetooth":Z
    :cond_1
    return v0
.end method

.method private static getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 606
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 607
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 608
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 611
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "rt":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_1

    .line 613
    return-object v3

    .line 615
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "rt":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    .line 616
    :goto_0
    return-object v1
.end method

.method private static isLogWorthy(I)Z
    .locals 1
    .param p0, "stream"    # I

    .line 558
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 567
    const/4 v0, 0x0

    return v0

    .line 565
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isRinger(I)Z
    .locals 1
    .param p0, "stream"    # I

    .line 584
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

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

.method private onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    .line 432
    return-void
.end method

.method private onDismissRequestedW(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 728
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    .line 729
    return-void
.end method

.method private onGetStateW()V
    .locals 5

    .line 518
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 519
    .local v1, "stream":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 520
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMinVolume(I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 521
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMaxVolume(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 522
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    .line 523
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    .line 524
    .local v2, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    .line 525
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 526
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 527
    .end local v1    # "stream":I
    .end local v2    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeExternalW(I)Z

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    .line 531
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeConfigW()Z

    .line 535
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 536
    return-void
.end method

.method private onNotifyVisibleW(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 406
    if-nez p1, :cond_1

    .line 407
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 411
    :cond_1
    return-void
.end method

.method private onSetActiveStreamW(I)V
    .locals 3
    .param p1, "stream"    # I

    .line 712
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v0

    .line 713
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 716
    :cond_0
    return-void
.end method

.method private onSetExitConditionW(Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .line 719
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private onSetRingerModeW(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "external"    # Z

    .line 690
    if-eqz p2, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 695
    :goto_0
    return-void
.end method

.method private onSetStreamMuteW(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "mute"    # Z

    .line 698
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    const/16 v1, -0x64

    goto :goto_0

    .line 699
    :cond_0
    const/16 v1, 0x64

    :goto_0
    const/4 v2, 0x0

    .line 698
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 700
    return-void
.end method

.method private onSetStreamVolumeW(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .line 703
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->setStreamVolume(II)V

    .line 706
    return-void

    .line 708
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setAudioManagerStreamVolume(III)V

    .line 709
    return-void
.end method

.method private onSetZenModeW(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 723
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetZenModeW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method private onShowSafetyWarningW(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 423
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowSafetyWarningW flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShowSafetyWarning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSafetyWarning(I)V

    .line 428
    :cond_0
    return-void
.end method

.method private onUserActivityW()V
    .locals 1

    .line 414
    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;->onUserActivity()V

    .line 418
    :cond_0
    monitor-exit p0

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private playTouchFeedback()V
    .locals 4

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 384
    :cond_0
    :goto_0
    return-void
.end method

.method private shouldShowUI(I)Z
    .locals 4
    .param p1, "flags"    # I

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStatusBar()V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 458
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getWakefulnessState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 459
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getWakefulnessState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 461
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 463
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 457
    :goto_0
    move v1, v2

    goto :goto_1

    .line 463
    :cond_2
    nop

    .line 457
    :goto_1
    return v1
.end method

.method private streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 2
    .param p1, "stream"    # I

    .line 509
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 510
    .local v0, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-nez v0, :cond_0

    .line 511
    new-instance v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {v1}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;-><init>()V

    move-object v0, v1

    .line 512
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    :cond_0
    return-object v0
.end method

.method private updateActiveStreamW(I)Z
    .locals 6
    .param p1, "activeStream"    # I

    .line 498
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 500
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 501
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateActiveStreamW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 503
    .local v0, "s":I
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceVolumeControlStream "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 505
    return v3
.end method

.method private updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "effectsSuppressor"    # Landroid/content/ComponentName;

    .line 597
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 599
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0xe

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 602
    return v4
.end method

.method private updateRingerModeExternalW(I)Z
    .locals 6
    .param p1, "rm"    # I

    .line 671
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    .line 673
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0xc

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 674
    return v3
.end method

.method private updateRingerModeInternalW(I)Z
    .locals 6
    .param p1, "rm"    # I

    .line 678
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 680
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0xb

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->playTouchFeedback()V

    .line 686
    :cond_1
    return v3
.end method

.method private updateStatusBar()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 451
    :cond_0
    return-void
.end method

.method private updateStreamLevelW(II)Z
    .locals 7
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .line 548
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    .line 549
    .local v0, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    return v2

    .line 550
    :cond_0
    iput p2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 551
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isLogWorthy(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 554
    :cond_1
    return v3
.end method

.method private updateStreamMuteW(IZ)Z
    .locals 7
    .param p1, "stream"    # I
    .param p2, "muted"    # Z

    .line 571
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    .line 572
    .local v0, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    return v2

    .line 573
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 574
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isLogWorthy(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v4, 0xf

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 577
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isRinger(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    .line 580
    :cond_2
    return v3
.end method

.method private updateStreamRoutedToBluetoothW(IZ)Z
    .locals 4
    .param p1, "stream"    # I
    .param p2, "routedToBluetooth"    # Z

    .line 539
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    .line 540
    .local v0, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v1, p2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 541
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 542
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStreamRoutedToBluetoothW stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " routedToBluetooth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private updateZenConfig()Z
    .locals 12

    .line 646
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 647
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 649
    .local v1, "disallowAlarms":Z
    :goto_0
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 651
    .local v4, "disallowMedia":Z
    :goto_1
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 653
    .local v5, "disallowSystem":Z
    :goto_2
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 654
    .local v6, "disallowRinger":Z
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-ne v7, v1, :cond_3

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-ne v7, v4, :cond_3

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-ne v7, v6, :cond_3

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-ne v7, v5, :cond_3

    .line 658
    return v2

    .line 660
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-boolean v1, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 661
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-boolean v4, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 662
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-boolean v5, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 663
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-boolean v6, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 664
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v8, 0x11

    new-array v9, v3, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disallowAlarms="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " disallowMedia="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " disallowSystem="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " disallowRinger="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7, v8, v9}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 667
    return v3
.end method

.method private updateZenModeConfigW()Z
    .locals 2

    .line 589
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 590
    .local v0, "zenModeConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-object v0, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    .line 592
    const/4 v1, 0x1

    return v1
.end method

.method private updateZenModeW()Z
    .locals 8

    .line 621
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mThreeKeySatus:I

    .line 624
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 626
    .local v0, "zen":I
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s updateZenModeW zen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " threeKeySatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mThreeKeySatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mVibrateWhenMute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrateWhenMute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    .line 630
    .local v1, "statusbar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v1, :cond_0

    .line 631
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mThreeKeySatus:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->onThreeKeyChanged(I)V

    .line 636
    :cond_0
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mThreeKeySatus:I

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrateWhenMute:I

    invoke-static {v0, v3, v4}, Lcom/android/systemui/volume/Util;->getCorrectZenMode(III)I

    move-result v0

    .line 638
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e updateZenModeW zen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v3, v0, :cond_1

    return v2

    .line 640
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput v0, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 641
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v4, 0xd

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v4, v6}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 642
    return v5
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 305
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->add(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    .line 307
    return-void
.end method

.method protected createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/systemui/volume/MediaSessions$Callbacks;

    .line 273
    new-instance v0, Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    .line 220
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    const-string v0, "  mDestroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 293
    const-string v0, "  mVolumePolicy: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 294
    const-string v0, "  mState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    const-string v0, "  mShowDndTile: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowDndTile:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 296
    const-string v0, "  mHasVibrator: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 297
    const-string v0, "  mRemoteStreams: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->access$600(Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 297
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 299
    const-string v0, "  mShowA11yStream: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 300
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/MediaSessions;->dump(Ljava/io/PrintWriter;)V

    .line 302
    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    return-object v0
.end method

.method protected getAudioManagerStreamMaxVolume(I)I
    .locals 1
    .param p1, "stream"    # I

    .line 240
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method protected getAudioManagerStreamMinVolume(I)I
    .locals 1
    .param p1, "stream"    # I

    .line 244
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    return v0
.end method

.method protected getAudioManagerStreamVolume(I)I
    .locals 1
    .param p1, "stream"    # I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getState()V
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->sendEmptyMessage(I)Z

    .line 323
    return-void
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public hasVibrator()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    return v0
.end method

.method public notifyVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 326
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 328
    return-void
.end method

.method onVolumeChangedW(II)Z
    .locals 12
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .line 467
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result v0

    .line 468
    .local v0, "showUI":Z
    and-int/lit16 v1, p2, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 469
    .local v1, "fromKey":Z
    :goto_0
    and-int/lit16 v4, p2, 0x800

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 470
    .local v4, "showVibrateHint":Z
    :goto_1
    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 472
    .local v5, "showSilentHint":Z
    :goto_2
    const/4 v6, 0x0

    .line 473
    .local v6, "changed":Z
    if-eqz v0, :cond_3

    .line 474
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v7

    or-int/2addr v6, v7

    .line 476
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v7

    .line 477
    .local v7, "lastAudibleStreamVolume":I
    invoke-direct {p0, p1, v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result v8

    or-int/2addr v6, v8

    .line 478
    if-eqz v0, :cond_4

    const/4 v8, 0x3

    goto :goto_3

    :cond_4
    move v8, p1

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v8

    or-int/2addr v6, v8

    .line 479
    if-eqz v6, :cond_5

    .line 480
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v8, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 482
    :cond_5
    if-eqz v0, :cond_6

    .line 483
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v8, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(I)V

    .line 485
    :cond_6
    if-eqz v4, :cond_7

    .line 486
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowVibrateHint()V

    .line 488
    :cond_7
    if-eqz v5, :cond_8

    .line 489
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSilentHint()V

    .line 491
    :cond_8
    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    .line 492
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x4

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v3

    invoke-static {v8, v9, v10}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 494
    :cond_9
    return v6
.end method

.method public register()V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumeController()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowDndTile:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->showDndTile(Z)V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v0}, Lcom/android/systemui/volume/MediaSessions;->init()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "No access to media sessions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceCallback:Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 259
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 317
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->remove(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 318
    return-void
.end method

.method public scheduleTouchFeedback()V
    .locals 2

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    .line 374
    return-void
.end method

.method public setActiveStream(I)V
    .locals 3
    .param p1, "stream"    # I

    .line 362
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    return-void
.end method

.method protected setAudioManagerStreamVolume(III)V
    .locals 1
    .param p1, "stream"    # I
    .param p2, "level"    # I
    .param p3, "flag"    # I

    .line 232
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 233
    return-void
.end method

.method public setEnableDialogs(ZZ)V
    .locals 0
    .param p1, "volumeUi"    # Z
    .param p2, "safetyWarning"    # Z

    .line 367
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 368
    iput-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    .line 369
    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "external"    # Z

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    return-void
.end method

.method public setStreamVolume(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    return-void
.end method

.method public setUserActivityListener(Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    monitor-enter p0

    .line 312
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    .line 313
    monitor-exit p0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setVolumeController()V
    .locals 3

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 229
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set the volume controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .line 262
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "No volume policy api"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :goto_0
    return-void
.end method

.method public showDndTile(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 732
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showDndTile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 734
    return-void
.end method

.method public userActivity()V
    .locals 2

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->sendEmptyMessage(I)Z

    .line 334
    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 4
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 387
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    if-eqz v0, :cond_1

    .line 389
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x70

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v0, v0, [I

    const/16 v1, 0x8d

    aput v1, v0, v3

    .line 390
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 397
    :cond_1
    :goto_0
    return-void
.end method
