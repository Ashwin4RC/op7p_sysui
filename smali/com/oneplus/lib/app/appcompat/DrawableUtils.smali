.class public Lcom/oneplus/lib/app/appcompat/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 33
    :try_start_0
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 38
    :cond_0
    :goto_0
    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 11
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 109
    return v2

    .line 110
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 113
    return v2

    .line 114
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 115
    return v2

    .line 118
    :cond_2
    const/4 v0, 0x0

    .line 119
    .local v0, "wdClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 121
    .local v1, "dwClass":Ljava/lang/Class;
    :try_start_0
    const-string v3, "android.support.v4.graphics.drawable.WrappedDrawable"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 126
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_1
    const-string v3, "android.support.v4.graphics.drawable.DrawableWrapper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 129
    goto :goto_1

    .line 127
    :catch_1
    move-exception v3

    .line 128
    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 131
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    instance-of v3, p0, Landroid/graphics/drawable/DrawableContainer;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 134
    .local v3, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v5, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v5, :cond_4

    .line 135
    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 137
    .local v5, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v5}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 138
    .local v9, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 139
    return v2

    .line 137
    .end local v9    # "child":Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 143
    .end local v3    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v5    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_4
    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_6

    goto :goto_4

    .line 154
    :cond_6
    instance-of v2, p0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_7

    .line 155
    move-object v2, p0

    check-cast v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    .line 157
    invoke-virtual {v2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    invoke-static {v2}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    return v2

    .line 158
    :cond_7
    instance-of v2, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v2, :cond_8

    .line 159
    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    return v2

    .line 162
    :cond_8
    :goto_3
    return v4

    .line 144
    :cond_9
    :goto_4
    if-nez v0, :cond_a

    move-object v3, v1

    goto :goto_5

    :cond_a
    move-object v3, v0

    .line 146
    .local v3, "dwOrwdClass":Ljava/lang/Class;
    :goto_5
    :try_start_2
    const-string v5, "getWrappedDrawable"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 147
    .local v5, "getWrappedDrawableMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 148
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 149
    .local v4, "returnDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v6

    .line 150
    .end local v4    # "returnDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "getWrappedDrawableMethod":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    return v2
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 171
    .local v0, "originalState":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 173
    :cond_1
    :goto_0
    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 179
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 180
    return-void
.end method
