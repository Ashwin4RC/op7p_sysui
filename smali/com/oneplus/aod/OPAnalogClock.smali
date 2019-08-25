.class public Lcom/oneplus/aod/OPAnalogClock;
.super Landroid/widget/RelativeLayout;
.source "OPAnalogClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHour:Landroid/widget/ImageView;

.field private mMin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/oneplus/aod/OPAnalogClock;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/oneplus/aod/OPAnalogClock;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/oneplus/aod/OPAnalogClock;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/oneplus/aod/OPAnalogClock;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/oneplus/aod/OPAnalogClock;->refreshTime()V

    .line 53
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method public refreshTime()V
    .locals 9

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "time":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oneplus/aod/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "splitString":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 63
    .local v3, "hour":I
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 65
    .local v4, "min":I
    iget-object v5, p0, Lcom/oneplus/aod/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v5, p0, Lcom/oneplus/aod/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    const v6, 0x7f0800e9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v5, p0, Lcom/oneplus/aod/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    const v6, 0x7f0800ea

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    int-to-float v5, v3

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x41400000    # 12.0f

    div-float/2addr v5, v7

    int-to-float v7, v4

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v8, v7

    const/high16 v7, 0x42700000    # 60.0f

    div-float/2addr v8, v7

    add-float/2addr v5, v8

    .line 72
    .local v5, "hourAngle":F
    int-to-float v8, v4

    mul-float/2addr v6, v8

    div-float/2addr v6, v7

    .line 74
    .local v6, "minAngle":F
    iget-object v7, p0, Lcom/oneplus/aod/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 75
    iget-object v7, p0, Lcom/oneplus/aod/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setRotation(F)V

    .line 77
    return-void
.end method
