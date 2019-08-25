.class Lcom/oneplus/keyguard/OpDragPanelController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpDragPanelController;->createShakeAnimator()V
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

    .line 379
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$5;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 382
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "ShakeAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$5;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 384
    return-void
.end method
