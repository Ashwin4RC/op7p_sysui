.class Lcom/oneplus/aod/AodWindowManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodWindowManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/AodWindowManager;

    .line 83
    iput-object p1, p0, Lcom/oneplus/aod/AodWindowManager$1;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedWakingUp()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 130
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager$1;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodWindowManager;->access$100(Lcom/oneplus/aod/AodWindowManager;)Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager$1;->this$0:Lcom/oneplus/aod/AodWindowManager;

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager$1;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodWindowManager;->access$100(Lcom/oneplus/aod/AodWindowManager;)Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodWindowManager;->access$202(Lcom/oneplus/aod/AodWindowManager;Z)Z

    .line 133
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 88
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager$1;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodWindowManager;->access$000(Lcom/oneplus/aod/AodWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodUtils;->updateDozeSettings(Landroid/content/Context;I)V

    .line 89
    return-void
.end method
