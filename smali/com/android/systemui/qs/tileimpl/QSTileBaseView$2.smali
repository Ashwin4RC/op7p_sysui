.class Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setBgAnimator(ILcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

.field final synthetic val$state:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    .line 435
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 443
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$500(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$400(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 444
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 438
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$500(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$400(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 440
    return-void
.end method
