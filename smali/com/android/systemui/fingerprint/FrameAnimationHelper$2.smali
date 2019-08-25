.class Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;
.super Ljava/lang/Object;
.source "FrameAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FrameAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    .line 243
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$400(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$500(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$600(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set mBitmap = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$400(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$700(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$402(Lcom/android/systemui/fingerprint/FrameAnimationHelper;I)I

    .line 251
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$800(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$402(Lcom/android/systemui/fingerprint/FrameAnimationHelper;I)I

    .line 256
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$700(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$800(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$400(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$700(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$900(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$1000(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$408(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$1100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$400(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$500(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$1200(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$1200(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;->animationFinished()V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$1202(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    .line 269
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$1102(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Z)Z

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$1100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->start(Z)V

    goto :goto_0

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$700(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;->this$0:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->access$700(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :cond_5
    :goto_0
    return-void
.end method
