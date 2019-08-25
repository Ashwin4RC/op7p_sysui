.class Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;
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

    .line 234
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->val$this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 237
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    .local v0, "value":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x96

    if-gt v0, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$200(Lcom/android/systemui/statusbar/policy/GraphLight;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v4, v5

    sub-float v4, v1, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_0
    const/16 v2, 0x32

    if-lt v0, v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    const/high16 v3, 0x437f0000    # 255.0f

    add-int/lit8 v4, v0, -0x32

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setImageAlpha(I)V

    .line 251
    :cond_1
    return-void
.end method
