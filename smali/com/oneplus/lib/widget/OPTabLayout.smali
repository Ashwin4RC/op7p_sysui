.class public Lcom/oneplus/lib/widget/OPTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    }
.end annotation


# instance fields
.field private fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

.field private mContentInsetStart:I

.field private mMode:I

.field private final mRequestedTabMaxWidth:I

.field private final mTabBackgroundResId:I

.field private mTabGravity:I

.field private mTabHorizontalSpacing:I

.field private mTabMaxWidth:I

.field private mTabMinWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 211
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPTabLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 215
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    .line 189
    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    .line 217
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->setFillViewport(Z)V

    .line 226
    new-instance v2, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    .line 227
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout;->addView(Landroid/view/View;II)V

    .line 229
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout:[I

    sget v3, Lcom/oneplus/commonctrl/R$style;->Oneplus_Widget_Design_OPTabLayout:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 232
    .local v2, "a":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabIndicatorHeight:I

    .line 233
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 232
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 234
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabIndicatorColor:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 236
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextAppearance:I

    sget v4, Lcom/oneplus/commonctrl/R$style;->Oneplus_TextAppearance_Design_Tab:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    .line 239
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPadding:I

    .line 240
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    .line 241
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingStart:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    .line 243
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingTop:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    .line 245
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingEnd:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    .line 247
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingBottom:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    .line 251
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout;->loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 253
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 258
    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabSelectedTextColor:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 263
    .local v3, "selected":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4, v3}, Lcom/oneplus/lib/widget/OPTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 266
    .end local v3    # "selected":I
    :cond_1
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMinWidth:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    .line 267
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMaxWidth:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    .line 268
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabBackground:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabBackgroundResId:I

    .line 269
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabContentStart:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    .line 270
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_horizontalSpacing:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabHorizontalSpacing:I

    .line 271
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMode:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    .line 272
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabGravity:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    .line 273
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    .line 277
    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout;

    .line 84
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout;

    .line 84
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout;
    .param p1, "x1"    # I

    .line 84
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout;

    .line 84
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 3

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, "paddingStart":I
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-nez v1, :cond_0

    .line 824
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setPaddingRelative(IIII)V

    .line 828
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 830
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setGravity(I)V

    .line 831
    goto :goto_0

    .line 833
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setGravity(I)V

    .line 837
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    .line 838
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .line 1507
    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 1508
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 1509
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 1511
    .local v2, "i":I
    sget-object v3, Lcom/oneplus/lib/widget/OPTabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 1512
    aput p1, v0, v2

    .line 1513
    add-int/lit8 v2, v2, 0x1

    .line 1516
    sget-object v3, Lcom/oneplus/lib/widget/OPTabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    .line 1517
    aput p0, v0, v2

    .line 1518
    add-int/lit8 v2, v2, 0x1

    .line 1520
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .line 653
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getDefaultMaxWidth()I
    .locals 2

    .line 708
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    return v0

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "textAppearanceResId"    # I

    .line 1524
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1527
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1527
    return-object v1

    .line 1529
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 643
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 645
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 647
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 648
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 650
    :goto_0
    return-void
.end method

.method private updateTabViewsLayoutParams()V
    .locals 3

    .line 841
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 843
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 844
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 841
    .end local v1    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabCount()I
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 660
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->tab_layout_default_height_material:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    .local v0, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 663
    :cond_1
    nop

    .line 664
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 663
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 666
    nop

    .line 673
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 675
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 678
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 679
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v2

    .line 681
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 684
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingTop()I

    move-result v4

    .line 685
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 684
    invoke-static {p2, v4, v5}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 686
    .local v4, "childHeightMeasureSpec":I
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 687
    .local v3, "childWidthMeasureSpec":I
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 693
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "width":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v4    # "childHeightMeasureSpec":I
    :cond_2
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    .line 694
    .local v1, "maxTabWidth":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getDefaultMaxWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 695
    .local v2, "defaultTabMaxWidth":I
    if-eqz v1, :cond_3

    if-le v1, v2, :cond_4

    .line 697
    :cond_3
    move v1, v2

    .line 700
    :cond_4
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    if-eq v3, v1, :cond_5

    .line 702
    iput v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    .line 703
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 705
    :cond_5
    return-void
.end method
