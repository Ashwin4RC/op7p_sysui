.class public Lcom/oneplus/aod/OPTextDate;
.super Landroid/view/View;
.source "OPTextDate.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDateFontBaseLineY:F

.field private mDatePaint:Landroid/graphics/Paint;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/OPTextDate;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 121
    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/OPTextDate;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 202
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Lcom/oneplus/aod/OPTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextDate$1;-><init>(Lcom/oneplus/aod/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Lcom/oneplus/aod/OPTextDate$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextDate$2;-><init>(Lcom/oneplus/aod/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTicker:Ljava/lang/Runnable;

    .line 203
    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->init()V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 237
    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Lcom/oneplus/aod/OPTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextDate$1;-><init>(Lcom/oneplus/aod/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Lcom/oneplus/aod/OPTextDate$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextDate$2;-><init>(Lcom/oneplus/aod/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTicker:Ljava/lang/Runnable;

    .line 243
    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    .line 244
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 249
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    nop

    .line 254
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->init()V

    .line 255
    return-void

    .line 251
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .line 530
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OPTextDate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextDate;

    .line 93
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OPTextDate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextDate;

    .line 93
    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OPTextDate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextDate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextDate;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OPTextDate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextDate;

    .line 93
    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    .line 486
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextDate;->chooseFormat(Z)V

    .line 487
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5
    .param p1, "handleTicker"    # Z

    .line 507
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->is24HourModeEnabled()Z

    move-result v0

    .line 509
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 510
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_0

    .line 511
    iget-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 512
    iget-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 515
    iget-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    .line 517
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/aod/OPTextDate;->mHasSeconds:Z

    .line 518
    .local v2, "hadSeconds":Z
    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/OPTextDate;->mHasSeconds:Z

    .line 520
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/aod/OPTextDate;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    .line 521
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 524
    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTime:Ljava/util/Calendar;

    .line 283
    :goto_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 591
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 593
    .local v2, "xPos":I
    iget v3, v0, Lcom/oneplus/aod/OPTextDate;->mClockStyle:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 594
    .local v3, "isDefaultClock":Z
    :goto_0
    iget-object v5, v0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07017d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 595
    .local v5, "textSize":F
    const-string v6, "sans-serif-medium"

    .line 596
    .local v6, "font":Ljava/lang/String;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 598
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-static {v6, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    .line 599
    .local v8, "tf":Landroid/graphics/Typeface;
    iget-object v9, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 600
    iget-object v9, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 601
    iget-object v9, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v10, "0.025"

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 602
    iget-object v9, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06015a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 603
    iget-object v9, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 607
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 608
    .local v10, "locale":Ljava/util/Locale;
    const/4 v11, 0x0

    .line 609
    .local v11, "switchPosition":Z
    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "zh_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 610
    const/4 v11, 0x1

    .line 613
    :cond_1
    if-eqz v11, :cond_2

    .line 614
    const-string v12, "MMMMd"

    invoke-static {v10, v12}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 615
    .local v12, "month_day_format":Ljava/lang/CharSequence;
    const-string v13, "EEE"

    invoke-static {v10, v13}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 617
    .local v13, "week_format":Ljava/lang/CharSequence;
    iget-object v14, v0, Lcom/oneplus/aod/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v12, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 619
    .local v14, "position_first":Ljava/lang/String;
    iget-object v15, v0, Lcom/oneplus/aod/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v13, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 621
    .local v15, "position_second":Ljava/lang/String;
    iget-object v4, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 622
    .local v4, "fm":Landroid/graphics/Paint$FontMetrics;
    move/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 622
    .end local v3    # "isDefaultClock":Z
    .local v16, "isDefaultClock":Z
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v5

    const-string v5, " "

    .line 622
    .end local v5    # "textSize":F
    .local v17, "textSize":F
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "dateStr":Ljava/lang/String;
    int-to-float v5, v2

    move-object/from16 v18, v6

    iget v6, v0, Lcom/oneplus/aod/OPTextDate;->mDateFontBaseLineY:F

    .line 624
    .end local v6    # "font":Ljava/lang/String;
    .local v18, "font":Ljava/lang/String;
    move-object/from16 v19, v8

    iget-object v8, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 624
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .local v19, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 625
    iget-object v5, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 626
    iget-object v5, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 628
    .local v5, "width":I
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 629
    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 630
    .end local v3    # "dateStr":Ljava/lang/String;
    .end local v4    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v5    # "width":I
    .end local v12    # "month_day_format":Ljava/lang/CharSequence;
    .end local v13    # "week_format":Ljava/lang/CharSequence;
    .end local v14    # "position_first":Ljava/lang/String;
    .end local v15    # "position_second":Ljava/lang/String;
    goto :goto_1

    .line 631
    .end local v16    # "isDefaultClock":Z
    .end local v17    # "textSize":F
    .end local v18    # "font":Ljava/lang/String;
    .end local v19    # "tf":Landroid/graphics/Typeface;
    .local v3, "isDefaultClock":Z
    .local v5, "textSize":F
    .restart local v6    # "font":Ljava/lang/String;
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    :cond_2
    move/from16 v16, v3

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    .line 631
    .end local v3    # "isDefaultClock":Z
    .end local v5    # "textSize":F
    .end local v6    # "font":Ljava/lang/String;
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v16    # "isDefaultClock":Z
    .restart local v17    # "textSize":F
    .restart local v18    # "font":Ljava/lang/String;
    .restart local v19    # "tf":Landroid/graphics/Typeface;
    const-string v3, "EEE, MMM d"

    invoke-static {v10, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "default_format":Ljava/lang/CharSequence;
    iget-object v4, v0, Lcom/oneplus/aod/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "monthDayWithWeek":Ljava/lang/String;
    int-to-float v5, v2

    iget v6, v0, Lcom/oneplus/aod/OPTextDate;->mDateFontBaseLineY:F

    iget-object v8, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 635
    iget-object v5, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 636
    iget-object v5, v0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 638
    .end local v3    # "default_format":Ljava/lang/CharSequence;
    .end local v4    # "monthDayWithWeek":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v9}, Lcom/oneplus/aod/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    return-void
.end method

.method private init()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 260
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 261
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 264
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 268
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->reloadDimen()V

    .line 269
    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextDate;->createTime(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextDate;->chooseFormat(Z)V

    .line 273
    iget-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-regular"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 275
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .line 546
    const/4 v0, 0x0

    .line 549
    .local v0, "topMargin":I
    iget-object v1, p0, Lcom/oneplus/aod/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 550
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    .line 552
    .local v2, "height":F
    iget v3, p0, Lcom/oneplus/aod/OPTextDate;->mClockStyle:I

    if-nez v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 554
    :cond_0
    iget v3, p0, Lcom/oneplus/aod/OPTextDate;->mClockStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 555
    iget-object v3, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 558
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 559
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v4, v2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 560
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 561
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v4, p0, Lcom/oneplus/aod/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/aod/OPTextDate;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->invalidate()V

    .line 564
    return-void
.end method

.method private reloadDimen()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OPTextDate;->mDateFontBaseLineY:F

    .line 588
    return-void
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 2

    .line 435
    iget-boolean v0, p0, Lcom/oneplus/aod/OPTextDate;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 535
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 536
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 537
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/OPTextDate;->setTimeZone(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 542
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 543
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 568
    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 569
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->reloadDimen()V

    .line 571
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 572
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 573
    .local v1, "topMargin":I
    iget v2, p0, Lcom/oneplus/aod/OPTextDate;->mClockStyle:I

    if-nez v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 575
    :cond_0
    iget v2, p0, Lcom/oneplus/aod/OPTextDate;->mClockStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 576
    iget-object v2, p0, Lcom/oneplus/aod/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 578
    :cond_1
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 579
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextDate;->drawText(Landroid/graphics/Canvas;)V

    .line 583
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 584
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 642
    iput p1, p0, Lcom/oneplus/aod/OPTextDate;->mClockStyle:I

    .line 643
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 329
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->chooseFormat()V

    .line 330
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->onTimeChanged()V

    .line 331
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 387
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->chooseFormat()V

    .line 388
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->onTimeChanged()V

    .line 389
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .line 410
    iput-boolean p1, p0, Lcom/oneplus/aod/OPTextDate;->mShowCurrentUserTime:Z

    .line 412
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->chooseFormat()V

    .line 413
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->onTimeChanged()V

    .line 414
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate;->mTimeZone:Ljava/lang/String;

    .line 475
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextDate;->createTime(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextDate;->onTimeChanged()V

    .line 477
    return-void
.end method
