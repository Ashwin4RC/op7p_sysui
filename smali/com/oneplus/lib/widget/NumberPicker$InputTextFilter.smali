.class Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 2112
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 2130
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$700(Lcom/oneplus/lib/widget/NumberPicker;)Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$700(Lcom/oneplus/lib/widget/NumberPicker;)Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2135
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2136
    .local v0, "filtered":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 2137
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2140
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2141
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p4, p6, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2143
    .local v1, "result":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2144
    return-object v1

    .line 2146
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$900(Lcom/oneplus/lib/widget/NumberPicker;Ljava/lang/String;)I

    move-result v2

    .line 2155
    .local v2, "val":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    if-gt v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    goto :goto_0

    .line 2158
    :cond_3
    return-object v0

    .line 2156
    :cond_4
    :goto_0
    const-string v3, ""

    return-object v3

    .line 2161
    .end local v0    # "filtered":Ljava/lang/CharSequence;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2162
    .restart local v0    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2163
    const-string v1, ""

    return-object v1

    .line 2165
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2166
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2167
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2168
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_8

    aget-object v6, v4, v1

    .line 2169
    .local v6, "val":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 2170
    .local v7, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2171
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/lib/widget/NumberPicker;->access$1100(Lcom/oneplus/lib/widget/NumberPicker;II)V

    .line 2172
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, p5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 2168
    .end local v6    # "val":Ljava/lang/String;
    .end local v7    # "valLowerCase":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2175
    :cond_8
    const-string v1, ""

    return-object v1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 2122
    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->access$600()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 2117
    const/4 v0, 0x1

    return v0
.end method
