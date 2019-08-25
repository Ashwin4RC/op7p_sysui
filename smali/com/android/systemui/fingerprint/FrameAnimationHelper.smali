.class public Lcom/android/systemui/fingerprint/FrameAnimationHelper;
.super Ljava/lang/Object;
.source "FrameAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;
    }
.end annotation


# instance fields
.field private final MSG_DECODE_BITMAP:I

.field private TAG:Ljava/lang/String;

.field private mAnimPostDelayTime:J

.field private mAnimationView:Landroid/widget/ImageView;

.field private mBitmapArray:[Landroid/graphics/Bitmap;

.field private mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

.field private mDecodeIndex:I

.field private mFrames:[I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLoop:Z

.field private mOrder:I

.field private mPlayFrameNum:I

.field private mStartFrameIndex:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[IJII)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "frameRes"    # [I
    .param p3, "delayTime"    # J
    .param p5, "startFrameIndex"    # I
    .param p6, "playFrameNum"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "FrameAnimationHelper"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->MSG_DECODE_BITMAP:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    .line 42
    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    .line 53
    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    .line 54
    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    .line 243
    new-instance v0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;-><init>(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    move-wide v0, p3

    nop

    :cond_0
    iput-wide v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimPostDelayTime:J

    .line 68
    iput-object p2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    iput p5, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    .line 74
    iput p6, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    .line 76
    return-void

    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-wide v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimPostDelayTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;
    .param p1, "x1"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->decodeBitmap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fingerprint/FrameAnimationHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private decodeBitmap()V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    .local v0, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    add-int/2addr v1, v2

    .line 211
    .local v1, "endFrameIndex":I
    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    iget v3, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    add-int/2addr v2, v3

    .line 214
    .local v2, "frameIndex":I
    if-lt v2, v1, :cond_1

    .line 215
    return-void

    .line 218
    :cond_1
    iget v3, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    .line 219
    .local v3, "decodeIndex":I
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    aget v4, v4, v2

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 220
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    aput-object v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "endFrameIndex":I
    .end local v2    # "frameIndex":I
    .end local v3    # "decodeIndex":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 226
    :goto_0
    return-void
.end method


# virtual methods
.method public prepareResource()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareResource startFrameIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frameNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 189
    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->startHandlerThread()V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    return-void
.end method

.method public resetResource()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "resetResource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 156
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 164
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    .line 166
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 172
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 174
    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    .line 176
    return-void
.end method

.method public start(Z)V
    .locals 4
    .param p1, "loop"    # Z

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->prepareResource()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    .line 122
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void

    .line 107
    :cond_1
    :goto_0
    return-void
.end method

.method public startHandlerThread()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;-><init>(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    .line 103
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    :cond_1
    return-void

    .line 129
    :cond_2
    :goto_0
    return-void
.end method

.method public updateAnimPostDelayTime(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .line 230
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    move-wide v0, p1

    nop

    :cond_0
    iput-wide v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimPostDelayTime:J

    .line 231
    return-void
.end method

.method public waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    .line 236
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;->animationFinished()V

    .line 240
    :cond_1
    return-void
.end method
