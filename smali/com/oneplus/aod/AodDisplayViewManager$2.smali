.class Lcom/oneplus/aod/AodDisplayViewManager$2;
.super Ljava/lang/Object;
.source "AodDisplayViewManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/AodDisplayViewManager;->animateNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodDisplayViewManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodDisplayViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/AodDisplayViewManager;

    .line 292
    iput-object p1, p0, Lcom/oneplus/aod/AodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 295
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 296
    .local v0, "progress":F
    iget-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodDisplayViewManager;->access$200(Lcom/oneplus/aod/AodDisplayViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 297
    const/high16 v1, 0x3f800000    # 1.0f

    .line 298
    .local v1, "alpha":F
    const v2, 0x3e99999a    # 0.3f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    .line 299
    div-float v1, v0, v2

    goto :goto_0

    .line 300
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 301
    const/high16 v2, 0x40000000    # 2.0f

    sub-float v1, v2, v0

    .line 303
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v2}, Lcom/oneplus/aod/AodDisplayViewManager;->access$200(Lcom/oneplus/aod/AodDisplayViewManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 304
    return-void
.end method
