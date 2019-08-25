.class public Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HideTileBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    .line 537
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 540
    if-eqz p2, :cond_6

    const-string v0, "com.oneplus.systemui.qs.hide_tile"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 542
    :cond_0
    const-string/jumbo v0, "tile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "tile":Ljava/lang/String;
    const-string v1, "hide"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 544
    .local v1, "hide":Z
    const-string v3, "position"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 546
    .local v3, "position":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 547
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v4}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sysui_qs_tiles"

    .line 550
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 549
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "setting":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v5, v5, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v6, v6, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v6}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 553
    .local v5, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/systemui/qs/QSTileHost;->access$300()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 554
    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HideTileReceiver: tile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", hide="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", pos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HideTileReceiver: list="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v8, v8, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v8, v8, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HideTileReceiver: hide="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_2
    if-eqz v1, :cond_3

    .line 560
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 562
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    const/4 v6, 0x1

    invoke-static {v2, v0, v6, v3}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$800(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 565
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v6}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 566
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v6}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 568
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v6, v0, v2, v3}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$800(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;ZI)V

    .line 570
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v2, v2, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "op_sysui_qs_tiles_hide"

    const-string v7, ","

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    .line 571
    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 570
    invoke-static {v2, v6, v7, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 572
    return-void

    .line 540
    .end local v0    # "tile":Ljava/lang/String;
    .end local v1    # "hide":Z
    .end local v3    # "position":I
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-void
.end method
