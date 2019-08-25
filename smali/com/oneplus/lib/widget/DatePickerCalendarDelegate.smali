.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
.super Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# static fields
.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 49
    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    .line 569
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 570
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 571
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 569
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    .line 80
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V

    .line 70
    const/4 v1, -0x1

    iput v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 76
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 181
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    .line 203
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    .line 232
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 82
    iget-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 83
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 84
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 85
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 86
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 88
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    const/16 v5, 0x76c

    invoke-virtual {v3, v5, v1, v4}, Ljava/util/Calendar;->set(III)V

    .line 89
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    const/16 v5, 0x834

    const/16 v6, 0xb

    const/16 v7, 0x1f

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 91
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 92
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 94
    .local v5, "a":Landroid/content/res/TypedArray;
    iget-object v6, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 96
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_internalLayout:I

    sget v11, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_material:I

    invoke-virtual {v5, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 100
    .local v10, "layoutResourceId":I
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v6, v10, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 101
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 102
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/DatePicker;->addView(Landroid/view/View;)V

    .line 105
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 106
    .local v11, "header":Landroid/view/ViewGroup;
    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header_year:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 107
    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header_date:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 109
    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const/4 v12, 0x0

    .line 117
    .local v12, "headerTextColor":Landroid/content/res/ColorStateList;
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_headerMonthTextAppearance:I

    invoke-virtual {v5, v13, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 119
    .local v13, "monthHeaderTextAppearance":I
    if-eqz v13, :cond_0

    .line 120
    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    sget-object v4, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v14, v15, v4, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 122
    .local v4, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 123
    .local v14, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .end local v4    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v14    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    :cond_0
    if-nez v12, :cond_1

    .line 127
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_headerTextColor:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 130
    :cond_1
    if-eqz v12, :cond_2

    .line 131
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget v14, Lcom/oneplus/commonctrl/R$id;->animator:I

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewAnimator;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 146
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget v14, Lcom/oneplus/commonctrl/R$id;->date_picker_day_picker:I

    invoke-virtual {v4, v14}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/DayPickerView;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    .line 147
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 148
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 149
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 150
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 151
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/DayPickerView;->setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;)V

    .line 154
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget v14, Lcom/oneplus/commonctrl/R$id;->date_picker_year_picker:I

    invoke-virtual {v4, v14}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/YearPickerView;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    .line 155
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 156
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 157
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/YearPickerView;->setOnYearSelectedListener(Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;)V

    .line 160
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_day:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 161
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_year:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 165
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 167
    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # I

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    .line 36
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    return-void
.end method

.method private onCurrentDateChanged(Z)V
    .locals 4
    .param p1, "announce"    # Z

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "year":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "monthDay":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    if-eqz p1, :cond_1

    .line 278
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 280
    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 5
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .line 348
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 350
    .local v0, "year":I
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_2

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 353
    .local v1, "monthOfYear":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 354
    .local v2, "dayOfMonth":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2

    .line 358
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 362
    .end local v1    # "monthOfYear":I
    .end local v2    # "dayOfMonth":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 363
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 365
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 367
    if-eqz p1, :cond_3

    .line 368
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 370
    :cond_3
    return-void
.end method

.method private setCurrentView(I)V
    .locals 5
    .param p1, "viewIndex"    # I

    .line 283
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 300
    .local v2, "year":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 312
    iget v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v3, p1, :cond_0

    .line 313
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 314
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 315
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 318
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .end local v2    # "year":I
    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 287
    iget v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_1

    .line 288
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 289
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 290
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 291
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 292
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 293
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 297
    nop

    .line 324
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryVibrate()V
    .locals 7

    .line 575
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportZVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 577
    :try_start_0
    const-class v0, Landroid/os/VibrationEffect;

    const-string v1, "EFFECT_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 578
    .local v0, "effectClick":Ljava/lang/reflect/Field;
    const-class v1, Landroid/os/VibrationEffect;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 579
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 580
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 581
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    .line 582
    .local v2, "effect":Landroid/os/VibrationEffect;
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 583
    .local v3, "vib":Landroid/os/Vibrator;
    sget-object v4, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v2, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v0    # "effectClick":Ljava/lang/reflect/Field;
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "effect":Landroid/os/VibrationEffect;
    .end local v3    # "vib":Landroid/os/Vibrator;
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DatePicker;->performHapticFeedback(I)Z

    .line 590
    :goto_1
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 487
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 488
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 247
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 248
    .local v0, "headerYear":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 251
    return-void

    .line 255
    :cond_0
    const-string v1, "EMMMd"

    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "datePattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 257
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "y"

    invoke-direct {v2, v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    .line 260
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 261
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 512
    instance-of v0, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    .line 513
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 516
    .local v0, "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 517
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 518
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 520
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 522
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v1

    .line 523
    .local v1, "currentView":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 525
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v2

    .line 526
    .local v2, "listPosition":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 527
    if-nez v1, :cond_0

    .line 528
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setPosition(I)V

    goto :goto_0

    .line 529
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 530
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    .line 535
    .end local v0    # "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .end local v1    # "currentView":I
    .end local v2    # "listPosition":I
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 19
    .param p1, "superState"    # Landroid/os/Parcelable;

    move-object/from16 v0, p0

    .line 492
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 493
    .local v1, "year":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 494
    .local v2, "month":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 496
    .local v15, "day":I
    const/4 v3, -0x1

    .line 497
    .local v3, "listPosition":I
    const/16 v16, -0x1

    .line 499
    .local v16, "listPositionOffset":I
    iget v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v4, :cond_0

    .line 500
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v3

    .line 506
    .end local v3    # "listPosition":I
    .local v17, "listPosition":I
    :goto_0
    move/from16 v17, v3

    goto :goto_1

    .line 501
    .end local v17    # "listPosition":I
    .restart local v3    # "listPosition":I
    :cond_0
    iget v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    goto :goto_0

    .line 506
    .end local v3    # "listPosition":I
    .restart local v17    # "listPosition":I
    :goto_1
    new-instance v18, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 507
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move v5, v1

    move v6, v2

    move v7, v15

    move/from16 v13, v17

    move/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 506
    return-object v18
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 448
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/YearPickerView;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 453
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 433
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 435
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 436
    return-void
.end method

.method public updateDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 341
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 342
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 345
    return-void
.end method
