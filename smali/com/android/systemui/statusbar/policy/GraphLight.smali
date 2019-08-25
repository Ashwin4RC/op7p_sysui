.class public Lcom/android/systemui/statusbar/policy/GraphLight;
.super Ljava/lang/Object;
.source "GraphLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;
    }
.end annotation


# instance fields
.field private m2kOr1080p:I

.field private mAnimateImageHeight:I

.field private mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

.field private mAnimateImageWidth:I

.field private final mContext:Landroid/content/Context;

.field private mFrontCameraPosistion:I

.field private final mHandler:Landroid/os/Handler;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mViewAdded:Z

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x1fb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    .line 39
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/policy/GraphLight$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/GraphLight$1;-><init>(Lcom/android/systemui/statusbar/policy/GraphLight;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mShowRunnable:Ljava/lang/Runnable;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mWm:Landroid/view/WindowManager;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/GraphLight;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/GraphLight;

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight;->show()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/GraphLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/GraphLight;

    .line 28
    iget v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/GraphLight;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/GraphLight;

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight;->hide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/GraphLight;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/GraphLight;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method

.method private hide()V
    .locals 2

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewAdded:Z

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 176
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewAdded:Z

    .line 178
    :cond_2
    return-void
.end method

.method private show()V
    .locals 26

    .line 57
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;-><init>(Lcom/android/systemui/statusbar/policy/GraphLight;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    .line 60
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v3, v0

    .line 63
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 65
    .local v4, "screenHeight":I
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 66
    .local v5, "screenWidth":I
    const-string v0, "GraphLight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / screenWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v0, 0x438

    const/4 v6, 0x1

    if-ne v5, v0, :cond_1

    const/16 v0, 0x920

    if-ne v4, v0, :cond_1

    iput v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->m2kOr1080p:I

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->m2kOr1080p:I

    .line 72
    :goto_0
    const v0, 0x7f08074e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 73
    .local v7, "is":Ljava/io/InputStream;
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 74
    .local v8, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    .line 75
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    .line 76
    if-eqz v7, :cond_2

    .line 78
    :try_start_0
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 83
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 84
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    const/4 v8, 0x0

    .line 88
    :cond_3
    iget v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->m2kOr1080p:I

    if-ne v0, v6, :cond_4

    .line 89
    iget v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    int-to-double v9, v0

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v9, v11

    double-to-int v0, v9

    iput v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    .line 90
    iget v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    int-to-double v9, v0

    const-wide v11, 0x3fe7f559b3d07c85L    # 0.7487

    mul-double/2addr v9, v11

    double-to-int v0, v9

    iput v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    .line 93
    :cond_4
    const-string v0, "GraphLight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAnimateImageWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " / mAnimateImageHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const v0, 0x7f07052f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mFrontCameraPosistion:I

    .line 96
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 97
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_5

    .line 98
    return-void

    .line 101
    :cond_5
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 103
    .local v9, "rotation":I
    const-string v10, "GraphLight"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "in first show() / rotation:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v10, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    iget v11, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 105
    .local v10, "wm_w":I
    iget v11, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    iget v12, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 106
    .local v11, "wm_h":I
    iget v12, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mFrontCameraPosistion:I

    .line 107
    .local v12, "wm_xpos":I
    const/4 v13, 0x0

    .line 108
    .local v13, "wm_ypos":I
    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 129
    :pswitch_0
    iget v15, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v15, v10

    .line 130
    iget v13, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mFrontCameraPosistion:I

    .line 131
    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 132
    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 133
    iget-object v14, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 134
    iget-object v14, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v15, v10

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 135
    goto :goto_2

    .line 119
    :pswitch_1
    iget v15, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mFrontCameraPosistion:I

    sub-int/2addr v15, v6

    sub-int v12, v15, v10

    .line 120
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v13, v6, v11

    .line 121
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 122
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 123
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v14, 0x43340000    # 180.0f

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 124
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v14, v10

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 125
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v14, v11

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 126
    goto :goto_2

    .line 111
    :pswitch_2
    const/4 v12, 0x0

    .line 112
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mFrontCameraPosistion:I

    sub-int/2addr v6, v15

    sub-int v13, v6, v11

    .line 113
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 114
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 115
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v14, -0x3d4c0000    # -90.0f

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 116
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v14, v11

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 117
    nop

    .line 140
    :goto_2
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewAdded:Z

    if-nez v6, :cond_6

    .line 141
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 142
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 143
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v21, 0x7de

    const/16 v22, 0x518

    const/16 v23, -0x3

    move-object/from16 v16, v6

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-direct/range {v16 .. v23}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 151
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, -0x3

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 152
    const-string v14, "GraphLight"

    invoke-virtual {v6, v14}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    const/16 v14, 0x33

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 155
    const/4 v14, 0x1

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 156
    iget-object v14, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v14, v15, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageWidth:I

    move-object/from16 v24, v0

    iget v0, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageHeight:I

    .end local v0    # "display":Landroid/view/Display;
    .local v24, "display":Landroid/view/Display;
    invoke-direct {v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v14

    .line 159
    .local v0, "imageLp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v14, 0x1

    iput v14, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 160
    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v14, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mAnimateImageView:Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;

    invoke-virtual {v15, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/android/systemui/statusbar/policy/GraphLight;->mViewAdded:Z

    .end local v0    # "imageLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_3

    .line 165
    .end local v24    # "display":Landroid/view/Display;
    .local v0, "display":Landroid/view/Display;
    :cond_6
    move-object/from16 v24, v0

    .end local v0    # "display":Landroid/view/Display;
    .restart local v24    # "display":Landroid/view/Display;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public postShow()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
