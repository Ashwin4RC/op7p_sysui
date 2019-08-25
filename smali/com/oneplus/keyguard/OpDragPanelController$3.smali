.class Lcom/oneplus/keyguard/OpDragPanelController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpDragPanelController;->getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;
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

    .line 316
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$3;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 319
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 320
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$3;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$3;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setScaleX(F)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$3;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setScaleY(F)V

    .line 325
    return-void
.end method
