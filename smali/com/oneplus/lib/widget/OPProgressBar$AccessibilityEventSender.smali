.class Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "OPProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPProgressBar;


# virtual methods
.method public run()V
    .locals 2

    .line 1888
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->sendAccessibilityEvent(I)V

    .line 1889
    return-void
.end method
