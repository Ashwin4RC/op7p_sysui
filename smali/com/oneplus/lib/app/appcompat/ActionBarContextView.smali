.class public Lcom/oneplus/lib/app/appcompat/ActionBarContextView;
.super Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
.source "ActionBarContextView.java"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSubtitleStyleRes:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 56
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleStyleRes:I

    .line 58
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mSubtitleStyleRes:I

    .line 61
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    .line 64
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCloseItemLayout:I

    .line 68
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 216
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 221
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onDetachedFromWindow()V

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 76
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 78
    :cond_0
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 345
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 353
    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object v6, p0

    .line 306
    invoke-static {v6}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 307
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    .line 308
    .local v0, "x":I
    :goto_0
    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingTop()I

    move-result v8

    .line 309
    .local v8, "y":I
    sub-int v1, p5, p3

    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 311
    .local v9, "contentHeight":I
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v10, 0x8

    if-eqz v1, :cond_3

    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_3

    .line 312
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 313
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v7, :cond_1

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    move v5, v1

    .line 314
    .local v5, "startMargin":I
    if-eqz v7, :cond_2

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    move v4, v1

    .line 315
    .local v4, "endMargin":I
    invoke-static {v0, v5, v7}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->next(IIZ)I

    move-result v12

    .line 316
    .end local v0    # "x":I
    .local v12, "x":I
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, v6

    move v2, v12

    move v3, v8

    move v10, v4

    move v4, v9

    .end local v4    # "endMargin":I
    .local v10, "endMargin":I
    move v13, v5

    move v5, v7

    .end local v5    # "startMargin":I
    .local v13, "startMargin":I
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v12

    .line 317
    .end local v12    # "x":I
    .restart local v0    # "x":I
    invoke-static {v0, v10, v7}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->next(IIZ)I

    move-result v0

    .line 320
    .end local v0    # "x":I
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "startMargin":I
    .local v10, "x":I
    :cond_3
    move v10, v0

    iget-object v0, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 321
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, v6

    move v2, v10

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v10, v0

    .line 324
    :cond_4
    iget-object v0, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 325
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, v6

    move v2, v10

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v10, v0

    .line 328
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    :cond_6
    sub-int v0, p4, p2

    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_3
    move v10, v0

    .line 330
    iget-object v0, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_7

    .line 331
    iget-object v1, v6, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    xor-int/lit8 v5, v7, 0x1

    move-object v0, v6

    move v2, v10

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v10, v0

    .line 333
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 226
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 227
    .local v1, "widthMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_11

    .line 232
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 233
    .local v3, "heightMode":I
    if-eqz v3, :cond_10

    .line 238
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 240
    .local v4, "contentWidth":I
    iget v5, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    if-lez v5, :cond_0

    .line 241
    iget v5, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 243
    .local v5, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 244
    .local v6, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 245
    .local v7, "availableWidth":I
    sub-int v8, v5, v6

    .line 246
    .local v8, "height":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 248
    .local v10, "childSpecHeight":I
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 249
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 250
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 251
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    sub-int/2addr v7, v13

    .line 254
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v11}, Lcom/oneplus/lib/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, v0, :cond_2

    .line 255
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 259
    :cond_2
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v11, :cond_7

    .line 260
    iget-boolean v11, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleOptional:Z

    if-eqz v11, :cond_6

    .line 261
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 262
    .local v11, "titleWidthSpec":I
    iget-object v13, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 263
    iget-object v13, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    .line 264
    .local v13, "titleWidth":I
    if-gt v13, v7, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    move v14, v12

    .line 265
    .local v14, "titleFits":Z
    :goto_1
    if-eqz v14, :cond_4

    .line 266
    sub-int/2addr v7, v13

    .line 268
    :cond_4
    iget-object v15, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_5

    move v2, v12

    goto :goto_2

    :cond_5
    const/16 v16, 0x8

    move/from16 v2, v16

    :goto_2
    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    .end local v11    # "titleWidthSpec":I
    .end local v13    # "titleWidth":I
    .end local v14    # "titleFits":Z
    goto :goto_3

    .line 270
    :cond_6
    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v7, v10, v12}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 274
    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 275
    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 276
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x2

    if-eq v11, v13, :cond_8

    .line 277
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_4

    :cond_8
    move v11, v9

    .line 278
    .local v11, "customWidthMode":I
    :goto_4
    iget v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_9

    .line 279
    iget v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_5

    :cond_9
    move v14, v7

    .line 280
    .local v14, "customWidth":I
    :goto_5
    iget v15, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v15, v13, :cond_a

    .line 281
    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_6

    :cond_a
    move/from16 v17, v9

    :goto_6
    move/from16 v9, v17

    .line 282
    .local v9, "customHeightMode":I
    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v13, :cond_b

    .line 283
    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_7

    :cond_b
    move v13, v8

    .line 284
    .local v13, "customHeight":I
    :goto_7
    iget-object v15, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 285
    move/from16 v19, v1

    invoke-static {v13, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 284
    .end local v1    # "widthMode":I
    .local v19, "widthMode":I
    invoke-virtual {v15, v12, v1}, Landroid/view/View;->measure(II)V

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "customHeightMode":I
    .end local v11    # "customWidthMode":I
    .end local v13    # "customHeight":I
    .end local v14    # "customWidth":I
    goto :goto_8

    .line 288
    .end local v19    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_c
    move/from16 v19, v1

    .end local v1    # "widthMode":I
    .restart local v19    # "widthMode":I
    :goto_8
    iget v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    if-gtz v1, :cond_f

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getChildCount()I

    move-result v2

    .line 291
    .local v2, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_9
    move/from16 v9, v18

    .end local v18    # "i":I
    .local v9, "i":I
    if-ge v9, v2, :cond_e

    .line 292
    invoke-virtual {v0, v9}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 293
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    .line 294
    .local v12, "paddedViewHeight":I
    if-le v12, v1, :cond_d

    .line 295
    move v1, v12

    .line 291
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "paddedViewHeight":I
    :cond_d
    add-int/lit8 v18, v9, 0x1

    .end local v9    # "i":I
    .restart local v18    # "i":I
    goto :goto_9

    .line 298
    .end local v18    # "i":I
    :cond_e
    invoke-virtual {v0, v4, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setMeasuredDimension(II)V

    .line 299
    .end local v1    # "measuredHeight":I
    .end local v2    # "count":I
    goto :goto_a

    .line 300
    :cond_f
    invoke-virtual {v0, v4, v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setMeasuredDimension(II)V

    .line 302
    :goto_a
    return-void

    .line 234
    .end local v4    # "contentWidth":I
    .end local v5    # "maxHeight":I
    .end local v6    # "verticalPadding":I
    .end local v7    # "availableWidth":I
    .end local v8    # "height":I
    .end local v10    # "childSpecHeight":I
    .end local v19    # "widthMode":I
    .local v1, "widthMode":I
    :cond_10
    move/from16 v19, v1

    .end local v1    # "widthMode":I
    .restart local v19    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    .end local v3    # "heightMode":I
    .end local v19    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_11
    move/from16 v19, v1

    .end local v1    # "widthMode":I
    .restart local v19    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 81
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->mContentHeight:I

    .line 82
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 337
    const/4 v0, 0x0

    return v0
.end method
