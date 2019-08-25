.class public Lcom/android/systemui/statusbar/NotificationEntryManager;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;,
        Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;
    }
.end annotation


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mCachedNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field protected mDisableNotificationAlerts:Z

.field protected final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected final mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field protected final mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mHeadsUpObserver:Landroid/database/ContentObserver;

.field private final mKeysKeptForRemoteInput:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field protected mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field protected final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field protected final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field protected final mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field protected final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private final mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

.field private mOnAppOpsClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

.field protected final mPendingNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field protected final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

.field private final mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field protected mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field protected final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mUseHeadsUp:Z

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationEntryManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    .line 108
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    .line 112
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 113
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 114
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 115
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 116
    const-class v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 117
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 118
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 119
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 120
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 121
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 122
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 123
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 124
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 125
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 126
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 127
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 128
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    .line 129
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 130
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    .line 131
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 132
    const-class v0, Lcom/android/systemui/statusbar/SmartReplyController;

    .line 133
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    .line 153
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    .line 157
    const-class v0, Lcom/oneplus/notification/OPNotificationController;

    .line 158
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OPNotificationController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    .line 205
    new-instance v0, Lcom/android/systemui/statusbar/NotificationEntryManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationEntryManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPowerManager:Landroid/os/PowerManager;

    .line 263
    const-string/jumbo v0, "statusbar"

    .line 264
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 265
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {v0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setPendingEntries(Ljava/util/HashMap;)V

    .line 271
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    .line 273
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    .line 275
    return-void
.end method

.method private abortExistingInflation(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 466
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 470
    .local v0, "addedEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 473
    :cond_1
    return-void
.end method

.method private addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 10
    .param p1, "shadeEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 484
    .local v0, "isHeadsUped":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 487
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_3

    .line 491
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)I

    move-result v4

    .line 493
    .local v4, "reason":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/oneplus/notification/OPNotificationController;->shouldShowSimpleHeadsUp(ILjava/lang/String;)I

    move-result v5

    .line 494
    .local v5, "simpleHeadsUpReason":I
    if-eq v5, v2, :cond_4

    .line 496
    if-ne v5, v3, :cond_2

    .line 497
    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 498
    .local v2, "type":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 499
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 498
    move v1, v3

    goto :goto_2

    .line 499
    :cond_3
    nop

    .line 498
    :goto_2
    invoke-virtual {v6, v7, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->show(Landroid/service/notification/StatusBarNotification;ZI)V

    .line 504
    .end local v2    # "type":I
    .end local v4    # "reason":I
    .end local v5    # "simpleHeadsUpReason":I
    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 506
    return-void
.end method

.method private addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 844
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 880
    .local v1, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v2

    .line 883
    .local v2, "reason":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->checkToLaunchFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;IZ)V

    .line 885
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 888
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v4

    .line 887
    invoke-interface {v3, p1, v4}, Lcom/android/systemui/ForegroundServiceController;->addNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 890
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onPendingEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 892
    return-void
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .line 1030
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

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

.method private bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 374
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V

    .line 378
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationLongClicker()Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v0, p4}, Lcom/android/systemui/statusbar/NotificationListContainer;->bindRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->bindRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 388
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "pkg":Ljava/lang/String;
    move-object v1, v0

    .line 391
    .local v1, "appname":Ljava/lang/String;
    const/16 v2, 0x2200

    :try_start_0
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 394
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 399
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 397
    :catch_0
    move-exception v2

    .line 400
    :goto_0
    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    .line 401
    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$B910qzQ2SainzEDZyF1XXAwFJdE;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$B910qzQ2SainzEDZyF1XXAwFJdE;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    .line 403
    const/high16 v2, 0x60000

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 404
    sget-boolean v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v2, :cond_1

    .line 405
    const/high16 v2, 0x20000

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppOpsOnClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;)V

    .line 410
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onBindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 411
    return-void
.end method

.method private checkToLaunchFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;IZ)V
    .locals 7
    .param p1, "shadeEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "reason"    # I
    .param p3, "isUpdate"    # Z

    .line 897
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 898
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.dialer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reCheckToLaunchFullScreenIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 901
    .local v2, "bypass":Z
    :goto_0
    if-nez v2, :cond_1

    .line 904
    return-void

    .line 909
    .end local v2    # "bypass":Z
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    move v0, v1

    nop

    .line 911
    .local v0, "isHeadsUped":Z
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 913
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    .line 914
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sent with fullscreen intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_3
    if-nez v0, :cond_11

    iget-object v3, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_11

    .line 918
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 921
    const-string v1, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Fullscreen intent: suppressed by DND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    if-eqz p3, :cond_4

    const-string/jumbo v5, "update"

    goto :goto_1

    :cond_4
    const-string v5, "add"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 921
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 924
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    .line 927
    const-string v1, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Fullscreen intent: not important enough: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    if-eqz p3, :cond_6

    const-string/jumbo v5, "update"

    goto :goto_2

    :cond_6
    const-string v5, "add"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 927
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 931
    :cond_7
    if-ne p2, v5, :cond_9

    .line 933
    const-string v1, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Fullscreen intent: suppressed by esport mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    if-eqz p3, :cond_8

    const-string/jumbo v5, "update"

    goto :goto_3

    :cond_8
    const-string v5, "add"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 933
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 938
    :cond_9
    if-ne p2, v1, :cond_b

    .line 940
    const-string v1, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Fullscreen intent: suppressed by game mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    if-eqz p3, :cond_a

    const-string/jumbo v5, "update"

    goto :goto_4

    :cond_a
    const-string v5, "add"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 940
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 945
    :cond_b
    const/4 v4, 0x3

    if-ne p2, v4, :cond_d

    .line 947
    const-string v1, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Fullscreen intent: suppressed by driving mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    if-eqz p3, :cond_c

    const-string/jumbo v5, "update"

    goto :goto_5

    :cond_c
    const-string v5, "add"

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 947
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 964
    :cond_d
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCustomDozing()Z

    move-result v4

    if-nez v4, :cond_e

    .line 965
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->awakenDreamsAsync()V

    .line 971
    :cond_e
    const-string v4, "NotificationEntryMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification has fullScreenIntent; sending fullScreenIntent from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    if-eqz p3, :cond_f

    const-string/jumbo v6, "update"

    goto :goto_6

    :cond_f
    const-string v6, "add"

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 971
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const v4, 0x8ca2

    :try_start_0
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 976
    iget-object v4, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V

    .line 977
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V

    .line 979
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 980
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v5, "note_fullscreen"

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    goto :goto_7

    .line 984
    :catch_0
    move-exception v1

    .line 988
    .end local v3    # "key":Ljava/lang/String;
    :cond_11
    :goto_7
    return-void
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 728
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 729
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    return-void

    .line 735
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 736
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 737
    .local v1, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 738
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 739
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    .line 742
    goto :goto_1

    .line 744
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setKeepInParent(Z)V

    .line 747
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    .line 737
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    .end local v1    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 357
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 356
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 359
    .local v0, "pmUser":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 360
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 362
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    .line 364
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/RowInflaterTask;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v2, v3, p2, p1, v4}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;)V

    .line 370
    :goto_0
    return-void
.end method

.method public static synthetic lambda$bindRow$2(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 402
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic lambda$inflateViews$1(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 366
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 367
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 368
    return-void
.end method

.method public static synthetic lambda$logNotificationExpansion$0(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 339
    :goto_0
    return-void
.end method

.method private removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 707
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 708
    const-string v1, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v1, 0x0

    return-object v1

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 712
    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    .line 713
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v1
.end method

.method private shouldKeepForRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 692
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 693
    return v0

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 696
    return v2

    .line 698
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustSentRemoteInput()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 699
    return v2

    .line 701
    :cond_2
    return v0
.end method

.method private shouldKeepForSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 688
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->isSendingSmartReply(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method

.method private updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 9
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 1038
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1041
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v1, :cond_0

    .line 1042
    return-void

    .line 1044
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1045
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onUpdateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1046
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1048
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getKeyToRemoveOnGutsClosed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1049
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationGutsManager;->setKeyToRemoveOnGutsClosed(Ljava/lang/String;)V

    .line 1050
    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification that was kept for guts was updated. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 1054
    .local v2, "n":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1056
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1057
    .local v3, "oldNotification":Landroid/service/notification/StatusBarNotification;
    iput-object p1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1058
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 1060
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 1061
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    .line 1063
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 1064
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v5

    .line 1063
    invoke-interface {v4, p1, v5}, Lcom/android/systemui/ForegroundServiceController;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 1067
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)I

    move-result v4

    .line 1068
    .local v4, "reason":I
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 1070
    .local v5, "shouldPeek":Z
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v7

    .line 1072
    .local v7, "alertAgain":Z
    invoke-virtual {p0, v0, v1, v5, v7}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    .line 1073
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 1075
    invoke-direct {p0, v1, v4, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager;->checkToLaunchFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;IZ)V

    .line 1078
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1081
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v6, v8}, Lcom/android/systemui/statusbar/NotificationListContainer;->snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1090
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 1091
    return-void
.end method


# virtual methods
.method public addKeyKeptForRemoteInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1302
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_0
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1014
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Lcom/android/systemui/statusbar/notification/InflationException;
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    .line 1018
    .end local v0    # "e":Lcom/android/systemui/statusbar/notification/InflationException;
    :goto_0
    return-void
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 820
    if-nez p1, :cond_0

    .line 821
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 825
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->tagForeground(Landroid/service/notification/StatusBarNotification;)V

    .line 826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 827
    return-void
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 834
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 835
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 838
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    .line 839
    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 245
    const-string v0, "NotificationEntryManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const-string v0, "  mPendingNotifications="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 251
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 252
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_0

    .line 254
    :cond_1
    :goto_1
    const-string v0, "  mUseHeadsUp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 256
    const-string v0, "  mKeysKeptForRemoteInput: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public getLatestRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public getNotificationLongClicker()Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$c60ntPGLw0RNAFWdGf1n1pJttuQ;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$c60ntPGLw0RNAFWdGf1n1pJttuQ;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;)V

    return-object v1
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 477
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 10
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    .line 457
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    .line 456
    move-object v8, p2

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 461
    :goto_0
    return-void
.end method

.method public hideSimpleHeadsUps()V
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide()V

    .line 1311
    return-void
.end method

.method protected isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationKeptForRemoteInput(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 340
    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V

    .line 515
    const-string v0, "NotificationEntryMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsyncInflationFinished, update lastFullScreenIntentLaunchTime from cached entry, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 525
    .local v0, "isNew":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 526
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_1

    .line 527
    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasLowPriorityStateUpdated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 528
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onLowPriorityUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 529
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    .line 531
    :cond_4
    :goto_1
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    .line 532
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .line 232
    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getLatestRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setLatestRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 241
    :cond_1
    :goto_0
    return-void
.end method

.method public onReorderingAllowed()V
    .locals 0

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 345
    return-void
.end method

.method public performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 18
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    move-object/from16 v1, p0

    .line 414
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v3

    .line 415
    .local v3, "rank":I
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 416
    .local v4, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v5

    .line 418
    .local v5, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    .line 420
    .local v14, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 425
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0, v2, v14}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPerformRemoveNotification(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 427
    .local v15, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v16

    .line 428
    .local v16, "tag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v17

    .line 429
    .local v17, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v10

    .line 431
    .local v10, "userId":I
    const/4 v0, 0x3

    .line 432
    .local v0, "dismissalSurface":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 433
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->hasPulsingNotifications()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 435
    const/4 v0, 0x2

    .line 437
    :cond_2
    :goto_0
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move v12, v0

    move-object v13, v5

    invoke-interface/range {v6 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v0    # "dismissalSurface":I
    goto :goto_1

    .line 440
    :catch_0
    move-exception v0

    .line 444
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onPerformRemoveNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 445
    return-void
.end method

.method rebuildNotificationForCanceledSmartReplies(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/service/notification/StatusBarNotification;
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 683
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;
    .locals 19
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remoteInputText"    # Ljava/lang/CharSequence;
    .param p3, "showSpinner"    # Z

    .line 646
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 648
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    .line 649
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 650
    .local v3, "b":Landroid/app/Notification$Builder;
    const/4 v4, 0x1

    if-eqz p2, :cond_1

    .line 651
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.remoteInputHistory"

    .line 652
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 654
    .local v5, "oldHistory":[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 655
    new-array v7, v4, [Ljava/lang/CharSequence;

    .local v7, "newHistory":[Ljava/lang/CharSequence;
    goto :goto_0

    .line 657
    .end local v7    # "newHistory":[Ljava/lang/CharSequence;
    :cond_0
    array-length v7, v5

    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 658
    .restart local v7    # "newHistory":[Ljava/lang/CharSequence;
    array-length v8, v5

    invoke-static {v5, v6, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 661
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 663
    .end local v5    # "oldHistory":[Ljava/lang/CharSequence;
    .end local v7    # "newHistory":[Ljava/lang/CharSequence;
    :cond_1
    move/from16 v5, p3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;

    .line 664
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setHideSmartReplies(Z)Landroid/app/Notification$Builder;

    .line 666
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 669
    .local v4, "newNotification":Landroid/app/Notification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v6, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 670
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v6, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 671
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v6, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 673
    new-instance v18, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 674
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v8

    .line 675
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v11

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v12

    .line 676
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v16

    move-object/from16 v6, v18

    move-object v13, v4

    invoke-direct/range {v6 .. v17}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 677
    .local v6, "newSbn":Landroid/service/notification/StatusBarNotification;
    return-object v6
.end method

.method public removeHeadsUps()V
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide()V

    .line 1386
    :cond_1
    return-void
.end method

.method public removeKeyKeptForRemoteInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1299
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "deferRemoval":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 550
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 551
    .local v1, "ignoreEarliestRemovalTime":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, p1, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v3, v4

    move v0, v3

    .line 553
    .end local v1    # "ignoreEarliestRemovalTime":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->onNotificationRemoved(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide()V

    .line 560
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 561
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    sget-boolean v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 562
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldKeepForRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 563
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 564
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    .line 565
    .local v3, "remoteInputText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 566
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 568
    :cond_6
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 570
    .local v5, "newSbn":Landroid/service/notification/StatusBarNotification;
    const/4 v6, 0x0

    .line 571
    .local v6, "updated":Z
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onRemoteInputInserted()V

    .line 573
    :try_start_0
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    const/4 v6, 0x1

    .line 577
    goto :goto_1

    .line 575
    :catch_0
    move-exception v7

    .line 576
    .local v7, "e":Lcom/android/systemui/statusbar/notification/InflationException;
    const/4 v0, 0x0

    .line 578
    .end local v7    # "e":Lcom/android/systemui/statusbar/notification/InflationException;
    :goto_1
    if-eqz v6, :cond_7

    .line 579
    const-string v2, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keeping notification around after sending remote input "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addKeyKeptForRemoteInput(Ljava/lang/String;)V

    .line 581
    return-void

    .line 585
    .end local v3    # "remoteInputText":Ljava/lang/CharSequence;
    .end local v5    # "newSbn":Landroid/service/notification/StatusBarNotification;
    .end local v6    # "updated":Z
    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v3, :cond_8

    .line 586
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldKeepForSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 587
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 589
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->rebuildNotificationForCanceledSmartReplies(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 590
    .local v3, "newSbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 592
    .local v2, "updated":Z
    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_1
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    const/4 v2, 0x1

    .line 596
    goto :goto_2

    .line 594
    :catch_1
    move-exception v4

    .line 598
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 599
    if-eqz v2, :cond_8

    .line 600
    const-string v4, "NotificationEntryMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keeping notification around after sending smart reply "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addKeyKeptForRemoteInput(Ljava/lang/String;)V

    .line 602
    return-void

    .line 607
    .end local v2    # "updated":Z
    .end local v3    # "newSbn":Landroid/service/notification/StatusBarNotification;
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 609
    if-eqz v0, :cond_9

    .line 610
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 611
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 612
    return-void

    .line 615
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onRemoveNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 616
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 617
    return-void

    .line 620
    :cond_a
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 621
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v3

    if-ne v2, v3, :cond_b

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 622
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->isLeavebehind()Z

    move-result v2

    if-nez v2, :cond_b

    .line 623
    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keeping notification because it\'s showing guts. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 625
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->setKeyToRemoveOnGutsClosed(Ljava/lang/String;)V

    .line 626
    return-void

    .line 629
    :cond_b
    if-eqz v1, :cond_c

    .line 630
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v2, v3}, Lcom/android/systemui/ForegroundServiceController;->removeNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 633
    :cond_c
    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_d

    .line 634
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    .line 635
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->cleanUpViewState(Landroid/view/View;)V

    .line 638
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleGroupSummaryRemoved(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 641
    .local v2, "old":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v3, p1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    .line 642
    return-void
.end method

.method public setDisableNotificationAlerts(Z)V
    .locals 2
    .param p1, "disableNotificationAlerts"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDisableNotificationAlerts:Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 225
    return-void
.end method

.method public setLatestRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "latestRankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 219
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 220
    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 1240
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setNotificationsShown([Ljava/lang/String;)V

    .line 1241
    return-void
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationListener;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    goto :goto_0

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "NotificationEntryMgr"

    const-string v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1249
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 4
    .param p1, "presenter"    # Lcom/android/systemui/statusbar/NotificationPresenter;
    .param p2, "listContainer"    # Lcom/android/systemui/statusbar/NotificationListContainer;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;
    .param p4, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 281
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    .line 282
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 283
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 285
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 287
    new-instance v0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_notifications_enabled"

    .line 309
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 308
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ticker_gets_heads_up"

    .line 313
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 312
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$UXhQQT1EcpQ7iahyyi282W5mE2Q;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$UXhQQT1EcpQ7iahyyi282W5mE2Q;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

    .line 321
    return-void
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1121
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    return v0
.end method

.method public shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)I
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 1128
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "key":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    const-string v1, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: filtered notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return v2

    .line 1145
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDreaming()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1148
    .local v1, "inUse":Z
    :goto_0
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCustomDozing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1151
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No peeking: not in use: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return v2

    .line 1159
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCustomDozing()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1161
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No peeking: suppressed by DND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return v2

    .line 1169
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCustomDozing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressAmbient(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1171
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No peeking: suppressed by DND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return v2

    .line 1179
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    .line 1180
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_2

    .line 1188
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1190
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {v3, p2}, Lcom/oneplus/notification/OPNotificationController;->shouldPeekSnoozedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1192
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No peeking: snoozed package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return v2

    .line 1204
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCustomDozing()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/notification/OPNotificationController;->isCallStateOffHook(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1205
    const/4 v3, 0x3

    goto :goto_1

    .line 1206
    :cond_8
    const/4 v3, 0x4

    .line 1208
    .local v3, "importanceLevel":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v3, :cond_9

    .line 1209
    const-string v4, "NotificationEntryMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No peeking: unimportant notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return v2

    .line 1216
    :cond_9
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1217
    const-string v4, "NotificationEntryMgr"

    const-string v5, "No peeking: suppressed due to group alert behavior"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return v2

    .line 1223
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v4, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1226
    const-string v4, "NotificationEntryMgr"

    const-string v5, "No peeking: callback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v2

    .line 1233
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {v2, p2}, Lcom/oneplus/notification/OPNotificationController;->shouldPeek(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    return v2

    .line 1182
    .end local v3    # "importanceLevel":I
    :cond_c
    :goto_2
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No peeking: recent fullscreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    return v2

    .line 1132
    .end local v1    # "inUse":Z
    :cond_d
    :goto_3
    const-string v1, "NotificationEntryMgr"

    const-string v3, "No peeking: no huns or vr mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return v2
.end method

.method protected tagForeground(Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 992
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 993
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 992
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ForegroundServiceController;->getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 994
    .local v0, "activeOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 995
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 996
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 998
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 999
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appOp is null: package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 999
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-void

    .line 1004
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 1005
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1004
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationsForAppOp(IILjava/lang/String;Z)V

    .line 996
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "shouldPeek"    # Z
    .param p4, "alertAgain"    # Z

    .line 1257
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    .line 1258
    .local v0, "wasHeadsUp":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1259
    if-nez p3, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2, p4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_2

    .line 1265
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 1267
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_2

    .line 1269
    :cond_2
    if-eqz p4, :cond_6

    .line 1271
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p2, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    .line 1272
    .local v2, "reason":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/notification/OPNotificationController;->shouldShowSimpleHeadsUp(ILjava/lang/String;)I

    move-result v3

    .line 1273
    .local v3, "simpleHeadsUpReason":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1274
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1275
    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v4

    .line 1276
    .local v5, "type":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    iget-object v7, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 1277
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v9, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1276
    move v1, v4

    goto :goto_1

    .line 1277
    :cond_4
    nop

    .line 1276
    :goto_1
    invoke-virtual {v6, v7, v1, v5}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->show(Landroid/service/notification/StatusBarNotification;ZI)V

    .line 1279
    .end local v5    # "type":I
    goto :goto_2

    .line 1281
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1282
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide()V

    .line 1287
    .end local v2    # "reason":I
    .end local v3    # "simpleHeadsUpReason":I
    :cond_6
    :goto_2
    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1097
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Lcom/android/systemui/statusbar/notification/InflationException;
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    .line 1101
    .end local v0    # "e":Lcom/android/systemui/statusbar/notification/InflationException;
    :goto_0
    return-void
.end method

.method protected updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    .line 774
    .local v0, "isLowPriority":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 775
    .local v1, "isUpdate":Z
    :goto_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v4

    .line 776
    .local v4, "wasLowPriority":Z
    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsLowPriority(Z)V

    .line 777
    if-eqz v1, :cond_1

    if-eq v4, v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {p4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    .line 779
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    invoke-virtual {v5, p4, p3}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 783
    :try_start_0
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 784
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 785
    :catch_0
    move-exception v5

    .line 786
    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "NotificationEntryMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed looking up ApplicationInfo for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v5    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v6, 0x9

    const/16 v7, 0x15

    if-lt v5, v6, :cond_2

    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v5, v7, :cond_2

    move v5, v2

    goto :goto_3

    :cond_2
    move v5, v3

    :goto_3
    invoke-virtual {p4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLegacy(Z)V

    .line 790
    const v5, 0x7f0a01bc

    iget v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v6, v7, :cond_3

    move v6, v2

    goto :goto_4

    :cond_3
    move v6, v3

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setIconTag(ILjava/lang/Object;)V

    .line 791
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez v5, :cond_4

    move v5, v2

    goto :goto_5

    :cond_4
    move v5, v3

    :goto_5
    iput-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 793
    iput-object p4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 794
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 797
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v5

    .line 798
    .local v5, "showChronometer":Z
    if-eqz v5, :cond_5

    .line 799
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->createChronometer(Landroid/content/Context;)V

    goto :goto_6

    .line 801
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    .line 802
    iput-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    .line 806
    :goto_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 807
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v7

    .line 806
    invoke-virtual {v6, p3, v7}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v6

    .line 808
    .local v6, "useIncreasedCollapsedHeight":Z
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 809
    invoke-interface {v7}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_7

    :cond_6
    move v2, v3

    .line 810
    .local v2, "useIncreasedHeadsUp":Z
    :goto_7
    invoke-virtual {p4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedCollapsedHeight(Z)V

    .line 811
    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedHeadsUpHeight(Z)V

    .line 813
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {v3, p1}, Lcom/oneplus/notification/OPNotificationController;->setShowQuickReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 815
    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 816
    return-void
.end method

.method public updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1114
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 1116
    return-void
.end method

.method public updateNotifications()V
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    .line 1109
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData;)V

    .line 1111
    return-void
.end method

.method public updateNotificationsForAppOp(IILjava/lang/String;Z)V
    .locals 8
    .param p1, "appOp"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "showIcon"    # Z

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 1022
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1021
    invoke-interface {v0, v1, p3}, Lcom/android/systemui/ForegroundServiceController;->getStandardLayoutKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "foregroundKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v0

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/NotificationData;->updateAppOp(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 1027
    :cond_0
    return-void
.end method

.method public updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 7

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 754
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object v0

    .line 755
    .local v0, "userNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 756
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 757
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 758
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 759
    .local v4, "exposedGuts":Z
    :goto_1
    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    .line 760
    if-eqz v4, :cond_1

    .line 761
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationGutsManager;->onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 755
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "exposedGuts":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    .end local v2    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->onDensityOrFontScaleChanged()V

    .line 768
    return-void
.end method
