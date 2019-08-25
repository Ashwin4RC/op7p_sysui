.class Lcom/oneplus/keyguard/OpDragPanelController$1;
.super Landroid/os/Handler;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpDragPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/keyguard/OpDragPanelController;

    .line 57
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    .line 61
    .local v0, "what":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$200(Lcom/oneplus/keyguard/OpDragPanelController;)V

    .line 68
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$300(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 69
    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$000(Lcom/oneplus/keyguard/OpDragPanelController;)V

    .line 64
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 65
    goto :goto_0

    .line 71
    :cond_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "OpDragPanelController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TIME_OUT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$1;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onTimeout()V

    .line 79
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
