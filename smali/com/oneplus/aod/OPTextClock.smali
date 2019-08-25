.class public Lcom/oneplus/aod/OPTextClock;
.super Landroid/view/View;
.source "OPTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAmPmPaint:Landroid/graphics/Paint;

.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mDigitColorRed:I

.field private mDigitColorWhite:I

.field private mFontBaseLineY:F

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

.field private mHourPaint:Landroid/graphics/Paint;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinPaint:Landroid/graphics/Paint;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/OPTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 122
    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/OPTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Lcom/oneplus/aod/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$1;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Lcom/oneplus/aod/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$2;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 212
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    .line 213
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->init()V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 246
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Lcom/oneplus/aod/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$1;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Lcom/oneplus/aod/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$2;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 252
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    .line 253
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 256
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 257
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 258
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    nop

    .line 263
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->init()V

    .line 264
    return-void

    .line 260
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

    .line 549
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

.method static synthetic access$100(Lcom/oneplus/aod/OPTextClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextClock;

    .line 94
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OPTextClock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextClock;

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OPTextClock;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextClock;
    .param p1, "x1"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OPTextClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/OPTextClock;

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    .line 505
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat(Z)V

    .line 506
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5
    .param p1, "handleTicker"    # Z

    .line 526
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 528
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 529
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_0

    .line 530
    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 531
    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 534
    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 536
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/aod/OPTextClock;->mHasSeconds:Z

    .line 537
    .local v2, "hadSeconds":Z
    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/OPTextClock;->mHasSeconds:Z

    .line 539
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/aod/OPTextClock;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    .line 540
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 541
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 543
    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 295
    if-eqz p1, :cond_0

    .line 297
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    .line 302
    :goto_0
    return-void
.end method

.method private drawClockDefault(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 596
    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 598
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 599
    .local v4, "c":[C
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, "time":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, " "

    goto :goto_0

    :cond_0
    const-string v6, "."

    .line 602
    .local v6, "breakPoint":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 604
    .local v7, "breakIndex":I
    const-string v8, ""

    .line 605
    .local v8, "hour":Ljava/lang/String;
    const-string v9, ""

    .line 606
    .local v9, "min":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v11, v8

    move v8, v10

    .local v8, "i":I
    .local v11, "hour":Ljava/lang/String;
    :goto_1
    if-ge v8, v7, :cond_1

    .line 607
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 606
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 610
    .end local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v7, 0x1

    .restart local v8    # "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v8, v12, :cond_2

    .line 611
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 610
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 614
    .end local v8    # "i":I
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 616
    .local v8, "hourSize":I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_3

    .line 617
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 624
    :cond_3
    const/4 v13, 0x0

    .line 626
    .local v13, "hourWidth":F
    new-array v14, v3, [F

    .line 627
    .local v14, "width":[F
    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v11, v14}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 628
    aget v13, v14, v10

    .line 630
    const/4 v15, 0x0

    .line 632
    .local v15, "xPosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    div-int/lit8 v12, v16, 0x2

    int-to-float v12, v12

    aget v16, v14, v10

    sub-float v12, v12, v16

    float-to-int v12, v12

    .line 633
    .end local v15    # "xPosition":I
    .local v12, "xPosition":I
    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 636
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v15, 0x31

    if-ne v3, v15, :cond_4

    iget v3, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorRed:I

    goto :goto_3

    :cond_4
    iget v3, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    .line 637
    .local v3, "color":I
    :goto_3
    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aput-char v15, v4, v10

    .line 639
    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move/from16 v17, v3

    aget-char v3, v4, v10

    .end local v3    # "color":I
    .local v17, "color":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v3, v10, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 640
    .end local v5    # "time":Ljava/lang/String;
    .local v18, "time":Ljava/lang/String;
    move v3, v12

    .line 641
    .local v3, "offsetX":I
    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 642
    .local v5, "fm":Landroid/graphics/Paint$FontMetrics;
    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v10, 0x7f070149

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    .line 643
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-char v15, v4, v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    int-to-float v15, v3

    move-object/from16 v19, v2

    iget v2, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    .end local v2    # "rect":Landroid/graphics/Rect;
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v20, v5

    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v5    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v20, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v1, v10, v15, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v2

    .line 646
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x31

    if-ne v5, v2, :cond_5

    iget v2, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorRed:I

    goto :goto_4

    :cond_5
    iget v2, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    .line 647
    .end local v17    # "color":I
    .local v2, "color":I
    :goto_4
    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-char v10, v4, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v10, v3

    add-float/2addr v10, v13

    iget v15, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    move/from16 v21, v2

    iget-object v2, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v2    # "color":I
    .local v21, "color":I
    invoke-virtual {v1, v5, v10, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 651
    iget-object v2, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 653
    .end local v20    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v2, "fm":Landroid/graphics/Paint$FontMetrics;
    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f07014a

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    .line 654
    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 655
    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    const/4 v10, 0x2

    div-int/2addr v5, v10

    int-to-float v5, v5

    iget v10, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v5, v10, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 672
    return-void
.end method

.method private init()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 269
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 270
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 273
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 277
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat(Z)V

    .line 281
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorRed:I

    .line 282
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    .line 284
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 285
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-regular"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 286
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-thin"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 288
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-regular"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 291
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    return-void
.end method

.method private onTimeChanged()V
    .locals 5

    .line 565
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->updateTextStyle()V

    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, "height":F
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 573
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, p0, Lcom/oneplus/aod/OPTextClock;->mClockStyle:I

    if-nez v2, :cond_0

    .line 574
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    .end local v0    # "height":F
    .local v2, "height":F
    :goto_0
    goto :goto_1

    .line 576
    .end local v2    # "height":F
    .restart local v0    # "height":F
    :cond_0
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v3

    goto :goto_0

    .line 579
    .end local v0    # "height":F
    .restart local v2    # "height":F
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 580
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 581
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OPTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/OPTextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 583
    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 4

    .line 684
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "time":Ljava/lang/String;
    const-string v1, "OPTextClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .line 454
    iget-boolean v0, p0, Lcom/oneplus/aod/OPTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 554
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 555
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 556
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/OPTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 561
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 562
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 587
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 588
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 589
    iget v0, p0, Lcom/oneplus/aod/OPTextClock;->mClockStyle:I

    if-nez v0, :cond_0

    .line 590
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextClock;->drawClockDefault(Landroid/graphics/Canvas;)V

    .line 592
    :cond_0
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "clockStyle"    # I

    .line 690
    iput p1, p0, Lcom/oneplus/aod/OPTextClock;->mClockStyle:I

    .line 691
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 348
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat()V

    .line 349
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    .line 350
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 406
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat()V

    .line 407
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    .line 408
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .line 429
    iput-boolean p1, p0, Lcom/oneplus/aod/OPTextClock;->mShowCurrentUserTime:Z

    .line 431
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat()V

    .line 432
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    .line 433
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;

    .line 494
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    .line 496
    return-void
.end method

.method public updateTextStyle()V
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 676
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 677
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 678
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 679
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 680
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 681
    return-void
.end method
