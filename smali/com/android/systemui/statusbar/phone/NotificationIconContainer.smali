.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final MAX_DOTS:I

.field private static final UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mAbsolutePosition:[I

.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mIconPadding:I

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStaticLayout:Z

.field private mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mIsolatedIconForAnimation:Landroid/view/View;

.field private mIsolatedIconLocation:Landroid/graphics/Rect;

.field private mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mNumDots:I

.field private mOpenedAmount:F

.field private mOverflowWidth:I

.field private mReplacingIcons:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSpeedBumpIndex:I

.field private mStaticDotDiameter:I

.field private mStaticDotRadius:I

.field private mVisualOverflowStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    .line 73
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    .line 84
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 85
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    .line 120
    const-wide/16 v1, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;-><init>()V

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 140
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x3b

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    move v0, v2

    nop

    :cond_0
    sput v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 151
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 152
    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 153
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 156
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 157
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 158
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 160
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 172
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setWillNotDraw(Z)V

    .line 179
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return v0
.end method

.method static synthetic access$300()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return v0
.end method

.method static synthetic access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    return-object v0
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 3
    .param p1, "translationX"    # F

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 365
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 366
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 367
    return v0

    .line 364
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v0

    return v0
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .line 506
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 509
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    .line 513
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 516
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return v0
.end method

.method private getLayoutEnd()F
    .locals 2

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMaxOverflowStart()F
    .locals 2

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private initDimens()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconPadding:I

    .line 188
    return-void
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 314
    return v1

    .line 316
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v0, :cond_1

    .line 317
    return v1

    .line 319
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 320
    .local v0, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 321
    .local v2, "sourceIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "groupKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 323
    .local v4, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-eqz v4, :cond_2

    .line 324
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 325
    .local v5, "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v6, v5, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 326
    const/4 v1, 0x1

    return v1

    .line 329
    .end local v5    # "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2
    return v1
.end method

.method public static synthetic lambda$onViewRemoved$0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method private setIconSize(I)V
    .locals 4
    .param p1, "size"    # I

    .line 258
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 260
    sget v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    if-lez v0, :cond_0

    .line 262
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    sget v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    .line 264
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 270
    return-void
.end method


# virtual methods
.method public applyIconStates()V
    .locals 4

    .line 273
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 276
    .local v3, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 273
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 281
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 282
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    .line 284
    return-void
.end method

.method public calculateIconTranslations()V
    .locals 21

    .line 389
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    .line 390
    .local v1, "translationX":F
    const/4 v2, -0x1

    .line 391
    .local v2, "firstOverflowIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    .line 392
    .local v3, "childCount":I
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    .line 393
    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x28

    goto :goto_0

    :cond_1
    move v4, v3

    .line 394
    .local v4, "maxVisibleIcons":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v5

    .line 395
    .local v5, "layoutEnd":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getMaxOverflowStart()F

    move-result v6

    .line 396
    .local v6, "overflowStart":F
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 397
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 398
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v12

    if-ge v8, v12, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 399
    .local v8, "hasAmbient":Z
    :goto_1
    move v12, v2

    move v2, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v2, "translationX":F
    .local v12, "firstOverflowIndex":I
    :goto_2
    if-ge v1, v3, :cond_13

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 401
    .local v14, "view":Landroid/view/View;
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 402
    .local v15, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iput v2, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 403
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v13, :cond_3

    .line 404
    iput-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 406
    :cond_3
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    if-eq v13, v9, :cond_4

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    if-lt v1, v13, :cond_4

    iget v13, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v13, v13, v7

    if-gtz v13, :cond_5

    :cond_4
    if-lt v1, v4, :cond_6

    :cond_5
    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    .line 409
    .local v13, "forceOverflow":Z
    :goto_3
    sget v17, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    if-lez v17, :cond_7

    add-int/lit8 v17, v3, -0x1

    move/from16 v11, v17

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    if-ne v1, v11, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    .line 411
    .local v11, "noOverflowAfter":Z
    :goto_5
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v9, :cond_9

    instance-of v9, v14, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v9, :cond_9

    .line 412
    move-object v9, v14

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v9

    .line 413
    move/from16 v16, v9

    goto :goto_6

    :cond_9
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_6
    move/from16 v9, v16

    .line 414
    .local v9, "drawingScale":F
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    cmpl-float v10, v10, v7

    if-eqz v10, :cond_b

    .line 415
    if-eqz v11, :cond_a

    if-nez v8, :cond_a

    if-nez v13, :cond_a

    const/4 v10, 0x1

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    :goto_7
    move v11, v10

    .line 417
    :cond_b
    const/4 v10, 0x0

    iput v10, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 419
    nop

    .line 420
    if-eqz v11, :cond_c

    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v10, v10

    sub-float v10, v5, v10

    goto :goto_8

    .line 421
    :cond_c
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    :goto_8
    cmpl-float v10, v2, v10

    if-lez v10, :cond_d

    const/4 v10, 0x1

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    .line 422
    .local v10, "isOverflowing":Z
    :goto_9
    const/4 v7, -0x1

    if-ne v12, v7, :cond_12

    if-nez v13, :cond_e

    if-eqz v10, :cond_12

    .line 423
    :cond_e
    if-eqz v11, :cond_f

    if-nez v13, :cond_f

    add-int/lit8 v7, v1, -0x1

    goto :goto_a

    :cond_f
    move v7, v1

    .line 424
    .end local v12    # "firstOverflowIndex":I
    .local v7, "firstOverflowIndex":I
    :goto_a
    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float v12, v12

    sub-float v12, v5, v12

    iput v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 425
    if-nez v13, :cond_10

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v12, :cond_11

    .line 426
    :cond_10
    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    invoke-static {v2, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iput v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 429
    :cond_11
    move v12, v7

    .end local v7    # "firstOverflowIndex":I
    .restart local v12    # "firstOverflowIndex":I
    :cond_12
    iget v7, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v19, v4

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v4

    .end local v4    # "maxVisibleIcons":I
    .local v19, "maxVisibleIcons":I
    int-to-float v4, v4

    mul-float/2addr v7, v4

    mul-float/2addr v7, v9

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconPadding:I

    int-to-float v4, v4

    add-float/2addr v7, v4

    add-float/2addr v2, v7

    .line 399
    .end local v9    # "drawingScale":F
    .end local v10    # "isOverflowing":Z
    .end local v11    # "noOverflowAfter":Z
    .end local v13    # "forceOverflow":Z
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v19

    const/4 v7, 0x0

    const/4 v9, -0x1

    goto/16 :goto_2

    .line 434
    .end local v1    # "i":I
    .end local v19    # "maxVisibleIcons":I
    .restart local v4    # "maxVisibleIcons":I
    :cond_13
    move/from16 v19, v4

    .end local v4    # "maxVisibleIcons":I
    .restart local v19    # "maxVisibleIcons":I
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    .line 435
    const/4 v1, -0x1

    if-eq v12, v1, :cond_17

    .line 436
    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 437
    .end local v2    # "translationX":F
    .local v1, "translationX":F
    move v2, v1

    move v1, v12

    .local v1, "i":I
    .restart local v2    # "translationX":F
    :goto_b
    if-ge v1, v3, :cond_18

    .line 438
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 439
    .local v4, "view":Landroid/view/View;
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 440
    .local v7, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iget v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v9, v10

    .line 441
    .local v9, "dotWidth":I
    iput v2, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 442
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    sget v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    if-ge v10, v11, :cond_16

    .line 443
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-nez v10, :cond_14

    iget v10, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const v11, 0x3f4ccccd    # 0.8f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_14

    .line 444
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 449
    const/4 v10, 0x1

    goto :goto_c

    .line 446
    :cond_14
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 447
    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    add-int/2addr v11, v10

    iput v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    .line 449
    :goto_c
    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    sget v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    if-ne v11, v13, :cond_15

    sget v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    mul-int/2addr v11, v9

    goto :goto_d

    :cond_15
    move v11, v9

    :goto_d
    int-to-float v11, v11

    iget v13, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    mul-float/2addr v11, v13

    add-float/2addr v2, v11

    .line 451
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    goto :goto_e

    .line 453
    :cond_16
    const/4 v10, 0x1

    const/4 v11, 0x2

    iput v11, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 437
    .end local v4    # "view":Landroid/view/View;
    .end local v7    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v9    # "dotWidth":I
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 456
    .end local v1    # "i":I
    :cond_17
    if-lez v3, :cond_18

    .line 457
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 458
    .local v1, "lastChild":Landroid/view/View;
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 459
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 461
    .end local v1    # "lastChild":Landroid/view/View;
    :cond_18
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 462
    .local v1, "center":Z
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1b

    .line 464
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v7, :cond_19

    const/16 v18, 0x0

    goto :goto_f

    :cond_19
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v18, v7

    :goto_f
    move/from16 v7, v18

    .line 465
    .local v7, "initialTranslation":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v7

    .line 466
    .local v9, "contentWidth":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v11

    sub-float/2addr v10, v11

    .line 467
    .local v10, "availableSpace":F
    sub-float v11, v10, v9

    div-float/2addr v11, v4

    .line 469
    .local v11, "delta":F
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1a

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v13

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    sub-float/2addr v13, v14

    div-float/2addr v13, v4

    .line 473
    .local v13, "deltaIgnoringOverflow":F
    add-float v14, v13, v11

    div-float v11, v14, v4

    .line 475
    .end local v13    # "deltaIgnoringOverflow":F
    :cond_1a
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_10
    if-ge v13, v3, :cond_1b

    .line 476
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 477
    .restart local v14    # "view":Landroid/view/View;
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 478
    .restart local v15    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iget v4, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-float/2addr v4, v11

    iput v4, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 475
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    add-int/lit8 v13, v13, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_10

    .line 482
    .end local v7    # "initialTranslation":F
    .end local v9    # "contentWidth":F
    .end local v10    # "availableSpace":F
    .end local v11    # "delta":F
    .end local v13    # "i":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 483
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v3, :cond_1c

    .line 484
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 485
    .local v7, "view":Landroid/view/View;
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 486
    .local v9, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    sub-float/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 483
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 489
    .end local v4    # "i":I
    :cond_1c
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_1d

    .line 490
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 491
    .local v4, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v4, :cond_1d

    .line 494
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 495
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v13, v10, v9

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v13, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v13, v9

    sub-float/2addr v7, v13

    iput v7, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 496
    const/4 v7, 0x0

    iput v7, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 499
    .end local v4    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    :cond_1d
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    .line 551
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    return v0

    .line 554
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return v0
.end method

.method public getFinalTranslationX()I
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x0

    return v0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 564
    .local v0, "translation":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object v0
.end method

.method public getNoOverflowExtraPadding()I
    .locals 3

    .line 635
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-eqz v0, :cond_0

    .line 636
    const/4 v0, 0x0

    return v0

    .line 639
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    .line 641
    .local v0, "collapsedPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v2

    sub-int v0, v1, v2

    .line 645
    :cond_1
    return v0
.end method

.method public getPartialOverflowExtraPadding()I
    .locals 4

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasPartialOverflow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x0

    return v0

    .line 622
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 624
    .local v0, "partialOverflowAmount":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    .line 626
    .local v1, "adjustedWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v3

    sub-int v0, v2, v3

    .line 630
    :cond_1
    return v0
.end method

.method public hasOverflow()Z
    .locals 1

    .line 599
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPartialOverflow()Z
    .locals 2

    .line 609
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    sget v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->MAX_DOTS:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 230
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 232
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 192
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 194
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 226
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 238
    .local v0, "centerY":F
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 239
    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 243
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 244
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 245
    .local v6, "height":I
    int-to-float v7, v6

    div-float/2addr v7, v1

    sub-float v7, v0, v7

    float-to-int v7, v7

    .line 246
    .local v7, "top":I
    add-int v8, v7, v6

    invoke-virtual {v4, v2, v7, v5, v8}, Landroid/view/View;->layout(IIII)V

    .line 247
    if-nez v3, :cond_0

    .line 248
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    .line 239
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    .line 252
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v1, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    .line 255
    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 288
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 290
    .local v0, "isReplacingIcon":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 291
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 292
    .local v1, "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v0, :cond_0

    .line 293
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 294
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->access$002(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v1    # "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 299
    .local v1, "childIndex":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v4, v1, 0x1

    .line 300
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 301
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_2

    .line 302
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 304
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 307
    :cond_3
    :goto_0
    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_4

    .line 308
    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 310
    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;

    .line 334
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 335
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_4

    .line 336
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 337
    .local v0, "isReplacingIcon":Z
    move-object v7, p1

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 338
    .local v7, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v1

    .line 341
    .local v1, "animationStartIndex":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v2, :cond_0

    .line 342
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 344
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 347
    .end local v1    # "animationStartIndex":I
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v1, :cond_4

    .line 348
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    if-nez v0, :cond_4

    .line 350
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addTransientView(Landroid/view/View;I)V

    .line 351
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v8, v1

    .line 352
    .local v8, "isIsolatedIcon":Z
    const/4 v2, 0x2

    const/4 v3, 0x1

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;

    invoke-direct {v4, p0, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 354
    if-eqz v8, :cond_3

    const-wide/16 v5, 0x6e

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    .line 352
    :goto_1
    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    .line 358
    .end local v0    # "isReplacingIcon":Z
    .end local v7    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v8    # "isIsolatedIcon":Z
    :cond_4
    return-void
.end method

.method public resetViewStates()V
    .locals 5

    .line 374
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 375
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 376
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 377
    .local v3, "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 378
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    iput v4, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 379
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 374
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0
    .param p1, "actualLayoutWidth"    # I

    .line 530
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 534
    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0
    .param p1, "paddingEnd"    # F

    .line 537
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 541
    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0
    .param p1, "paddingStart"    # F

    .line 544
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 548
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 653
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 656
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 657
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v2, :cond_0

    .line 658
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 659
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 654
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v0    # "i":I
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 664
    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0
    .param p1, "changingViewPositions"    # Z

    .line 572
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 573
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 576
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 577
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    xor-int/lit8 v1, p2, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 579
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 580
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    .line 581
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 578
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setIsStaticLayout(Z)V
    .locals 0
    .param p1, "isStaticLayout"    # Z

    .line 526
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 527
    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "isolatedIconLocation"    # Landroid/graphics/Rect;
    .param p2, "requireUpdate"    # Z

    .line 679
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    .line 680
    if-eqz p2, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    .line 683
    :cond_0
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0
    .param p1, "expandAmount"    # F

    .line 595
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 596
    return-void
.end method

.method public setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    .line 667
    .local p1, "replacingIcons":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    .line 668
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "speedBumpIndex"    # I

    .line 591
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 592
    return-void
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p2, "animated"    # Z

    .line 671
    if-eqz p2, :cond_1

    .line 672
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    .line 674
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    .line 676
    return-void
.end method
