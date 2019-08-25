.class public Lcom/oneplus/lib/app/OPAlertDialog;
.super Landroid/app/Dialog;
.source "OPAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcom/oneplus/lib/app/OPAlertController;

.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .line 102
    invoke-static {p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 104
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/oneplus/lib/app/OPAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    .line 105
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertDialog;

    .line 63
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .line 119
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 120
    return p1

    .line 122
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 123
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 124
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 327
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertController;->installContent()V

    .line 329
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 333
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 334
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 339
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 340
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 157
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;)V

    .line 177
    return-void
.end method
