.class Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;
.super Ljava/lang/Object;
.source "GraphLight.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;-><init>(Lcom/android/systemui/statusbar/policy/GraphLight;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/policy/GraphLight;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;Lcom/android/systemui/statusbar/policy/GraphLight;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->val$this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 215
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->access$100(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;)I

    .line 218
    const/16 v1, 0xe1

    if-gt v0, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$200(Lcom/android/systemui/statusbar/policy/GraphLight;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$200(Lcom/android/systemui/statusbar/policy/GraphLight;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v3, v0

    const/high16 v5, 0x43610000    # 225.0f

    div-float/2addr v3, v5

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_0
    const/16 v1, 0x96

    if-gt v0, v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    const/high16 v2, 0x437f0000    # 255.0f

    int-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setImageAlpha(I)V

    .line 229
    :cond_1
    return-void
.end method
