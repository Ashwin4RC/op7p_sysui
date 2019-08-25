.class Lcom/android/systemui/fingerprint/FingerprintDialogView$8;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 1026
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticateChanged(ZIII)V
    .locals 4
    .param p1, "authenticating"    # Z
    .param p2, "type"    # I
    .param p3, "result"    # I
    .param p4, "reserved"    # I

    .line 1192
    if-eqz p1, :cond_0

    .line 1193
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-ne p2, v0, :cond_2

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2802(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    goto :goto_0

    .line 1200
    :cond_0
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-ne p2, v0, :cond_1

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$3000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2802(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1207
    :cond_2
    :goto_0
    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1171
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFacelockStateChanged(I)V

    .line 1172
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isScreenOffUnlock()Z

    move-result v0

    .line 1174
    .local v0, "isOffUnlock":Z
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFacelockStateChanged: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isOffUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1176
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1177
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1179
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2700(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1184
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->onFaceUnlocked()V

    .line 1187
    :cond_2
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1224
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 1225
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAuthenticated, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$3002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1227
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 1228
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 1232
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .line 1269
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    .line 1270
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 1276
    :cond_0
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintHelp, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;ZLjava/lang/String;)V

    .line 1241
    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .line 1065
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$902(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;ZLjava/lang/String;)V

    .line 1073
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2
    .param p1, "isBouncer"    # Z

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1167
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .line 1141
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1145
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1146
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowingWallpaper()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowingWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2600(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2600(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    .line 1152
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1155
    :cond_1
    nop

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1160
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 1029
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 1030
    const-string v0, "FingerprintDialogView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1102(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 1038
    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 1116
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 1117
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1102(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes(Z)V

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1127
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 3

    .line 1131
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    .line 1132
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurningOn: interactive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1102(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    .line 1137
    :cond_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1250
    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .line 1042
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_inversion_enabled"

    .line 1049
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 1048
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1051
    .local v0, "wasInversionEnable":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1052
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v3, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_display_inversion_enabled"

    .line 1054
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 1053
    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v0    # "wasInversionEnable":Z
    :cond_1
    goto :goto_1

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    .line 1077
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 1078
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedWakingUp, owner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$902(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1085
    const-string v0, "forceShow-keyguard"

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 1086
    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 1093
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_inversion_enabled"

    .line 1095
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 1094
    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_1
    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes(Z)V

    .line 1112
    :cond_3
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1212
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 1214
    const/4 v0, 0x1

    .line 1215
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 1218
    :cond_0
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStrongAuthStateChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1220
    :cond_1
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1256
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->resetState()V

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->checkAnimationValueValid()V

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes(Z)V

    .line 1264
    :cond_0
    return-void
.end method
