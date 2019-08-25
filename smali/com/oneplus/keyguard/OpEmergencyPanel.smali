.class public Lcom/oneplus/keyguard/OpEmergencyPanel;
.super Landroid/widget/FrameLayout;
.source "OpEmergencyPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;
    }
.end annotation


# instance fields
.field private isStart:Z

.field private mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

.field private mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

.field private mContext:Landroid/content/Context;

.field private mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

.field private mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    .line 90
    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    .line 91
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 60
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBubbleTouched()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onBubbleTouched()V

    .line 87
    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onDrop()V

    .line 100
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpEmergencyPanel"

    const-string v1, "onDrop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

    .line 54
    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpEmergencyBubble;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

    .line 55
    new-instance v0, Lcom/oneplus/keyguard/OpDragPanelController;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/oneplus/keyguard/OpDragPanelController;-><init>(Landroid/content/Context;Lcom/oneplus/keyguard/OpEmergencyPanel;Lcom/oneplus/keyguard/OpEmergencyBubble;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    .line 56
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->isStart:Z

    .line 65
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->onStart()V

    .line 68
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->isStart:Z

    .line 72
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->onStop()V

    .line 75
    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onTimeout()V

    .line 81
    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    .line 95
    return-void
.end method
