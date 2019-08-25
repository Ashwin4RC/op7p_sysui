.class public final Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "HotspotSignalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 351
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setHasAnySimReady(Z)V
    .locals 3
    .param p1, "simReady"    # Z

    .line 374
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUSS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHasAnySimReady / simReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$702(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 377
    if-eqz p1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$802(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    goto :goto_0

    .line 380
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    .line 384
    :cond_2
    :goto_0
    return-void
.end method

.method public setTetherError(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 388
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUSS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1000(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetherError callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 391
    :cond_1
    const-string v0, "data_call_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    const-string v0, "data_call_code"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "setTetherError "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1200(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 403
    :cond_3
    return-void
.end method

.method public setVirtualSimstate([I)V
    .locals 5
    .param p1, "softSimstate"    # [I

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "exist":Z
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 357
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 359
    .local v3, "softsimState":I
    sget v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    if-ne v3, v4, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 361
    goto :goto_1

    .line 357
    .end local v3    # "softsimState":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "virtual sim state change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$402(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 368
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 369
    return-void
.end method
