.class public Lcom/android/systemui/fingerprint/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# instance fields
.field private final BRIGHTNESS_ALPHA_ARRAY:[[I

.field private final TAG:Ljava/lang/String;

.field private TYPE_DIM:I

.field private TYPE_DISABLE:I

.field private TYPE_HIGH_LIGHT:I

.field private TYPE_NORMAL:I

.field private mContext:Landroid/content/Context;

.field private mDefaultBacklight:I

.field private mHasCustomizedHightlight:Z

.field mPaint:Landroid/graphics/Paint;

.field public mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field mPath:Landroid/graphics/Path;

.field private mRadius:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    .line 31
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    .line 32
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    .line 33
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    .line 47
    const/16 v4, 0x15

    new-array v4, v4, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v4, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    aput-object v0, v4, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v1, 0xa

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v1, 0xb

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v4, v1

    iput-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    .line 127
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xec
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xeb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xea
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe8
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe4
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xdc
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xd4
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x83
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x60
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x53
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x3c
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x7d0
        0x83
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    .line 31
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    .line 32
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    .line 33
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    .line 47
    const/16 v4, 0x15

    new-array v4, v4, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v4, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    aput-object v0, v4, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v1, 0xa

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v1, 0xb

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v4, v1

    iput-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    .line 121
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xec
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xeb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xea
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe8
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe4
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xdc
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xd4
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x83
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x60
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x53
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x3c
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x7d0
        0x83
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    .line 31
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    .line 32
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    .line 33
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    .line 47
    const/16 v4, 0x15

    new-array v4, v4, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v4, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    aput-object v0, v4, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v1, 0xa

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v1, 0xb

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v4, v1

    iput-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    .line 115
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xec
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xeb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xea
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe8
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe4
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xdc
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xd4
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x83
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x60
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x53
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x3c
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x7d0
        0x83
    .end array-data
.end method

.method private getDimAlpha()I
    .locals 10

    .line 85
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mDefaultBacklight:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 88
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    array-length v1, v1

    .line 89
    .local v1, "level":I
    const-string v2, "CircleImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, "i":I
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 93
    iget-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    if-lt v4, v0, :cond_0

    .line 94
    goto :goto_1

    .line 92
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    :goto_1
    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 99
    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v3, v5, v3

    aget v3, v3, v4

    return v3

    .line 100
    :cond_2
    if-ne v2, v1, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    add-int/lit8 v5, v1, -0x1

    aget-object v3, v3, v5

    aget v3, v3, v4

    return v3

    .line 104
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    aget v6, v5, v3

    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v5, v5, v2

    aget v7, v5, v3

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    add-int/lit8 v5, v2, -0x1

    aget-object v3, v3, v5

    aget v8, v3, v4

    iget-object v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    aget-object v3, v3, v2

    aget v9, v3, v4

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/fingerprint/CircleImageView;->interpolate(IIIII)I

    move-result v3

    return v3
.end method

.method private initPaint()V
    .locals 3

    .line 160
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mHasCustomizedHightlight:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    return-void
.end method

.method private interpolate(IIIII)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "xa"    # I
    .param p3, "xb"    # I
    .param p4, "ya"    # I
    .param p5, "yb"    # I

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "sub":I
    sub-int v1, p5, p4

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int v3, p1, p2

    mul-int/2addr v1, v3

    sub-int v3, p3, p2

    div-int/2addr v1, v3

    .line 75
    .local v1, "bf":I
    div-int/lit8 v3, v1, 0x2

    .line 76
    .local v3, "factor":I
    rem-int/lit8 v4, v1, 0x2

    .line 77
    .local v4, "plus":I
    sub-int v5, p2, p3

    if-eqz v5, :cond_0

    sub-int v5, p5, p4

    if-eqz v5, :cond_0

    .line 78
    sub-int v5, p1, p2

    mul-int/2addr v2, v5

    sub-int v5, p1, p3

    mul-int/2addr v2, v5

    sub-int v5, p5, p4

    div-int/2addr v2, v5

    sub-int v5, p2, p3

    div-int v0, v2, v5

    .line 80
    :cond_0
    add-int v2, p4, v3

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    return v2
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    iput-object p1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getId()I

    move-result v0

    .line 131
    .local v0, "id":I
    const v1, 0x7f0a0303

    if-ne v0, v1, :cond_0

    .line 132
    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    goto :goto_0

    .line 133
    :cond_0
    const v1, 0x7f0a0301

    if-ne v0, v1, :cond_1

    .line 134
    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DISABLE:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    goto :goto_0

    .line 135
    :cond_1
    const v1, 0x7f0a0300

    if-ne v0, v1, :cond_2

    .line 136
    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    goto :goto_0

    .line 137
    :cond_2
    const v1, 0x7f0a02ff

    if-ne v0, v1, :cond_3

    .line 138
    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_NORMAL:I

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    .line 141
    :cond_3
    :goto_0
    const-string v1, "CircleImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-ne v1, v2, :cond_5

    .line 144
    iget-object v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mHasCustomizedHightlight:Z

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    iget-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mRadius:I

    .line 149
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v1, v2, :cond_6

    .line 150
    iget-object v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mRadius:I

    .line 153
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->initPaint()V

    .line 155
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 156
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mDefaultBacklight:I

    .line 157
    return-void
.end method

.method public onBrightnessChange()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->updateIconDim()V

    .line 230
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "cns"    # Landroid/graphics/Canvas;

    .line 181
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-eq v0, v1, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mHasCustomizedHightlight:Z

    if-eqz v0, :cond_1

    .line 188
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 192
    .local v0, "h":F
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 193
    .local v1, "w":F
    iget-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    .line 194
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPath:Landroid/graphics/Path;

    .line 195
    iget-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPath:Landroid/graphics/Path;

    div-float v4, v1, v3

    div-float v5, v0, v3

    div-float v6, v1, v3

    float-to-double v6, v6

    float-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    .line 198
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 195
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 200
    iget-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 203
    :cond_2
    iget v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v2, v4, :cond_3

    .line 204
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 205
    .local v2, "mode":Landroid/graphics/PorterDuffXfermode;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 207
    .end local v2    # "mode":Landroid/graphics/PorterDuffXfermode;
    :cond_3
    div-float v2, v1, v3

    div-float v3, v0, v3

    iget v4, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 222
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->updateIconDim()V

    .line 226
    :cond_0
    return-void
.end method

.method public updateIconDim()V
    .locals 6

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getDimAlpha()I

    move-result v0

    .line 212
    .local v0, "val":I
    const-string v1, "CircleImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIconDim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 214
    .local v1, "alpha":F
    const-string/jumbo v2, "sys.fod.icon.dim"

    const/16 v3, 0x46

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 215
    .local v2, "ratio":F
    const-string v3, "CircleImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alpha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", ratio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    mul-float v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 218
    return-void
.end method

.method public updateLayoutDimension(Z)V
    .locals 2
    .param p1, "is2KDisplay"    # Z

    .line 235
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_HIGH_LIGHT:I

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f0704f3

    goto :goto_0

    :cond_0
    const v1, 0x7f0704f2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mRadius:I

    goto :goto_2

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mType:I

    iget v1, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TYPE_DIM:I

    if-ne v0, v1, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_2

    const v1, 0x7f0704fa

    goto :goto_1

    :cond_2
    const v1, 0x7f0704f9

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mRadius:I

    .line 240
    :cond_3
    :goto_2
    return-void
.end method
