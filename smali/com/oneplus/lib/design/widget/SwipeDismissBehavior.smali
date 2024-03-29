.class public Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;,
        Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field mAlphaEndSwipeDistance:F

.field mAlphaStartSwipeDistance:F

.field private final mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

.field mDragDismissThreshold:F

.field private mInterceptingEvents:Z

.field mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

.field private mSensitivity:F

.field private mSensitivitySet:Z

.field mSwipeDirection:I

.field mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSensitivity:F

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 85
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    .line 86
    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 87
    iput v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 208
    new-instance v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;-><init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    return-void
.end method

.method static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .line 381
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 385
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 352
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    if-nez v0, :cond_1

    .line 353
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    if-eqz v0, :cond_0

    .line 354
    iget v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSensitivity:F

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    .line 357
    :cond_1
    return-void
.end method

.method static fraction(FFF)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "value"    # F

    .line 402
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 205
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    .line 169
    .local v0, "dispatchEventToHelper":Z
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    nop

    .line 172
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 171
    invoke-virtual {p1, p2, v1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    .line 173
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    .line 174
    goto :goto_0

    .line 178
    :cond_0
    :pswitch_1
    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    .line 182
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 184
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v1, p3}, Lcom/oneplus/lib/util/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 186
    :cond_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {v0, p3}, Lcom/oneplus/lib/util/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 150
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 151
    return-void
.end method

.method public setListener(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    .line 113
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    .line 114
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 141
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 142
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 123
    .local p0, "this":Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;, "Lcom/oneplus/lib/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 124
    return-void
.end method
