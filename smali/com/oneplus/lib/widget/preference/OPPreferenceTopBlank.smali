.class public Lcom/oneplus/lib/widget/preference/OPPreferenceTopBlank;
.super Lcom/oneplus/lib/preference/PreferenceCategory;
.source "OPPreferenceTopBlank.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceTopBlank;->initViews(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/oneplus/lib/widget/preference/OPPreferenceTopBlank;->mContext:Landroid/content/Context;

    .line 33
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_ctrl_preference_blank:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPPreferenceTopBlank;->setLayoutResource(I)V

    .line 34
    return-void
.end method
