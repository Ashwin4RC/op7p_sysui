.class Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimData"
.end annotation


# instance fields
.field public simState:Lcom/android/internal/telephony/IccCardConstants$State;

.field public slotId:I

.field public subId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "slot"    # I
    .param p3, "id"    # I

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1449
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 1450
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 1451
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1455
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1458
    const-string/jumbo v0, "ss"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, "stateExtra":Ljava/lang/String;
    const-string/jumbo v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1460
    .local v1, "slotId":I
    const-string/jumbo v2, "subscription"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1462
    .local v2, "subId":I
    const-string v3, "ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1463
    const-string v3, "reason"

    .line 1464
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1466
    .local v3, "absentReason":Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1468
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1468
    .local v4, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1470
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1470
    .end local v3    # "absentReason":Ljava/lang/String;
    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    move-object v3, v4

    .line 1472
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .local v3, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5

    .line 1472
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    const-string v3, "READY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1473
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1473
    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_1
    goto :goto_5

    .line 1474
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v3, "LOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1475
    const-string v3, "reason"

    .line 1476
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1477
    .local v3, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1478
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1478
    .end local v3    # "lockedReason":Ljava/lang/String;
    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_2
    goto :goto_3

    .line 1479
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v3    # "lockedReason":Ljava/lang/String;
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1480
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_2

    .line 1482
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1482
    .end local v3    # "lockedReason":Ljava/lang/String;
    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_3
    move-object v3, v4

    .line 1484
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .local v3, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_5

    .line 1484
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v3, "NETWORK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1485
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 1486
    :cond_6
    const-string v3, "CARD_IO_ERROR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1487
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 1488
    :cond_7
    const-string v3, "LOADED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "IMSI"

    .line 1489
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 1494
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_5

    .line 1492
    :cond_9
    :goto_4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 1494
    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_5
    nop

    .line 1496
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    return-object v4

    .line 1456
    .end local v0    # "stateExtra":Ljava/lang/String;
    .end local v1    # "slotId":I
    .end local v2    # "subId":I
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimData{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
