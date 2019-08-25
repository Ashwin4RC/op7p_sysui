.class Lcom/android/systemui/statusbar/phone/OPFacelockController$10;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field final synthetic val$bouncerShow:Z

.field final synthetic val$liveWP:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1326
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$liveWP:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$bouncerShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1330
    const/4 v0, 0x5

    .line 1332
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$liveWP:Z

    if-nez v1, :cond_0

    .line 1333
    const/4 v0, 0x1

    goto :goto_1

    .line 1334
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$bouncerShow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1336
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->willDismissWithAction()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1339
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1340
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    const/4 v0, 0x6

    goto :goto_1

    .line 1344
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 1345
    const/4 v0, 0x0

    .line 1346
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->forceHideBouncer()V

    goto :goto_1

    .line 1337
    :cond_3
    :goto_0
    const/4 v0, 0x6

    goto :goto_1

    .line 1351
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->val$liveWP:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 1353
    const/4 v0, 0x0

    goto :goto_1

    .line 1355
    :cond_5
    const/4 v0, 0x5

    .line 1360
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetFPTimeout()V

    .line 1362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlockForFace(I)V

    .line 1363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isLighModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setAlpha(F)V

    .line 1366
    :cond_7
    return-void
.end method
