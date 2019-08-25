.class Lcom/oneplus/lib/widget/AutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dismissListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;->val$dismissListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;->onDismiss()V

    .line 700
    return-void
.end method
