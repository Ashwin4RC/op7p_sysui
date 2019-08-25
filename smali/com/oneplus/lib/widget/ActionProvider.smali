.class public abstract Lcom/oneplus/lib/widget/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# instance fields
.field private mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 248
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public setSubUiVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

    .line 266
    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

    .line 267
    return-void
.end method
