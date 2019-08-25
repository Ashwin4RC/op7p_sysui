.class Lcom/android/systemui/doze/DozeSensors$PickupCheck;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupCheck"
.end annotation


# instance fields
.field private mCurrentState:I

.field private mFinished:Z

.field private mMaxRange:F

.field private mProximityChecking:Z

.field private mRegistered:Z

.field private mSensorType:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 3

    .line 534
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    const-string p1, "DozeSensors.PickupCheck"

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mTag:Ljava/lang/String;

    .line 525
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mFinished:Z

    .line 536
    const p1, 0x1fa2652

    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mSensorType:I

    .line 537
    const-string p1, "TYPE_PICK_UP"

    .line 538
    .local p1, "sensor":Ljava/lang/String;
    const-string v0, "DozeSensors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choose sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method

.method private finishWithResult(I)V
    .locals 4
    .param p1, "result"    # I

    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 595
    :cond_0
    iget v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mCurrentState:I

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3, v1, v2, v2}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZFF)V

    goto :goto_0

    .line 597
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    const/4 v3, -0x1

    invoke-interface {v0, v3, v1, v2, v2}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZFF)V

    .line 604
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mCurrentState:I

    .line 605
    return-void
.end method

.method private release()V
    .locals 2

    .line 616
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "DozeSensors.PickupCheck"

    const-string v1, "Unregister P Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    .line 623
    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    .line 542
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mFinished:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 544
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_1

    .line 545
    const-string v1, "DozeSensors.PickupCheck"

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    .line 547
    return-void

    .line 549
    :cond_1
    const-string v1, "DozeSensors.PickupCheck"

    const-string/jumbo v2, "sensor registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mMaxRange:F

    .line 552
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 553
    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    .line 552
    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 554
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    .line 556
    return-void

    .line 542
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 583
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    .line 562
    return-void

    .line 565
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 566
    const-string v0, "DozeSensors.PickupCheck"

    const-string v2, "Event has no values!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    goto :goto_1

    .line 569
    :cond_1
    const-string v0, "DozeSensors.PickupCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    .line 571
    .local v0, "isPickup":Z
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    .line 573
    .end local v0    # "isPickup":Z
    :goto_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 587
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listen"    # Z

    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->check()V

    goto :goto_0

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->release()V

    .line 613
    :goto_0
    return-void
.end method
