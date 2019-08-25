.class public Lcom/oneplus/keyguard/OpEmergencyBubble;
.super Landroid/widget/FrameLayout;
.source "OpEmergencyBubble.java"


# static fields
.field public static ACTIVE_CIRCLE_COLOR:I

.field public static ACTIVE_TEXT_COLOR:I

.field public static DEFAULT_CIRCLE_COLOR:I


# instance fields
.field private mCircleAlpha:I

.field private mCircleColor:I

.field private mCircleRadius:F

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Landroid/widget/TextView;

.field private mTextColor:I

.field private mTextColorAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    .line 25
    const v1, -0x14ffd8

    sput v1, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_CIRCLE_COLOR:I

    .line 26
    sput v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    .line 32
    const v0, -0x14ffd8

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    .line 33
    const/16 v0, 0x66

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColorAlpha:I

    .line 46
    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 85
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    iget v2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    iget-object v3, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method private drawText()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    :cond_0
    return-void
.end method

.method private drawWhiteCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 78
    .local v0, "paint":Landroid/graphics/Paint;
    sget v1, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    iget v2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    iget v3, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070523

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    .line 60
    return-void
.end method


# virtual methods
.method public drawView(IIIII)V
    .locals 0
    .param p1, "circleColor"    # I
    .param p2, "circleColorAlpha"    # I
    .param p3, "rotate"    # I
    .param p4, "textColor"    # I
    .param p5, "textColorAlpha"    # I

    .line 92
    iput p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    .line 93
    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    .line 94
    iput p4, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    .line 95
    iput p5, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColorAlpha:I

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->invalidate()V

    .line 97
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawWhiteCircle(Landroid/graphics/Canvas;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 66
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawText()V

    .line 67
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mText:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method public reset()V
    .locals 1

    .line 100
    sget v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    .line 101
    const/16 v0, 0xff

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    .line 102
    const v0, -0x14ffd8

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    .line 103
    const/16 v0, 0x66

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColorAlpha:I

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->invalidate()V

    .line 105
    return-void
.end method
