.class Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;
.super Landroid/os/Handler;
.source "FrameAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/FrameAnimationHelper;->startHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$000(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 91
    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$200(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$000(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$300(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_2
    :goto_1
    return-void
.end method
