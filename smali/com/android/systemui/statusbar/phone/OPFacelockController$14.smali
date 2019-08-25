.class Lcom/android/systemui/statusbar/phone/OPFacelockController$14;
.super Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;
.source "OPFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1515
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginRecognize(I)V
    .locals 2
    .param p1, "faceId"    # I

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1521
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "onBeginRecognize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_1
    return-void
.end method

.method public onCompared(IIIII)V
    .locals 2
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "result"    # I
    .param p4, "compareTimeMillis"    # I
    .param p5, "score"    # I

    .line 1526
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1529
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onCompared 2 to remove timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1534
    :cond_1
    return-void
.end method

.method public onEndRecognize(III)V
    .locals 12
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "result"    # I

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4002(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 1551
    .local v0, "allowed":Z
    const-string v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndRecognize, result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyguardShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bouncer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", allowed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSleep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", simpin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pending:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", auto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1555
    const/4 v2, 0x2

    const/4 v3, 0x3

    if-nez p3, :cond_d

    .line 1556
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->allowShowingLock()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_6

    .line 1570
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpFailTimeStamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    move v2, v1

    .line 1571
    .local v2, "triggeredByFingerprint":Z
    :goto_1
    if-eqz v2, :cond_5

    const-string v4, "1"

    goto :goto_2

    :cond_5
    const-string v4, "0"

    .line 1573
    .local v4, "value":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1574
    const-string v6, "lock_unlock_success"

    const-string v7, "face_bright"

    invoke-static {v6, v7, v4}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1576
    :cond_6
    const-string v6, "lock_unlock_success"

    const-string v7, "face"

    invoke-static {v6, v7, v4}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1580
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFaceUnlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    .end local v2    # "triggeredByFingerprint":Z
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    goto :goto_4

    .line 1583
    :catch_0
    move-exception v2

    .line 1584
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "OPFacelockController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1591
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_5

    .line 1596
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1597
    const-string v1, "OPFacelockController"

    const-string v2, "onEndRecognize, result ok to unlock and camera"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1599
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1601
    :cond_9
    const-string v2, "OPFacelockController"

    const-string v3, "onEndRecognize, result ok to skip bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1603
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1604
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1605
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2, v5, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1606
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1607
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    goto/16 :goto_8

    .line 1592
    :cond_a
    :goto_5
    const-string v1, "OPFacelockController"

    const-string v2, "onEndRecognize, result ok to unlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1594
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1557
    :cond_b
    :goto_6
    const-string v3, "OPFacelockController"

    const-string v4, "not handle recognize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1559
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1560
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1561
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1562
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 1564
    :cond_c
    return-void

    .line 1611
    :cond_d
    if-ne p3, v2, :cond_e

    .line 1612
    const-string v1, "lock_unlock_failed"

    const-string v2, "face_timeout"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v1, "OPFacelockController"

    const-string v2, "onEndRecognize: no face"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1616
    :cond_e
    if-ne p3, v3, :cond_10

    .line 1617
    const-string v2, "OPFacelockController"

    const-string v3, "onEndRecognize: camera error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1619
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1620
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2, v5, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1622
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1624
    :cond_10
    const/4 v2, 0x4

    if-ne p3, v2, :cond_12

    .line 1625
    const-string v2, "OPFacelockController"

    const-string v3, "onEndRecognize: no permission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1627
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1628
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2, v5, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1630
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 1634
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1635
    const-string v1, "lock_unlock_failed"

    const-string v3, "face_bright"

    const-string v4, "1"

    invoke-static {v1, v3, v4}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1637
    :cond_13
    const-string v1, "lock_unlock_failed"

    const-string v3, "face"

    const-string v4, "1"

    invoke-static {v1, v3, v4}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/content/Context;

    move-result-object v6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4500(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Vibrator;

    move-result-object v7

    const/16 v8, 0x3fb

    const/4 v9, 0x0

    const/16 v10, 0x32

    const/4 v11, 0x3

    invoke-static/range {v6 .. v11}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z

    .line 1643
    const-string v1, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndRecognize: fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1646
    :cond_14
    :goto_8
    return-void
.end method
