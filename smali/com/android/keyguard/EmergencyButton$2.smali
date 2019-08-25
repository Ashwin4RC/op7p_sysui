.class Lcom/android/keyguard/EmergencyButton$2;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/EmergencyButton;

    .line 138
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V

    .line 146
    return-void

    .line 149
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "EmergencyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isShowEmergencyPanel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v2}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->isShowEmergencyPanel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->isShowEmergencyPanel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$100(Lcom/android/keyguard/EmergencyButton;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onLaunchEmergencyPanel()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$200(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V

    .line 163
    :goto_0
    return-void
.end method
