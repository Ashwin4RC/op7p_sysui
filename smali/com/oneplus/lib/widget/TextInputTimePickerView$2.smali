.class Lcom/oneplus/lib/widget/TextInputTimePickerView$2;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 122
    iput-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 125
    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setActivated(Z)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setActivated(Z)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    sget v3, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_InputFieldUnActive:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    sget v3, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_InputField:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I

    move-result-object v3

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$400(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V

    .line 134
    :cond_0
    return-void
.end method
