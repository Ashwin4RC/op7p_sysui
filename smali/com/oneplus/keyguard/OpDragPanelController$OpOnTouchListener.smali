.class Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpDragPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method private constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/keyguard/OpDragPanelController;
    .param p2, "x1"    # Lcom/oneplus/keyguard/OpDragPanelController$1;

    .line 83
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 88
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 90
    .local v3, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 91
    .local v4, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 92
    .local v5, "x":F
    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$700(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 95
    if-nez v3, :cond_2

    .line 96
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v4}, Lcom/oneplus/keyguard/OpDragPanelController;->access$802(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    .line 97
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v5}, Lcom/oneplus/keyguard/OpDragPanelController;->access$902(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    .line 98
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1000(Lcom/oneplus/keyguard/OpDragPanelController;)V

    .line 99
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1100(Lcom/oneplus/keyguard/OpDragPanelController;)V

    .line 100
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 104
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    .line 105
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    new-instance v6, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    iget-object v7, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    iget-object v8, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v8}, Lcom/oneplus/keyguard/OpDragPanelController;->access$900(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v8

    iget-object v9, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v9}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;FF)V

    invoke-static {v1, v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1402(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    .line 107
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onBubbleTouched()V

    .line 111
    :cond_1
    return v2

    .line 112
    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 113
    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v6

    sub-float v6, v4, v6

    .line 114
    .local v6, "dy":F
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    .line 115
    const/4 v6, 0x0

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    .line 117
    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v7

    int-to-float v6, v7

    .line 120
    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v7}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 121
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setTranslationY(F)V

    .line 122
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    .line 123
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1700(Lcom/oneplus/keyguard/OpDragPanelController;F)V

    .line 124
    return v2

    .line 126
    .end local v6    # "dy":F
    :cond_5
    goto :goto_1

    :cond_6
    if-ne v3, v2, :cond_8

    .line 127
    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    .line 128
    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 129
    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    .line 130
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1800(Lcom/oneplus/keyguard/OpDragPanelController;)V

    .line 131
    return v2

    .line 133
    :cond_7
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_9

    const-string v2, "OpDragPanelController"

    const-string v6, " doesn\'t touch before, skip drag"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_8
    if-ne v3, v7, :cond_9

    .line 136
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    .line 137
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v2, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    .line 141
    .end local v3    # "action":I
    .end local v4    # "y":F
    .end local v5    # "x":F
    :cond_9
    :goto_1
    return v1
.end method
