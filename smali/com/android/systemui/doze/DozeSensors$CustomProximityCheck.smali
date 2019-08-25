.class abstract Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;
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
    accessFlags = 0x402
    name = "CustomProximityCheck"
.end annotation


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    const-string p1, "DozeSensor.CustomProximityCheck"

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/DozeSensors$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/doze/DozeSensors;
    .param p2, "x1"    # Lcom/android/systemui/doze/DozeSensors$1;

    .line 626
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 1
    .param p1, "result"    # I

    .line 688
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->onProximityResult(I)V

    .line 692
    return-void
.end method

.method private release()V
    .locals 2

    .line 700
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 703
    const-string v0, "DozeSensor.CustomProximityCheck"

    const-string v1, "Unregister prox Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    .line 707
    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    .line 642
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mFinished:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    const v1, 0x1fa2651

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 646
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_1

    .line 647
    const-string v1, "DozeSensor.CustomProximityCheck"

    const-string v2, "No sensor found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    .line 649
    return-void

    .line 651
    :cond_1
    const-string v1, "DozeSensor.CustomProximityCheck"

    const-string v2, "register prox"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mMaxRange:F

    .line 653
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 654
    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    .line 653
    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 655
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 656
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    .line 657
    return-void

    .line 642
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 697
    return-void
.end method

.method public abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 669
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 670
    const-string v0, "DozeSensor.CustomProximityCheck"

    const-string v2, "Event has no values!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    goto :goto_1

    .line 673
    :cond_0
    const-string v0, "DozeSensor.CustomProximityCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 677
    .local v0, "isNear":Z
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    .line 679
    .end local v0    # "isNear":Z
    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 683
    const-string v0, "DozeSensor.CustomProximityCheck"

    const-string v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    .line 685
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listen"    # Z

    .line 660
    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->check()V

    goto :goto_0

    .line 663
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->release()V

    .line 665
    :goto_0
    return-void
.end method
