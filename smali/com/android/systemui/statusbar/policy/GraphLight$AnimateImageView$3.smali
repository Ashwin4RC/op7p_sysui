.class Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;-><init>(Lcom/android/systemui/statusbar/policy/GraphLight;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/policy/GraphLight;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;Lcom/android/systemui/statusbar/policy/GraphLight;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;->val$this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;->mCancelled:Z

    .line 269
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;->mCancelled:Z

    if-nez v0, :cond_0

    .line 274
    const-string v0, "GraphLight"

    const-string v1, "onAnimationEnd & !mCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->access$300(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;->this$1:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$400(Lcom/android/systemui/statusbar/policy/GraphLight;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;->mCancelled:Z

    .line 264
    return-void
.end method
