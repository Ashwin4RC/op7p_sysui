.class Lcom/oneplus/aod/OPDozeScrimController$1;
.super Ljava/lang/Object;
.source "OPDozeScrimController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OPDozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OPDozeScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OPDozeScrimController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 48
    iput-object p1, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$800(Lcom/oneplus/aod/OPDozeScrimController;)V

    .line 96
    return-void
.end method

.method public onDisplayBlanked()V
    .locals 3

    .line 52
    const-string v0, "OPDozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse in, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v2}, Lcom/oneplus/aod/OPDozeScrimController;->access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPulseReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    .line 53
    invoke-static {v2}, Lcom/oneplus/aod/OPDozeScrimController;->access$100(Lcom/oneplus/aod/OPDozeScrimController;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$200(Lcom/oneplus/aod/OPDozeScrimController;)V

    .line 61
    return-void
.end method

.method public onFinished()V
    .locals 4

    .line 66
    const-string v0, "OPDozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse in finished, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v2}, Lcom/oneplus/aod/OPDozeScrimController;->access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$300(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string v0, "OPDozeScrimController"

    const-string v1, "hold pulse wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$300(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$600(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v1}, Lcom/oneplus/aod/OPDozeScrimController;->access$400(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v2}, Lcom/oneplus/aod/OPDozeScrimController;->access$500(Lcom/oneplus/aod/OPDozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v3}, Lcom/oneplus/aod/OPDozeScrimController;->access$100(Lcom/oneplus/aod/OPDozeScrimController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$1;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/OPDozeScrimController;->access$702(Lcom/oneplus/aod/OPDozeScrimController;Z)Z

    .line 88
    return-void
.end method
