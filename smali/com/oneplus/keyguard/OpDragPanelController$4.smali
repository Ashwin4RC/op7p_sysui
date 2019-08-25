.class Lcom/oneplus/keyguard/OpDragPanelController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpDragPanelController;->createHintAnimation()V
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

    .line 344
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 347
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$2000(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070528

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 348
    .local v0, "transY":F
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$2100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$2100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 350
    return-void
.end method
