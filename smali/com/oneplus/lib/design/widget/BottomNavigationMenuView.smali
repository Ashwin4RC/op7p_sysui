.class public Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroid/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    .line 52
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 68
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 92
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 94
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 96
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 98
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHeight:I

    .line 99
    const v3, 0x1010038

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 101
    new-instance v3, Landroid/transition/AutoTransition;

    invoke-direct {v3}, Landroid/transition/AutoTransition;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    .line 102
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    invoke-virtual {v3, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    const-wide/16 v3, 0x73

    invoke-virtual {v0, v3, v4}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 104
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    new-instance v3, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    new-instance v3, Lcom/oneplus/lib/design/widget/TextScale;

    invoke-direct {v3}, Lcom/oneplus/lib/design/widget/TextScale;-><init>()V

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 107
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 118
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method private getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    .line 568
    .local v0, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    if-nez v0, :cond_0

    .line 569
    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 571
    :cond_0
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 3
    .param p1, "labelVisibilityMode"    # I
    .param p2, "childCount"    # I

    .line 579
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 580
    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    .line 579
    :goto_0
    move v0, v1

    goto :goto_1

    .line 580
    :cond_0
    goto :goto_1

    .line 581
    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 579
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    .line 485
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->removeAllViews()V

    .line 486
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 488
    .local v4, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    if-eqz v4, :cond_0

    .line 489
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v5, v4}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 487
    .end local v4    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 494
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 495
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    .line 497
    return-void

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    .line 500
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v0

    .line 501
    .local v0, "shifting":Z
    move v2, v1

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 502
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 503
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 504
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 505
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    move-result-object v3

    .line 506
    .local v3, "child":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aput-object v3, v4, v2

    .line 507
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 508
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    .line 510
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 511
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 512
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 513
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 514
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 515
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 517
    :cond_3
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    .line 519
    :goto_2
    invoke-virtual {v3, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    .line 520
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 521
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 522
    invoke-virtual {v3, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemPosition(I)V

    .line 523
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 501
    .end local v3    # "child":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    .end local v2    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 527
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 528
    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "baseColorThemeAttr"    # I

    .line 461
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 462
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 463
    return-object v3

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 466
    .local v1, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 467
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 468
    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    return-object v3

    .line 471
    :cond_1
    iget v3, v0, Landroid/util/TypedValue;->data:I

    .line 472
    .local v3, "colorPrimary":I
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 473
    .local v4, "defaultColor":I
    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v6, 0x3

    new-array v7, v6, [[I

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v8, v7, v2

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->EMPTY_STATE_SET:[I

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [I

    sget-object v8, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    .line 476
    invoke-virtual {v1, v8, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v9

    aput v3, v6, v2

    aput v4, v6, v10

    invoke-direct {v5, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 473
    return-object v5
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    return v0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 123
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 124
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getChildCount()I

    move-result v0

    .line 207
    .local v0, "count":I
    sub-int v1, p4, p2

    .line 208
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 209
    .local v2, "height":I
    const/4 v3, 0x0

    .line 210
    .local v3, "used":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "used":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 211
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 212
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 213
    goto :goto_2

    .line 215
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 216
    sub-int v7, v1, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v1, v5

    invoke-virtual {v6, v7, v4, v8, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v5, v4, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 220
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 210
    .end local v6    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 128
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 130
    .local v1, "width":I
    iget-object v2, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 132
    .local v2, "visibleCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getChildCount()I

    move-result v3

    .line 134
    .local v3, "totalCount":I
    iget v4, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHeight:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 136
    .local v4, "heightSpec":I
    iget v6, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-direct {v0, v6, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v6

    const/16 v7, 0x8

    const/4 v9, 0x1

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    if-eqz v6, :cond_7

    .line 137
    iget v6, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 138
    .local v6, "activeChild":Landroid/view/View;
    iget v10, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 139
    .local v10, "activeItemWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_0

    .line 142
    iget v11, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    const/high16 v12, -0x80000000

    .line 143
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 142
    invoke-virtual {v6, v11, v4}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 146
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_1

    move v11, v9

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    sub-int v11, v2, v11

    .line 147
    .local v11, "inactiveCount":I
    iget v12, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v12, v11

    sub-int v12, v1, v12

    .line 148
    .local v12, "activeMaxAvailable":I
    iget v13, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 149
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 150
    .local v13, "activeWidth":I
    sub-int v14, v1, v13

    .line 151
    if-nez v11, :cond_2

    move v15, v9

    goto :goto_1

    :cond_2
    move v15, v11

    :goto_1
    div-int/2addr v14, v15

    .line 152
    .local v14, "inactiveMaxAvailable":I
    iget v15, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 153
    .local v15, "inactiveWidth":I
    sub-int v16, v1, v13

    mul-int v17, v15, v11

    sub-int v16, v16, v17

    .line 155
    .local v16, "extra":I
    move/from16 v17, v16

    const/16 v16, 0x0

    .local v16, "i":I
    .local v17, "extra":I
    :goto_2
    move/from16 v18, v16

    .end local v16    # "i":I
    .local v18, "i":I
    move/from16 v5, v18

    if-ge v5, v3, :cond_6

    .line 156
    .end local v18    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v7, :cond_4

    .line 157
    iget-object v8, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    iget v7, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    if-ne v5, v7, :cond_3

    move v7, v13

    goto :goto_3

    :cond_3
    move v7, v15

    :goto_3
    aput v7, v8, v5

    .line 161
    if-lez v17, :cond_5

    .line 162
    iget-object v7, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aget v8, v7, v5

    add-int/2addr v8, v9

    aput v8, v7, v5

    .line 163
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .line 166
    :cond_4
    iget-object v7, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    .line 155
    :cond_5
    :goto_4
    add-int/lit8 v16, v5, 0x1

    .end local v5    # "i":I
    .restart local v16    # "i":I
    const/high16 v5, 0x40000000    # 2.0f

    const/16 v7, 0x8

    goto :goto_2

    .line 169
    .end local v6    # "activeChild":Landroid/view/View;
    .end local v10    # "activeItemWidth":I
    .end local v11    # "inactiveCount":I
    .end local v12    # "activeMaxAvailable":I
    .end local v13    # "activeWidth":I
    .end local v14    # "inactiveMaxAvailable":I
    .end local v15    # "inactiveWidth":I
    .end local v16    # "i":I
    .end local v17    # "extra":I
    :cond_6
    goto :goto_8

    .line 170
    :cond_7
    if-nez v2, :cond_8

    move v5, v9

    goto :goto_5

    :cond_8
    move v5, v2

    :goto_5
    div-int v5, v1, v5

    .line 171
    .local v5, "maxAvailable":I
    iget v6, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 172
    .local v6, "childWidth":I
    mul-int v7, v6, v2

    sub-int v7, v1, v7

    .line 173
    .local v7, "extra":I
    move v8, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v8, "extra":I
    :goto_6
    if-ge v7, v3, :cond_b

    .line 174
    invoke-virtual {v0, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_9

    .line 175
    iget-object v10, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v10, v7

    .line 176
    if-lez v8, :cond_a

    .line 177
    iget-object v10, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aget v11, v10, v7

    add-int/2addr v11, v9

    aput v11, v10, v7

    .line 178
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 181
    :cond_9
    iget-object v10, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    const/4 v11, 0x0

    aput v11, v10, v7

    .line 173
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 186
    .end local v5    # "maxAvailable":I
    .end local v6    # "childWidth":I
    .end local v7    # "i":I
    .end local v8    # "extra":I
    :cond_b
    :goto_8
    const/4 v5, 0x0

    .line 187
    .local v5, "totalWidth":I
    move v6, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v6, "totalWidth":I
    :goto_9
    if-ge v5, v3, :cond_d

    .line 188
    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 189
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_c

    .line 190
    goto :goto_a

    .line 192
    :cond_c
    iget-object v8, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aget v8, v8, v5

    .line 193
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 192
    invoke-virtual {v7, v8, v4}, Landroid/view/View;->measure(II)V

    .line 194
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 195
    .local v8, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v6, v10

    .line 187
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 198
    .end local v5    # "i":I
    :cond_d
    nop

    .line 200
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 199
    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    iget v8, v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHeight:I

    .line 201
    invoke-static {v8, v4, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 198
    invoke-virtual {v0, v5, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 202
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 235
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 238
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 237
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4
    .param p1, "background"    # I

    .line 362
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 363
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 365
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    .line 364
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .line 446
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 447
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4
    .param p1, "iconSize"    # I

    .line 261
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconSize:I

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 264
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    .line 263
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5
    .param p1, "textAppearanceRes"    # I

    .line 333
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 334
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 336
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 339
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 340
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 335
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5
    .param p1, "textAppearanceRes"    # I

    .line 304
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 307
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 310
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 306
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 281
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 282
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 284
    .local v3, "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 283
    .end local v3    # "item":Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0
    .param p1, "labelVisibilityMode"    # I

    .line 425
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 426
    return-void
.end method

.method public setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    .line 481
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    .line 482
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I

    .line 585
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 586
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 587
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 588
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 589
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 590
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 591
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 592
    goto :goto_1

    .line 586
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 7

    .line 531
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 536
    .local v0, "menuSize":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buildMenuView()V

    .line 539
    return-void

    .line 542
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 544
    .local v1, "previousSelectedId":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 545
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 546
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 547
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 548
    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 544
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    if-eq v1, v3, :cond_4

    .line 553
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    invoke-static {p0, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 556
    :cond_4
    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v3

    .line 557
    .local v3, "shifting":Z
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 558
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 559
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v5, v5, v4

    iget v6, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 560
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    .line 561
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v5, v6, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 562
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 557
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 564
    .end local v4    # "i":I
    :cond_5
    return-void

    .line 532
    .end local v0    # "menuSize":I
    .end local v1    # "previousSelectedId":I
    .end local v3    # "shifting":Z
    :cond_6
    :goto_2
    return-void
.end method
