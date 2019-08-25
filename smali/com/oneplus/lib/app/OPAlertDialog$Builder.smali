.class public Lcom/oneplus/lib/app/OPAlertDialog$Builder;
.super Ljava/lang/Object;
.source "OPAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    .line 360
    return-void
.end method


# virtual methods
.method public create()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 3

    .line 983
    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 984
    .local v0, "dialog":Lcom/oneplus/lib/app/OPAlertDialog;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->apply(Lcom/oneplus/lib/app/OPAlertController;)V

    .line 985
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCancelable(Z)V

    .line 986
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 987
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 989
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 990
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 991
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 994
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 661
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 662
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 663
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 428
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 429
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 470
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 471
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 448
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 449
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 547
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 548
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 549
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 622
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 623
    return-object p0
.end method

.method public setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onlyDarkTheme"    # Z

    .line 475
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    .line 476
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 521
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 522
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 523
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 833
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 834
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 835
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 836
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 837
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 407
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 408
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 904
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    .line 905
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    .line 906
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 907
    return-object p0
.end method
