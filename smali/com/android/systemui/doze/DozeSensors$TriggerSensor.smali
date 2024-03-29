.class Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSensor"
.end annotation


# instance fields
.field final mConfigured:Z

.field private mDisabled:Z

.field final mPulseReason:I

.field private mRegistered:Z

.field final mReportsTouchCoordinates:Z

.field private mRequested:Z

.field final mRequiresTouchscreen:Z

.field final mSensor:Landroid/hardware/Sensor;

.field final mSetting:Ljava/lang/String;

.field final mSettingDefault:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V
    .locals 9
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "configured"    # Z
    .param p5, "pulseReason"    # I
    .param p6, "reportsTouchCoordinates"    # Z
    .param p7, "requiresTouchscreen"    # Z

    .line 726
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZ)V

    .line 728
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZ)V
    .locals 0
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "settingDef"    # Z
    .param p5, "configured"    # Z
    .param p6, "pulseReason"    # I
    .param p7, "reportsTouchCoordinates"    # Z
    .param p8, "requiresTouchscreen"    # Z

    .line 732
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 733
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 734
    iput-object p3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 735
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSettingDefault:Z

    .line 736
    iput-boolean p5, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 737
    iput p6, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    .line 738
    iput-boolean p7, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mReportsTouchCoordinates:Z

    .line 739
    iput-boolean p8, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    .line 740
    return-void
.end method

.method private enabledBySetting()Z
    .locals 5

    .line 767
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 768
    return v1

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$900(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSettingDefault:Z

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$onTrigger$0(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;Landroid/hardware/TriggerEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 788
    const-string v0, "DozeSensors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "sensorPerformsProxCheck":Z
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x19

    if-ne v1, v3, :cond_0

    .line 791
    iget-object v1, p1, Landroid/hardware/TriggerEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    .line 792
    .local v1, "subType":I
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 793
    invoke-static {v3}, Lcom/android/systemui/doze/DozeSensors;->access$1000(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x19b

    .line 792
    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 795
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 796
    invoke-static {v3}, Lcom/android/systemui/doze/DozeSensors;->access$1300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupSubtypePerformsProxCheck(I)Z

    move-result v0

    .line 799
    .end local v1    # "subType":I
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 800
    const/high16 v1, -0x40800000    # -1.0f

    .line 801
    .local v1, "screenX":F
    const/high16 v3, -0x40800000    # -1.0f

    .line 802
    .local v3, "screenY":F
    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mReportsTouchCoordinates:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 803
    iget-object v4, p1, Landroid/hardware/TriggerEvent;->values:[F

    aget v1, v4, v2

    .line 804
    iget-object v2, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v2, v4

    .line 806
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-interface {v2, v4, v0, v1, v3}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZFF)V

    .line 807
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 808
    return-void
.end method

.method private triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 820
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 821
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TriggerEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 822
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 823
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 824
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p1, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    .line 825
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 826
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    .end local v2    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 786
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$1000(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceSensor(Landroid/content/Context;I)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$1100(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$TriggerSensor$O2XJN2HKJ96bSF_1qNx6jPK-eFk;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$TriggerSensor$O2XJN2HKJ96bSF_1qNx6jPK-eFk;-><init>(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;Landroid/hardware/TriggerEvent;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    return-void
.end method

.method public registerSettingsObserver(Landroid/database/ContentObserver;)V
    .locals 5
    .param p1, "settingsObserver"    # Landroid/database/ContentObserver;

    .line 812
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$900(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 814
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 815
    invoke-static {v3}, Lcom/android/systemui/doze/DozeSensors;->access$1200(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;

    move-result-object v3

    const/4 v4, -0x1

    .line 813
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 817
    :cond_0
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .line 749
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 750
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 752
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .line 743
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 744
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 746
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRequested="

    .line 777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisabled="

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigured="

    .line 779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSensor="

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    return-object v0
.end method

.method public updateListener()V
    .locals 4

    .line 755
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_1

    .line 756
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->enabledBySetting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-nez v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 758
    const-string v0, "DozeSensors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestTriggerSensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 761
    .local v0, "rt":Z
    const-string v1, "DozeSensors"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 764
    .end local v0    # "rt":Z
    :cond_2
    :goto_0
    return-void

    .line 755
    :cond_3
    :goto_1
    return-void
.end method
