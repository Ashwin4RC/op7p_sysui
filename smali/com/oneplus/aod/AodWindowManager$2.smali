.class Lcom/oneplus/aod/AodWindowManager$2;
.super Ljava/lang/Object;
.source "AodWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodWindowManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/AodWindowManager;

    .line 213
    iput-object p1, p0, Lcom/oneplus/aod/AodWindowManager$2;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager$2;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodWindowManager;->access$300(Lcom/oneplus/aod/AodWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager$2;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodWindowManager;->access$500(Lcom/oneplus/aod/AodWindowManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager$2;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodWindowManager;->access$400(Lcom/oneplus/aod/AodWindowManager;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager$2;->this$0:Lcom/oneplus/aod/AodWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodWindowManager;->access$302(Lcom/oneplus/aod/AodWindowManager;Z)Z

    .line 221
    return-void
.end method
