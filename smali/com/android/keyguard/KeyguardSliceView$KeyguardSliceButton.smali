.class Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;
.super Landroid/widget/Button;
.source "KeyguardSliceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyguardSliceButton"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 492
    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f120374

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 494
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->onDensityOrFontScaleChanged()V

    .line 495
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 496
    return-void
.end method

.method private updateDrawableColors()V
    .locals 5

    .line 549
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getCurrentTextColor()I

    move-result v0

    .line 550
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 551
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 552
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 550
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method

.method private updatePadding()V
    .locals 4

    .line 526
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 527
    .local v0, "hasText":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07077c

    .line 528
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 529
    .local v2, "horizontalPadding":I
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    mul-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setPadding(IIII)V

    .line 530
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07077e

    .line 531
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 530
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setCompoundDrawablePadding(I)V

    .line 532
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 500
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 501
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 512
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    .line 514
    nop

    .line 515
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070544

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 514
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setTextSize(IF)V

    .line 517
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 506
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 507
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 543
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 544
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updateDrawableColors()V

    .line 545
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    .line 546
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 521
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 522
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    .line 523
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 536
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 537
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updateDrawableColors()V

    .line 538
    return-void
.end method
