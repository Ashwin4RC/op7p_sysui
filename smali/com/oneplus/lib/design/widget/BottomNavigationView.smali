.class public Lcom/oneplus/lib/design/widget/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;,
        Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# instance fields
.field private final menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

.field private final presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

.field private reselectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 112
    sget v0, Lcom/oneplus/commonctrl/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    .line 119
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 121
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 122
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 126
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    .line 129
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setId(I)V

    .line 130
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V

    .line 131
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 132
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 135
    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView:[I

    sget v9, Lcom/oneplus/commonctrl/R$style;->Widget_Design_BottomNavigationView:I

    const/4 v1, 0x2

    new-array v10, v1, [I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v3, 0x0

    aput v1, v10, v3

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    aput v1, v10, v2

    .line 136
    move-object v5, p1

    move-object v6, p2

    move v8, p3

    invoke-static/range {v5 .. v10}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v1

    .line 145
    .local v1, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    const v6, 0x1010038

    .line 149
    invoke-virtual {v5, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 148
    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 152
    :goto_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconSize:I

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 153
    invoke-virtual {v1, v4, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 152
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemIconSize(I)V

    .line 156
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 158
    invoke-virtual {v1, v4, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 157
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 160
    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    .line 162
    invoke-virtual {v1, v4, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 161
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 165
    :cond_2
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 169
    :cond_3
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 170
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_elevation:I

    .line 171
    invoke-virtual {v1, v4, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    .line 170
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 174
    :cond_4
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    const/4 v5, -0x1

    .line 175
    invoke-virtual {v1, v4, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInteger(II)I

    move-result v4

    .line 174
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 178
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 179
    invoke-virtual {v1, v4, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 178
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 181
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 182
    .local v2, "itemBackground":I
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 184
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v1, v4, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->inflateMenu(I)V

    .line 187
    :cond_5
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 189
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_6

    .line 191
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 194
    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v4, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationView;

    .line 95
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->reselectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationView;

    .line 95
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->selectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 530
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 531
    .local v0, "divider":Landroid/view/View;
    sget v1, Lcom/oneplus/commonctrl/R$color;->design_bottom_navigation_shadow_color:I

    .line 532
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 531
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 533
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 536
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 537
    .local v1, "dividerParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 539
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getSelectedItemId()I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 249
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 250
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 253
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 559
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 560
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 561
    return-void

    .line 563
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    .line 564
    .local v0, "savedState":Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 565
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, v0, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 566
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 550
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 551
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 552
    .local v1, "savedState":Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 553
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v3, v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 554
    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 611
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 612
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/lib/util/NavigationButtonUtils;->isGestureNavigationBar(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 613
    .local v0, "isShowSoftNavigationKey":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 615
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->op_bottom_navigation_height_with_bottom_softkey_navigation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 616
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .line 487
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 489
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 491
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1, "iconSize"    # I

    .line 290
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemIconSize(I)V

    .line 291
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I

    .line 466
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    .line 467
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I

    .line 447
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    .line 448
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 337
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 338
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2
    .param p1, "labelVisibilityMode"    # I

    .line 424
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 426
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 428
    :cond_0
    return-void
.end method
