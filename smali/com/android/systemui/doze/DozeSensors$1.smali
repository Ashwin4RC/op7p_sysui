.class Lcom/android/systemui/doze/DozeSensors$1;
.super Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 126
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/DozeSensors$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 5
    .param p1, "result"    # I

    .line 129
    const-string v0, "DozeSensors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProximityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$100(Lcom/android/systemui/doze/DozeSensors;)I

    move-result v0

    .line 132
    .local v0, "currentResult":I
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1, p1}, Lcom/android/systemui/doze/DozeSensors;->access$102(Lcom/android/systemui/doze/DozeSensors;I)I

    .line 133
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->getCurrentState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->resetCurrentState()V

    .line 136
    const-string v1, "DozeSensors"

    const-string v2, "pulse from pocket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v3, v4, v4}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZFF)V

    .line 140
    :cond_0
    return-void
.end method
