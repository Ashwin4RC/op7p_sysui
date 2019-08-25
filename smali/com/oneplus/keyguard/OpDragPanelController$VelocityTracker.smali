.class Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpDragPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VelocityTracker"
.end annotation


# instance fields
.field endTime:J

.field mEndPoint:Landroid/graphics/Point;

.field mStartPoint:Landroid/graphics/Point;

.field startTime:J

.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method public constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;FF)V
    .locals 3
    .param p1, "this$0"    # Lcom/oneplus/keyguard/OpDragPanelController;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 232
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->startTime:J

    .line 231
    iput-wide v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->endTime:J

    .line 233
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mStartPoint:Landroid/graphics/Point;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->startTime:J

    .line 235
    return-void
.end method


# virtual methods
.method public isDrop()Z
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mEndPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    .line 244
    .local v0, "distanceY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public updateMovePoint(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 238
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mEndPoint:Landroid/graphics/Point;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->endTime:J

    .line 240
    return-void
.end method
