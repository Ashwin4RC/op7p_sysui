.class public abstract Lcom/oneplus/lib/preference/DialogPreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mOnlyDarkTheme:Z

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 77
    iget-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 82
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_opOnlyDarkTheme:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mOnlyDarkTheme:Z

    .line 83
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 84
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_positiveButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 86
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_negativeButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 87
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogLayout:I

    iget v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 338
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 339
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 340
    return-void
.end method


# virtual methods
.method protected needInputMethod()Z
    .locals 1

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 428
    return-void

    .line 424
    :cond_1
    :goto_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 385
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 278
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 388
    iput p2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mWhichButtonClicked:I

    .line 389
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 351
    iget v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 352
    return-object v1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 356
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .line 407
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 393
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 396
    iget v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->onDialogClosed(Z)V

    .line 397
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 271
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 445
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    .line 452
    .local v0, "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 453
    iget-boolean v1, v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 456
    :cond_1
    return-void

    .line 447
    .end local v0    # "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 448
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 432
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 433
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 438
    .local v1, "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 439
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 440
    return-object v1

    .line 434
    .end local v1    # "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .line 288
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 290
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x2

    iput v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mWhichButtonClicked:I

    .line 292
    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mOnlyDarkTheme:Z

    .line 293
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 294
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 295
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 296
    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 297
    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    .line 300
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 302
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 303
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->registerOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 313
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 314
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-direct {p0, v2}, Lcom/oneplus/lib/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 320
    :cond_2
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 321
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 322
    return-void
.end method
