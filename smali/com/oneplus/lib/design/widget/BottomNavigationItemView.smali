.class public Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final defaultMargin:I

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemPosition:I

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->design_bottom_navigation_item:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 84
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 85
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    .line 87
    sget v1, Lcom/oneplus/commonctrl/R$id;->icon:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 88
    sget v1, Lcom/oneplus/commonctrl/R$id;->smallLabel:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 89
    sget v1, Lcom/oneplus/commonctrl/R$id;->largeLabel:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 93
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setFocusable(Z)V

    .line 95
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 96
    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .locals 2
    .param p1, "smallLabelSize"    # F
    .param p2, "largeLabelSize"    # F

    .line 330
    sub-float v0, p1, p2

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    .line 331
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, v0, p2

    div-float/2addr v1, p1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    .line 332
    mul-float/2addr v0, p1

    div-float/2addr v0, p2

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    .line 333
    return-void
.end method

.method private setViewLayoutParams(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topMargin"    # I
    .param p3, "gravity"    # I

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    .local v0, "viewParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 239
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method

.method private setViewValues(Landroid/view/View;FFI)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F
    .param p4, "visibility"    # I

    .line 244
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 245
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 246
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 100
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 101
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setCheckable(Z)V

    .line 102
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    .line 103
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setEnabled(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setId(I)V

    .line 107
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 266
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 267
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    .line 270
    :cond_0
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->refreshDrawableState()V

    .line 161
    return-void
.end method

.method public setChecked(Z)V
    .locals 7
    .param p1, "checked"    # Z

    .line 165
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 170
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    const/16 v1, 0x11

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/16 v4, 0x31

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    goto/16 :goto_2

    .line 207
    :pswitch_1
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 211
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto/16 :goto_2

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 217
    goto/16 :goto_2

    .line 196
    :pswitch_2
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v3, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 201
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v2, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    goto :goto_2

    .line 172
    :pswitch_3
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    if-eqz v0, :cond_3

    .line 173
    if-eqz p1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v3, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v2, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 182
    :cond_3
    if-eqz p1, :cond_4

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_2

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 193
    nop

    .line 229
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->refreshDrawableState()V

    .line 233
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setSelected(Z)V

    .line 234
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 251
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 256
    if-eqz p1, :cond_0

    .line 257
    nop

    .line 258
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    .line 257
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    goto :goto_0

    .line 260
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    .line 262
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 278
    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 281
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 282
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 284
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-void
.end method

.method public setIconSize(I)V
    .locals 2
    .param p1, "iconSize"    # I

    .line 306
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .local v0, "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 308
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 309
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 298
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 299
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .line 337
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 338
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 342
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 115
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemPosition:I

    .line 116
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 134
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_1

    .line 135
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    .line 137
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    .local v0, "initialized":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    .line 142
    .end local v0    # "initialized":Z
    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 2
    .param p1, "shifting"    # Z

    .line 123
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    if-eq v0, p1, :cond_1

    .line 124
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    .line 126
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, "initialized":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    .line 131
    .end local v0    # "initialized":Z
    :cond_1
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 2
    .param p1, "activeTextAppearance"    # I

    .line 318
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 319
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 320
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 2
    .param p1, "inactiveTextAppearance"    # I

    .line 313
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 314
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 315
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 325
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 327
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    return-void
.end method
