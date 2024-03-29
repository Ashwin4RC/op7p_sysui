.class public Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field mScrollFlags:I

.field mScrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 678
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 661
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 679
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 665
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 661
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 666
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 667
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_Layout_op_layout_scrollFlags:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 668
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_Layout_op_layout_scrollInterpolator:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_Layout_op_layout_scrollInterpolator:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 671
    .local v1, "resId":I
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 674
    .end local v1    # "resId":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 675
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 686
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 687
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 690
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 661
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 691
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 694
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 661
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 695
    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 1

    .line 727
    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method isCollapsible()Z
    .locals 2

    .line 758
    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
