.class Lcom/android/systemui/doze/DozeTriggers$2;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 458
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintPoke()V
    .locals 3

    .line 493
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestFingerprintPoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;IZ)V

    .line 498
    invoke-static {v2}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 500
    return-void
.end method

.method public onNotificationHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 474
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$900(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 475
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 466
    if-eqz p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$800(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 469
    :cond_0
    return-void
.end method

.method public onSingleTap()V
    .locals 3

    .line 486
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestSingleTapPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;IZ)V

    .line 488
    invoke-static {v2}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 489
    return-void
.end method

.method public onThreeKeyChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 479
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestThreeKeyStatusPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;IZ)V

    .line 481
    invoke-static {v2}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 482
    return-void
.end method
