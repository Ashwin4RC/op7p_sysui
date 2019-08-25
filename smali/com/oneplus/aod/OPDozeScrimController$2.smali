.class Lcom/oneplus/aod/OPDozeScrimController$2;
.super Ljava/lang/Object;
.source "OPDozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OPDozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OPDozeScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OPDozeScrimController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/OPDozeScrimController;

    .line 200
    iput-object p1, p0, Lcom/oneplus/aod/OPDozeScrimController$2;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$2;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$600(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController$2;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v1}, Lcom/oneplus/aod/OPDozeScrimController;->access$400(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$2;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$400(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    return-void
.end method
