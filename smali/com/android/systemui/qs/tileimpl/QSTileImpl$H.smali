.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 534
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 535
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 536
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 540
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    const/4 v0, 0x0

    .line 542
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 546
    .local v1, "start":J
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 547
    const-string v3, "handleAddCallback"

    move-object v0, v3

    .line 548
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    .line 549
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    .line 550
    const-string v3, "handleRemoveCallbacks"

    move-object v0, v3

    .line 551
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V

    goto/16 :goto_4

    .line 552
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    if-ne v3, v5, :cond_2

    .line 553
    const-string v3, "handleRemoveCallback"

    move-object v0, v3

    .line 554
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    .line 555
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_4

    .line 556
    const-string v3, "handleClick"

    move-object v0, v3

    .line 558
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "full"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/MdmLogger;->logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v3, "click_tile"

    invoke-static {v3}, Lcom/android/systemui/util/MdmLogger;->logQsPanel(Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v3, :cond_3

    .line 565
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v4, "disabledByPolicy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 568
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 567
    invoke-static {v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v3

    .line 569
    .local v3, "intent":Landroid/content/Intent;
    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v4, v3, v6}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 571
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 572
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto/16 :goto_4

    .line 574
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 575
    const-string v3, "handleSecondaryClick"

    move-object v0, v3

    .line 577
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "half"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/MdmLogger;->logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_4

    .line 580
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    .line 581
    const-string v3, "handleLongClick"

    move-object v0, v3

    .line 583
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "long"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/MdmLogger;->logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_4

    .line 586
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    .line 587
    const-string v3, "handleRefreshState"

    move-object v0, v3

    .line 588
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 589
    :cond_7
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_9

    .line 590
    const-string v3, "handleShowDetail"

    move-object v0, v3

    .line 591
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_4

    .line 592
    :cond_9
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_a

    .line 593
    const-string v3, "handleUserSwitch"

    move-object v0, v3

    .line 594
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_4

    .line 595
    :cond_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_c

    .line 596
    const-string v3, "handleToggleStateChanged"

    move-object v0, v3

    .line 597
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_b

    goto :goto_1

    :cond_b
    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    .line 599
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto :goto_4

    .line 601
    :cond_c
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_e

    .line 602
    const-string v3, "handleScanStateChanged"

    move-object v0, v3

    .line 603
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_d

    goto :goto_2

    :cond_d
    move v4, v6

    :goto_2
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_4

    .line 604
    :cond_e
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_f

    .line 605
    const-string v3, "handleDestroy"

    move-object v0, v3

    .line 606
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto :goto_4

    .line 607
    :cond_f
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_10

    .line 608
    const-string v3, "handleClearState"

    move-object v0, v3

    .line 609
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClearState()V

    goto :goto_4

    .line 610
    :cond_10
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xe

    if-ne v3, v5, :cond_12

    .line 611
    const-string v3, "handleSetListeningInternal"

    move-object v0, v3

    .line 612
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_11

    goto :goto_3

    :cond_11
    move v4, v6

    :goto_3
    invoke-static {v3, v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$800(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto :goto_4

    .line 613
    :cond_12
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_13

    .line 614
    const-string v3, "handleStale"

    move-object v0, v3

    .line 615
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    .line 623
    :goto_4
    goto :goto_5

    .line 617
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :catch_0
    move-exception v3

    .line 620
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "error":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v5, v4, v3}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "error":Ljava/lang/String;
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 628
    .local v3, "end":J
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v5, :cond_14

    sub-long v5, v3, v1

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-ltz v5, :cond_16

    .line 629
    :cond_14
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v7, v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v7, v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v7, v7, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_15
    const-string v7, "null"

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", Time cost in handleMessage: name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_16
    return-void
.end method

.method public removeAllMessages()V
    .locals 2

    .line 637
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 638
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->removeMessages(I)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
