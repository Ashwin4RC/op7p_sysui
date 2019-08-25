.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

.field mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

.field private mClosingActionMenu:Z

.field private mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

.field private mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/view/ViewPropertyAnimator;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

.field private mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method private applyFixedSizeWindow()V
    .locals 6

    .line 515
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 521
    .local v0, "cfl":Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 522
    .local v1, "windowDecor":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 523
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 524
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 522
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 526
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 527
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 528
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 530
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 532
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 531
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 534
    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 536
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 535
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 538
    :cond_1
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 539
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 540
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 539
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 542
    :cond_2
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 544
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 543
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 546
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 548
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->requestLayout()V

    .line 549
    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 10

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 334
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 340
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    goto :goto_0

    .line 342
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 346
    :cond_1
    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 349
    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 352
    :cond_3
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mIsFloating:Z

    .line 353
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 358
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 359
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 362
    .local v5, "subDecor":Landroid/view/ViewGroup;
    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    const/4 v7, 0x0

    if-nez v6, :cond_9

    .line 363
    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v6, :cond_4

    .line 365
    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_abc_dialog_title_material:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    .line 369
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    goto/16 :goto_4

    .line 370
    :cond_4
    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v6, :cond_d

    .line 376
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 377
    .local v6, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v9, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 379
    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_5

    .line 380
    new-instance v3, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    iget v9, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v8, v9}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v3, "themedContext":Landroid/content/Context;
    goto :goto_1

    .line 382
    .end local v3    # "themedContext":Landroid/content/Context;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 386
    .restart local v3    # "themedContext":Landroid/content/Context;
    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$layout;->op_abc_screen_toolbar:I

    .line 387
    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/view/ViewGroup;

    .line 389
    sget v8, Lcom/oneplus/commonctrl/R$id;->decor_content_parent:I

    .line 390
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iput-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    .line 391
    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 396
    iget-boolean v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    if-eqz v8, :cond_6

    .line 397
    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v8, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->initFeature(I)V

    .line 399
    :cond_6
    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureProgress:Z

    if-eqz v4, :cond_7

    .line 400
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    const/4 v8, 0x2

    invoke-interface {v4, v8}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->initFeature(I)V

    .line 402
    :cond_7
    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_8

    .line 403
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    const/4 v8, 0x5

    invoke-interface {v4, v8}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->initFeature(I)V

    .line 405
    .end local v3    # "themedContext":Landroid/content/Context;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_8
    goto :goto_4

    .line 407
    :cond_9
    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-eqz v3, :cond_a

    .line 408
    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 413
    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    .local v3, "subDecor":Landroid/view/ViewGroup;
    :goto_2
    move-object v5, v3

    goto :goto_3

    .line 411
    .end local v3    # "subDecor":Landroid/view/ViewGroup;
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_a
    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_abc_screen_simple:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_2

    .line 413
    :goto_3
    sget v3, Lcom/oneplus/commonctrl/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 414
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    if-eqz v3, :cond_b

    .line 415
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    .line 416
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 418
    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_c

    .line 421
    new-instance v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$2;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$2;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_4

    .line 443
    :cond_c
    move-object v3, v5

    check-cast v3, Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup;

    new-instance v4, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$3;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$3;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    invoke-interface {v3, v4}, Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    .line 453
    :cond_d
    :goto_4
    if-eqz v5, :cond_11

    .line 464
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-nez v3, :cond_e

    .line 465
    sget v3, Lcom/oneplus/commonctrl/R$id;->title:I

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    .line 469
    :cond_e
    invoke-static {v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 471
    sget v3, Lcom/oneplus/commonctrl/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 474
    .local v3, "contentView":Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    const v6, 0x1020002

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 475
    .local v4, "windowContentView":Landroid/view/ViewGroup;
    if-eqz v4, :cond_10

    .line 478
    :goto_5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_f

    .line 479
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 480
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 481
    invoke-virtual {v3, v8}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->addView(Landroid/view/View;)V

    .line 482
    .end local v8    # "child":Landroid/view/View;
    goto :goto_5

    .line 486
    :cond_f
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 487
    invoke-virtual {v3, v6}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->setId(I)V

    .line 491
    instance-of v2, v4, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_10

    .line 492
    move-object v2, v4

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 497
    :cond_10
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 499
    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$4;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$4;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->setAttachListener(Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;)V

    .line 509
    return-object v5

    .line 454
    .end local v3    # "contentView":Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
    .end local v4    # "windowContentView":Landroid/view/ViewGroup;
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", windowActionBarOverlay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", android:windowIsFloating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mIsFloating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", windowActionModeOverlay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", windowNoTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureSubDecor()V
    .locals 3

    .line 304
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v0, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    .line 308
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 309
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->applyFixedSizeWindow()V

    .line 315
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    .line 324
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 325
    .local v1, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v2, :cond_2

    .line 326
    :cond_1
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    .line 329
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v1    # "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_2
    return-void
.end method

.method private initializePanelContent(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1286
    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1288
    return v1

    .line 1291
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1292
    return v2

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    if-nez v0, :cond_2

    .line 1296
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    .line 1299
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->getListMenuView(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v0

    .line 1301
    .local v0, "menuView":Lcom/oneplus/lib/menu/MenuView;
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1303
    iget-object v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method private initializePanelDecor(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 2
    .param p1, "st"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1191
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1192
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;

    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1193
    iget v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->elevation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->elevation:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 1196
    :cond_0
    const/16 v0, 0x51

    iput v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    .line 1197
    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 7
    .param p1, "st"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1245
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1247
    .local v0, "context":Landroid/content/Context;
    iget v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v1, :cond_4

    .line 1249
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1250
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1251
    .local v3, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v4, Lcom/oneplus/commonctrl/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1253
    const/4 v4, 0x0

    .line 1254
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 1255
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1256
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1257
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1258
    sget v5, Lcom/oneplus/commonctrl/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    .line 1261
    :cond_1
    sget v5, Lcom/oneplus/commonctrl/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1265
    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    .line 1266
    if-nez v4, :cond_2

    .line 1267
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1268
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1270
    :cond_2
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1272
    :cond_3
    if-eqz v4, :cond_4

    .line 1273
    new-instance v5, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v5

    .line 1274
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1278
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    new-instance v1, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1279
    .local v1, "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    invoke-virtual {v1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 1280
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 1282
    return v2
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .line 1606
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    .line 1608
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1610
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    .line 1612
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1460
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1461
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1462
    .local v0, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    iget-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_0

    .line 1463
    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1467
    .end local v0    # "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1471
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1472
    return v1

    .line 1475
    :cond_0
    const/4 v0, 0x0

    .line 1476
    .local v0, "handled":Z
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1477
    .local v3, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    .line 1478
    invoke-interface {v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->canShowOverflowMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1479
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1480
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1481
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1482
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->showOverflowMenu()Z

    move-result v0

    goto :goto_1

    .line 1485
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->hideOverflowMenu()Z

    move-result v0

    goto :goto_1

    .line 1488
    :cond_2
    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_5

    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1494
    :cond_3
    iget-boolean v2, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_6

    .line 1495
    const/4 v2, 0x1

    .line 1496
    .local v2, "show":Z
    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_4

    .line 1499
    iput-boolean v1, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1500
    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1503
    :cond_4
    if-eqz v2, :cond_6

    .line 1505
    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->openPanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1506
    const/4 v0, 0x1

    .end local v2    # "show":Z
    goto :goto_1

    .line 1491
    :cond_5
    :goto_0
    iget-boolean v0, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1493
    invoke-virtual {p0, v3, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1511
    :cond_6
    :goto_1
    if-eqz v0, :cond_8

    .line 1512
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1514
    .local v2, "audioManager":Landroid/media/AudioManager;
    if-eqz v2, :cond_7

    .line 1515
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2

    .line 1517
    :cond_7
    const-string v1, "AppCompatDelegate"

    const-string v4, "Couldn\'t get audio manager"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    :cond_8
    :goto_2
    return v0
.end method

.method private openPanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19
    .param p1, "st"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1093
    iget-boolean v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1098
    :cond_0
    iget v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 1099
    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1100
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 1101
    .local v5, "config":Landroid/content/res/Configuration;
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    .line 1103
    .local v6, "isXLarge":Z
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    .line 1106
    .local v7, "isHoneycombApp":Z
    :goto_1
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 1107
    return-void

    .line 1111
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "isXLarge":Z
    .end local v7    # "isHoneycombApp":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 1112
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_4

    iget v5, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1114
    invoke-virtual {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1115
    return-void

    .line 1118
    :cond_4
    iget-object v5, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 1119
    .local v5, "wm":Landroid/view/WindowManager;
    if-nez v5, :cond_5

    .line 1120
    return-void

    .line 1124
    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1125
    return-void

    .line 1128
    :cond_6
    const/4 v6, -0x2

    .line 1129
    .local v6, "width":I
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    iget-boolean v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    goto :goto_2

    .line 1165
    :cond_7
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v7, :cond_10

    .line 1168
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1169
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_10

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_10

    .line 1170
    const/4 v6, -0x1

    .line 1170
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_3

    .line 1130
    :cond_8
    :goto_2
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v7, :cond_a

    .line 1132
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->initializePanelDecor(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v7, :cond_b

    .line 1133
    :cond_9
    return-void

    .line 1134
    :cond_a
    iget-boolean v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_b

    .line 1136
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1140
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->initializePanelContent(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_4

    .line 1144
    :cond_c
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1145
    .restart local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_d

    .line 1146
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v7, v8

    .line 1149
    :cond_d
    iget v8, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    .line 1150
    .local v8, "backgroundResId":I
    iget-object v9, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1152
    iget-object v9, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1153
    .local v9, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v9, :cond_e

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_e

    .line 1154
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1156
    :cond_e
    iget-object v10, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    iget-object v10, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1163
    iget-object v10, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 1165
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "backgroundResId":I
    .end local v9    # "shownPanelParent":Landroid/view/ViewParent;
    :cond_f
    nop

    .line 1174
    :cond_10
    :goto_3
    iput-boolean v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1176
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x2

    iget v14, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->x:I

    iget v15, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->y:I

    const/16 v16, 0x3ea

    const/high16 v17, 0x820000

    const/16 v18, -0x3

    move-object v11, v3

    move v12, v6

    invoke-direct/range {v11 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1183
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1184
    iget v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1186
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v5, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    iput-boolean v4, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1188
    return-void

    .line 1141
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    :goto_4
    return-void

    .line 1094
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v6    # "width":I
    :cond_12
    :goto_5
    return-void
.end method

.method private performPanelShortcut(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "st"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1582
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    const/4 v0, 0x0

    return v0

    .line 1586
    :cond_0
    const/4 v0, 0x0

    .line 1590
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_2

    .line 1592
    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/oneplus/lib/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1595
    :cond_2
    if-eqz v0, :cond_3

    .line 1597
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-nez v1, :cond_3

    .line 1598
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1602
    :cond_3
    return v0
.end method

.method private preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "st"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1307
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1308
    return v1

    .line 1311
    :cond_0
    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1312
    return v2

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eq v0, p1, :cond_2

    .line 1317
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1320
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1322
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    .line 1323
    iget v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1326
    :cond_3
    iget v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    .line 1329
    .local v3, "isActionBarMenu":Z
    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v4, :cond_6

    .line 1332
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenuPrepared()V

    .line 1335
    :cond_6
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_15

    if-eqz v3, :cond_7

    .line 1336
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v4

    instance-of v4, v4, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    if-nez v4, :cond_15

    .line 1339
    :cond_7
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_f

    .line 1340
    :cond_8
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v4, :cond_a

    .line 1341
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->initializePanelMenu(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v4, :cond_a

    .line 1342
    :cond_9
    return v1

    .line 1346
    :cond_a
    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v4, :cond_c

    .line 1347
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    if-nez v4, :cond_b

    .line 1348
    new-instance v4, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    .line 1350
    :cond_b
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 1355
    :cond_c
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1356
    iget v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1358
    invoke-virtual {p1, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 1360
    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v2, :cond_d

    .line 1362
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 1365
    :cond_d
    return v1

    .line 1368
    :cond_e
    iput-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1373
    :cond_f
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1377
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    .line 1378
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1379
    iput-object v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1383
    :cond_10
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1384
    if-eqz v3, :cond_11

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v2, :cond_11

    .line 1387
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 1389
    :cond_11
    iget-object v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1390
    return v1

    .line 1395
    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    goto :goto_2

    :cond_13
    const/4 v4, -0x1

    .line 1394
    :goto_2
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 1396
    .local v4, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v2, :cond_14

    move v5, v2

    goto :goto_3

    :cond_14
    move v5, v1

    :goto_3
    iput-boolean v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    .line 1397
    iget-object v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1398
    iget-object v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1402
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_15
    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1403
    iput-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1404
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1406
    return v2
.end method

.method private reopenMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 6
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .line 1201
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1202
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    .line 1203
    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1207
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v3}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1227
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v3}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->hideOverflowMenu()Z

    .line 1228
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1229
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1230
    .local v1, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    iget-object v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .end local v1    # "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    goto :goto_1

    .line 1208
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1210
    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    .line 1212
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1213
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1216
    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1220
    .restart local v1    # "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 1221
    invoke-interface {v0, v2, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1222
    iget-object v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1223
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->showOverflowMenu()Z

    .line 1225
    .end local v1    # "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_4
    nop

    .line 1233
    :cond_5
    :goto_1
    return-void

    .line 1236
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1238
    .local v0, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    iput-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1239
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1241
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->openPanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1242
    return-void
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 2
    .param p1, "featureId"    # I

    .line 1725
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1726
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/16 v0, 0x6c

    return v0

    .line 1729
    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 1730
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/16 v0, 0x6d

    return v0

    .line 1735
    :cond_1
    return p1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 2

    .line 1718
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 1722
    return-void

    .line 1719
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method callOnPanelClosed(ILcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 1525
    if-nez p3, :cond_1

    .line 1527
    if-nez p2, :cond_0

    .line 1528
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1533
    :cond_0
    if-eqz p2, :cond_1

    .line 1535
    iget-object p3, p2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 1540
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_2

    .line 1541
    return-void

    .line 1543
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1547
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1549
    :cond_3
    return-void
.end method

.method checkCloseActionMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 1410
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 1411
    return-void

    .line 1414
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    .line 1415
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->dismissPopups()V

    .line 1416
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1417
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1420
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    .line 1421
    return-void
.end method

.method closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .line 1424
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1425
    return-void
.end method

.method closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .locals 3
    .param p1, "st"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .line 1428
    if-eqz p2, :cond_0

    iget v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    .line 1429
    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->checkCloseActionMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 1431
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1435
    .local v0, "wm":Landroid/view/WindowManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1436
    iget-object v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1438
    if-eqz p2, :cond_1

    .line 1439
    iget v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->callOnPanelClosed(ILcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1443
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1444
    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1445
    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1448
    iput-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1452
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1454
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-ne v2, p1, :cond_2

    .line 1455
    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1457
    :cond_2
    return-void
.end method

.method dismissPopups()V
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->dismissPopups()V

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1748
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1749
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1751
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    goto :goto_0

    .line 1752
    :catch_0
    move-exception v0

    .line 1757
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1759
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 1761
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1762
    .local v0, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1763
    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close()V

    .line 1765
    :cond_3
    return-void
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 948
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    .line 950
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    return v1

    .line 955
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 956
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 957
    .local v2, "action":I
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 959
    .local v1, "isDown":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3
.end method

.method endOnGoingFadeAnimation()V
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 890
    :cond_0
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1552
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1553
    .local v0, "panels":[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1554
    .local v2, "N":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1555
    aget-object v3, v0, v1

    .line 1556
    .local v3, "panel":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1557
    return-object v3

    .line 1554
    .end local v3    # "panel":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1560
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 1565
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v0, v1

    if-gt v0, p1, :cond_2

    .line 1566
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1567
    .local v0, "nar":[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v1, :cond_1

    .line 1568
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1570
    :cond_1
    move-object v1, v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1573
    .end local v0    # "nar":[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_2
    aget-object v0, v1, p1

    .line 1574
    .local v0, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-nez v0, :cond_3

    .line 1575
    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-direct {v2, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    move-object v0, v2

    aput-object v2, v1, p1

    .line 1577
    :cond_3
    return-object v0
.end method

.method public initWindowDecorActionBar()V
    .locals 3

    .line 156
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 157
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    .line 167
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 170
    :cond_3
    return-void

    .line 158
    :cond_4
    :goto_1
    return-void
.end method

.method onBackPressed()Z
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->finish()V

    .line 896
    return v1

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    .line 901
    .local v0, "ab":Lcom/oneplus/lib/app/appcompat/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->collapseActionView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    return v1

    .line 906
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 990
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 992
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 996
    return v1

    .line 1000
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 1006
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_3

    .line 1009
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    .line 1011
    :cond_3
    return v2
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .line 912
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    .line 913
    .local v0, "ab":Lcom/oneplus/lib/app/appcompat/ActionBar;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    return v1

    .line 919
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v2, :cond_2

    .line 920
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->performPanelShortcut(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 922
    .local v2, "handled":Z
    if-eqz v2, :cond_2

    .line 923
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v3, :cond_1

    .line 924
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    iput-boolean v1, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 926
    :cond_1
    return v1

    .line 934
    .end local v2    # "handled":Z
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 935
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    .line 936
    .local v2, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 937
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-direct {p0, v2, v4, p2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->performPanelShortcut(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v4

    .line 938
    .local v4, "handled":Z
    iput-boolean v3, v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 939
    if-eqz v4, :cond_3

    .line 940
    return v1

    .line 943
    .end local v2    # "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .end local v4    # "handled":Z
    :cond_3
    return v3
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 963
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 965
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    .line 966
    return v1

    .line 968
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 969
    .local v0, "wasLongPressBackDown":Z
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 971
    invoke-virtual {p0, v2, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 972
    .local v3, "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_3

    .line 973
    if-nez v0, :cond_2

    .line 977
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 979
    :cond_2
    return v1

    .line 981
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 982
    return v1

    .line 986
    .end local v0    # "wasLongPressBackDown":Z
    .end local v3    # "st":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_4
    :goto_0
    return v2
.end method

.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 655
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 656
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 658
    .local v1, "panel":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 659
    iget v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 662
    .end local v1    # "panel":Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 667
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->reopenMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 668
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .line 512
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 615
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_2
    :goto_0
    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 3
    .param p1, "featureId"    # I

    .line 553
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 555
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 556
    return v1

    .line 558
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    .line 560
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 563
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 590
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0

    .line 569
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 570
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    .line 571
    return v2

    .line 565
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 566
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 567
    return v2

    .line 573
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 574
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    .line 575
    return v2

    .line 581
    :sswitch_3
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 582
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    .line 583
    return v2

    .line 577
    :sswitch_4
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 578
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureProgress:Z

    .line 579
    return v2

    .line 585
    :sswitch_5
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 586
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    .line 587
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method updateStatusGuard(I)I
    .locals 11
    .param p1, "insetTop"    # I

    .line 1648
    const/4 v0, 0x0

    .line 1650
    .local v0, "showStatusGuard":Z
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 1651
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_8

    .line 1652
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    .line 1653
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1654
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x0

    .line 1656
    .local v3, "mlpChanged":Z
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1657
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 1658
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1659
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1661
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1662
    .local v4, "insets":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1663
    .local v5, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v4, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1665
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v6, v4, v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1666
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_1

    move v6, p1

    goto :goto_0

    :cond_1
    move v6, v2

    .line 1667
    .local v6, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v6, :cond_3

    .line 1668
    const/4 v3, 0x1

    .line 1669
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1671
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_2

    .line 1672
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    .line 1673
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$color;->abc_input_method_navigation_guard:I

    .line 1674
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 1673
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1675
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1679
    :cond_2
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1680
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_3

    .line 1681
    iput p1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1682
    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    move v0, v7

    .line 1695
    iget-boolean v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-nez v7, :cond_5

    if-eqz v0, :cond_5

    .line 1696
    const/4 p1, 0x0

    .line 1698
    .end local v4    # "insets":Landroid/graphics/Rect;
    .end local v5    # "localInsets":Landroid/graphics/Rect;
    .end local v6    # "newMargin":I
    :cond_5
    goto :goto_3

    .line 1700
    :cond_6
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_7

    .line 1701
    const/4 v3, 0x1

    .line 1702
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1705
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 1706
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1710
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "mlpChanged":Z
    :cond_8
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 1711
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    :cond_a
    return p1
.end method
