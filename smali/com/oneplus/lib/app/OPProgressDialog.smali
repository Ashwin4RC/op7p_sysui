.class public Lcom/oneplus/lib/app/OPProgressDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "OPProgressDialog.java"


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static synthetic access$000(Lcom/oneplus/lib/app/OPProgressDialog;)Lcom/oneplus/lib/widget/OPProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .locals 2

    .line 368
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->incrementProgressBy(I)V

    .line 256
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 258
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    .line 260
    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->incrementSecondaryProgressBy(I)V

    .line 265
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 267
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    .line 269
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 121
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    const v2, 0x102000d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 127
    new-instance v1, Lcom/oneplus/lib/app/OPProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/OPProgressDialog$1;-><init>(Lcom/oneplus/lib/app/OPProgressDialog;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 152
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_alert_progress_dialog_horizontal:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    .line 154
    sget v2, Lcom/oneplus/commonctrl/R$id;->progress_number:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 155
    sget v2, Lcom/oneplus/commonctrl/R$id;->progress_percent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setView(Landroid/view/View;)V

    .line 157
    .end local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 158
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_alert_progress_dialog_spinner:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    .line 160
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setView(Landroid/view/View;)V

    .line 163
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMax:I

    if-lez v1, :cond_1

    .line 164
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMax:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setMax(I)V

    .line 166
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressVal:I

    if-lez v1, :cond_2

    .line 167
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setProgress(I)V

    .line 169
    :cond_2
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mSecondaryProgressVal:I

    if-lez v1, :cond_3

    .line 170
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setSecondaryProgress(I)V

    .line 172
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    if-lez v1, :cond_4

    .line 173
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->incrementProgressBy(I)V

    .line 175
    :cond_4
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    if-lez v1, :cond_5

    .line 176
    iget v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 178
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 179
    iget-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 182
    iget-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_7
    iget-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 185
    iget-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    :cond_8
    iget-boolean v1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setIndeterminate(Z)V

    .line 188
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 189
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setCancelable(Z)V

    .line 190
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->onStart()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mHasStarted:Z

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->onStop()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mHasStarted:Z

    .line 203
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .line 288
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 291
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminate:Z

    .line 293
    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setMax(I)V

    .line 247
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 249
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMax:I

    .line 251
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_1

    .line 305
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 313
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .line 206
    iget-boolean v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    .line 208
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 210
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressVal:I

    .line 212
    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 277
    :goto_0
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V

    .line 217
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 219
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mSecondaryProgressVal:I

    .line 221
    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_1

    .line 318
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    if-nez v0, :cond_0

    .line 319
    const-string v0, ""

    invoke-super {p0, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    return-void
.end method
