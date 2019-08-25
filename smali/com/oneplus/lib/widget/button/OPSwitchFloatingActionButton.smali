.class public Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "OPSwitchFloatingActionButton.java"


# instance fields
.field private final FOCUSED_ENABLED_STATE_SET:[I

.field private mIsDisappear1:Z

.field private mIsSwitchState:Z

.field private mNormalImageView:Landroid/widget/ImageView;

.field private mSwitchImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPSwitchFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->FOCUSED_ENABLED_STATE_SET:[I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsDisappear1:Z

    .line 213
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    .line 51
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_SwitchFloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 56
    .local v1, "op_elevation":F
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_tint_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 57
    .local v2, "backgroundTint":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$drawable;->op_switch_floating_action_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 58
    .local v3, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 59
    .local v4, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 60
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/oneplus/commonctrl/R$color;->white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    .local v5, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setElevation(F)V

    .line 66
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 67
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcom/oneplus/commonctrl/R$layout;->op_float_switch_button:I

    invoke-virtual {v6, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget v7, Lcom/oneplus/commonctrl/R$id;->normal_imageview:I

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    .line 69
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_image:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 70
    .local v7, "src":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    sget v8, Lcom/oneplus/commonctrl/R$id;->switch_imageview:I

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    .line 72
    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method
