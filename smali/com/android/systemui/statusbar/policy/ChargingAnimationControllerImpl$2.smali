.class Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ChargingAnimationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 365
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "isBouncer"    # Z

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$902(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    .line 390
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$802(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    .line 374
    :cond_0
    return-void
.end method

.method public onPreventModeChanged(Z)V
    .locals 1
    .param p1, "prevent"    # Z

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$1002(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z

    .line 395
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    .line 398
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$502(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo / mPluggedButNotUsb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    goto :goto_1

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    .line 414
    :cond_3
    :goto_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    .line 381
    :cond_0
    return-void
.end method
