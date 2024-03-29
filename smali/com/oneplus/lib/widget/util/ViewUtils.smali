.class public Lcom/oneplus/lib/widget/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final VIEW_STATE_IDS:[I

.field private static final VIEW_STATE_SETS:[[I

.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    .line 53
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 54
    .local v0, "orderedIds":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->OPViewDrawableStates:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 55
    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->OPViewDrawableStates:[I

    aget v3, v3, v2

    .line 56
    .local v3, "viewState":I
    move v5, v1

    .local v5, "j":I
    :goto_1
    sget-object v6, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 57
    sget-object v6, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    aget v6, v6, v5

    if-ne v6, v3, :cond_0

    .line 58
    mul-int/lit8 v6, v2, 0x2

    aput v3, v0, v6

    .line 59
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    sget-object v7, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    aput v7, v0, v6

    .line 56
    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 54
    .end local v3    # "viewState":I
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_2
    sget-object v2, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    array-length v2, v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 65
    .local v2, "NUM_BITS":I
    shl-int v5, v4, v2

    new-array v5, v5, [[I

    sput-object v5, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    .line 66
    move v5, v1

    .local v5, "i":I
    :goto_2
    sget-object v6, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_5

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    .line 68
    .local v6, "numBits":I
    new-array v7, v6, [I

    .line 69
    .local v7, "set":[I
    const/4 v8, 0x0

    .line 70
    .local v8, "pos":I
    move v9, v8

    move v8, v1

    .local v8, "j":I
    .local v9, "pos":I
    :goto_3
    array-length v10, v0

    if-ge v8, v10, :cond_4

    .line 71
    add-int/lit8 v10, v8, 0x1

    aget v10, v0, v10

    and-int/2addr v10, v5

    if-eqz v10, :cond_3

    .line 72
    add-int/lit8 v10, v9, 0x1

    .local v10, "pos":I
    aget v11, v0, v8

    aput v11, v7, v9

    .line 70
    .end local v9    # "pos":I
    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    :cond_3
    add-int/lit8 v8, v8, 0x2

    goto :goto_3

    .line 75
    .end local v8    # "j":I
    :cond_4
    sget-object v8, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    aput-object v7, v8, v5

    .line 66
    .end local v6    # "numBits":I
    .end local v7    # "set":[I
    .end local v9    # "pos":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 80
    .end local v0    # "orderedIds":[I
    .end local v2    # "NUM_BITS":I
    .end local v5    # "i":I
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_7

    .line 82
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v2, "computeFitSystemWindows"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v1

    const-class v1, Landroid/graphics/Rect;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 84
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 85
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_6
    goto :goto_4

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtils"

    const-string v2, "Could not find method computeFitSystemWindows. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_7
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .line 132
    or-int v0, p0, p1

    return v0
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .line 113
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewUtils"

    const-string v2, "Could not invoke computeFitSystemWindows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 166
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getViewState(I)[I
    .locals 2
    .param p0, "mask"    # I

    .line 95
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 98
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    aget-object v0, v0, p0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibleRect"    # Landroid/graphics/Rect;

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "makeOptionalFitsSystemWindows"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 148
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ViewUtils"

    const-string v2, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ViewUtils"

    const-string v2, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 149
    :catch_2
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtils"

    const-string v2, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 157
    :cond_1
    :goto_1
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 174
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 176
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 177
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 178
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 180
    :cond_0
    return-void
.end method
