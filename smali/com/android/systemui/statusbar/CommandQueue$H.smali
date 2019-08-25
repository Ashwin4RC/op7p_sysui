.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .line 707
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 708
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 709
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/systemui/statusbar/CommandQueue$1;

    .line 706
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 712
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 713
    .local v0, "what":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3e

    .line 1005
    :sswitch_0
    move v3, v2

    .line 1005
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 1006
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onInputShown(ZI)V

    .line 1005
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    .end local v3    # "i":I
    :sswitch_1
    nop

    .line 942
    .local v2, "i":I
    :goto_2
    move v1, v2

    .line 942
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 943
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintAuthenticatedFail()V

    .line 942
    add-int/lit8 v2, v1, 0x1

    .line 942
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 945
    .end local v2    # "i":I
    :cond_1
    goto/16 :goto_3e

    .line 937
    :sswitch_2
    nop

    .line 937
    .restart local v2    # "i":I
    :goto_3
    move v1, v2

    .line 937
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 938
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintEnrollResult()V

    .line 937
    add-int/lit8 v2, v1, 0x1

    .line 937
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 940
    .end local v2    # "i":I
    :cond_2
    goto/16 :goto_3e

    .line 931
    :sswitch_3
    nop

    .line 931
    .restart local v2    # "i":I
    :goto_4
    move v1, v2

    .line 931
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 932
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintAcquired(II)V

    .line 931
    add-int/lit8 v2, v1, 0x1

    .line 931
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 934
    .end local v2    # "i":I
    :cond_3
    goto/16 :goto_3e

    .line 993
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 994
    .local v1, "args2":Lcom/android/internal/os/SomeArgs;
    nop

    .line 994
    .restart local v2    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 995
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    .line 996
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 995
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentAppsWithGesture(IIFF)V

    .line 994
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 998
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 999
    goto/16 :goto_3e

    .line 743
    .end local v1    # "args2":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    nop

    .line 743
    .restart local v2    # "i":I
    :goto_6
    move v1, v2

    .line 743
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 744
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanelWithVelocity(I)V

    .line 743
    add-int/lit8 v2, v1, 0x1

    .line 743
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_6

    .line 746
    .end local v2    # "i":I
    :cond_5
    goto/16 :goto_3e

    .line 984
    :sswitch_6
    nop

    .line 984
    .restart local v2    # "i":I
    :goto_7
    move v1, v2

    .line 984
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 985
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notifyNavBarColorChanged(ILjava/lang/String;)V

    .line 984
    add-int/lit8 v2, v1, 0x1

    .line 984
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_7

    .line 987
    .end local v2    # "i":I
    :cond_6
    goto/16 :goto_3e

    .line 978
    :sswitch_7
    nop

    .line 978
    .restart local v2    # "i":I
    :goto_8
    move v1, v2

    .line 978
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 979
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    .line 978
    add-int/lit8 v2, v1, 0x1

    .line 978
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_8

    .line 981
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_3e

    .line 973
    :sswitch_8
    nop

    .line 973
    .restart local v2    # "i":I
    :goto_9
    move v1, v2

    .line 973
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 974
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    .line 973
    add-int/lit8 v2, v1, 0x1

    .line 973
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_9

    .line 976
    .end local v2    # "i":I
    :cond_8
    goto/16 :goto_3e

    .line 968
    :sswitch_9
    nop

    .line 968
    .restart local v2    # "i":I
    :goto_a
    move v1, v2

    .line 968
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 969
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    .line 968
    add-int/lit8 v2, v1, 0x1

    .line 968
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_a

    .line 971
    .end local v2    # "i":I
    :cond_9
    goto/16 :goto_3e

    .line 963
    :sswitch_a
    nop

    .line 963
    .restart local v2    # "i":I
    :goto_b
    move v1, v2

    .line 963
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 964
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideFingerprintDialog()V

    .line 963
    add-int/lit8 v2, v1, 0x1

    .line 963
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_b

    .line 966
    .end local v2    # "i":I
    :cond_a
    goto/16 :goto_3e

    .line 958
    :sswitch_b
    nop

    .line 958
    .restart local v2    # "i":I
    :goto_c
    move v1, v2

    .line 958
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 959
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintError(Ljava/lang/String;)V

    .line 958
    add-int/lit8 v2, v1, 0x1

    .line 958
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_c

    .line 961
    .end local v2    # "i":I
    :cond_b
    goto/16 :goto_3e

    .line 953
    :sswitch_c
    nop

    .line 953
    .restart local v2    # "i":I
    :goto_d
    move v1, v2

    .line 953
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 954
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintHelp(Ljava/lang/String;)V

    .line 953
    add-int/lit8 v2, v1, 0x1

    .line 953
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_d

    .line 956
    .end local v2    # "i":I
    :cond_c
    goto/16 :goto_3e

    .line 948
    :sswitch_d
    nop

    .line 948
    .restart local v2    # "i":I
    :goto_e
    move v1, v2

    .line 948
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 949
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintAuthenticated()V

    .line 948
    add-int/lit8 v2, v1, 0x1

    .line 948
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_e

    .line 951
    .end local v2    # "i":I
    :cond_d
    goto/16 :goto_3e

    .line 915
    :sswitch_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x2a0000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x290000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x280000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x670000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x680000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x690000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 923
    nop

    .line 923
    .restart local v2    # "i":I
    :goto_f
    move v1, v2

    .line 923
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 924
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    .line 923
    add-int/lit8 v2, v1, 0x1

    .line 923
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_f

    .line 928
    .end local v2    # "i":I
    :cond_e
    goto/16 :goto_3e

    .line 910
    :sswitch_f
    move v3, v2

    .line 910
    .restart local v3    # "i":I
    :goto_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 911
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_f

    move v6, v1

    goto :goto_11

    :cond_f
    move v6, v2

    :goto_11
    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    .line 910
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 913
    .end local v3    # "i":I
    :cond_10
    goto/16 :goto_3e

    .line 905
    :sswitch_10
    move v3, v2

    .line 905
    .restart local v3    # "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 906
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_11

    move v5, v1

    goto :goto_13

    :cond_11
    move v5, v2

    :goto_13
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    .line 905
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 908
    .end local v3    # "i":I
    :cond_12
    goto/16 :goto_3e

    .line 900
    :sswitch_11
    move v3, v2

    .line 900
    .restart local v3    # "i":I
    :goto_14
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 901
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_13

    move v5, v1

    goto :goto_15

    :cond_13
    move v5, v2

    :goto_15
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(ZLjava/lang/String;)V

    .line 900
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 903
    .end local v3    # "i":I
    :cond_14
    goto/16 :goto_3e

    .line 754
    :sswitch_12
    nop

    .line 754
    .restart local v2    # "i":I
    :goto_16
    move v1, v2

    .line 754
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 755
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    .line 754
    add-int/lit8 v2, v1, 0x1

    .line 754
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_16

    .line 757
    .end local v2    # "i":I
    :cond_15
    goto/16 :goto_3e

    .line 895
    :sswitch_13
    nop

    .line 895
    .restart local v2    # "i":I
    :goto_17
    move v1, v2

    .line 895
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 896
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu()V

    .line 895
    add-int/lit8 v2, v1, 0x1

    .line 895
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_17

    .line 898
    .end local v2    # "i":I
    :cond_16
    goto/16 :goto_3e

    .line 890
    :sswitch_14
    nop

    .line 890
    .restart local v2    # "i":I
    :goto_18
    move v1, v2

    .line 890
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 891
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(I)V

    .line 890
    add-int/lit8 v2, v1, 0x1

    .line 890
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_18

    .line 893
    .end local v2    # "i":I
    :cond_17
    goto/16 :goto_3e

    .line 808
    :sswitch_15
    nop

    .line 808
    .restart local v2    # "i":I
    :goto_19
    move v1, v2

    .line 808
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 809
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    .line 808
    add-int/lit8 v2, v1, 0x1

    .line 808
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_19

    .line 811
    .end local v2    # "i":I
    :cond_18
    goto/16 :goto_3e

    .line 845
    :sswitch_16
    nop

    .line 845
    .restart local v2    # "i":I
    :goto_1a
    move v1, v2

    .line 845
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 846
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished()V

    .line 845
    add-int/lit8 v2, v1, 0x1

    .line 845
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1a

    .line 848
    .end local v2    # "i":I
    :cond_19
    goto/16 :goto_3e

    .line 885
    :sswitch_17
    nop

    .line 885
    .restart local v2    # "i":I
    :goto_1b
    move v1, v2

    .line 885
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 886
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    .line 885
    add-int/lit8 v2, v1, 0x1

    .line 885
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1b

    .line 888
    .end local v2    # "i":I
    :cond_1a
    goto/16 :goto_3e

    .line 880
    :sswitch_18
    nop

    .line 880
    .restart local v2    # "i":I
    :goto_1c
    move v1, v2

    .line 880
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 881
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    .line 880
    add-int/lit8 v2, v1, 0x1

    .line 880
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1c

    .line 883
    .end local v2    # "i":I
    :cond_1b
    goto/16 :goto_3e

    .line 875
    :sswitch_19
    nop

    .line 875
    .restart local v2    # "i":I
    :goto_1d
    move v1, v2

    .line 875
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 876
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    .line 875
    add-int/lit8 v2, v1, 0x1

    .line 875
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1d

    .line 878
    .end local v2    # "i":I
    :cond_1c
    goto/16 :goto_3e

    .line 870
    :sswitch_1a
    nop

    .line 870
    .restart local v2    # "i":I
    :goto_1e
    move v1, v2

    .line 870
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 871
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    .line 870
    add-int/lit8 v2, v1, 0x1

    .line 870
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1e

    .line 873
    .end local v2    # "i":I
    :cond_1d
    goto/16 :goto_3e

    .line 865
    :sswitch_1b
    nop

    .line 865
    .restart local v2    # "i":I
    :goto_1f
    move v1, v2

    .line 865
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 866
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    .line 865
    add-int/lit8 v2, v1, 0x1

    .line 865
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1f

    .line 868
    .end local v2    # "i":I
    :cond_1e
    goto/16 :goto_3e

    .line 813
    :sswitch_1c
    nop

    .line 813
    .restart local v2    # "i":I
    :goto_20
    move v1, v2

    .line 813
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 814
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    .line 813
    add-int/lit8 v2, v1, 0x1

    .line 813
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_20

    .line 816
    .end local v2    # "i":I
    :cond_1f
    goto/16 :goto_3e

    .line 860
    :sswitch_1d
    nop

    .line 860
    .restart local v2    # "i":I
    :goto_21
    move v1, v2

    .line 860
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 861
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    .line 860
    add-int/lit8 v2, v1, 0x1

    .line 860
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_21

    .line 863
    .end local v2    # "i":I
    :cond_20
    goto/16 :goto_3e

    .line 855
    :sswitch_1e
    nop

    .line 855
    .restart local v2    # "i":I
    :goto_22
    move v1, v2

    .line 855
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 856
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    .line 855
    add-int/lit8 v2, v1, 0x1

    .line 855
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_22

    .line 858
    .end local v2    # "i":I
    :cond_21
    goto/16 :goto_3e

    .line 850
    :sswitch_1f
    nop

    .line 850
    .restart local v2    # "i":I
    :goto_23
    move v1, v2

    .line 850
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 851
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    .line 850
    add-int/lit8 v2, v1, 0x1

    .line 850
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_23

    .line 853
    .end local v2    # "i":I
    :cond_22
    goto/16 :goto_3e

    .line 838
    :sswitch_20
    move v3, v2

    .line 838
    .restart local v3    # "i":I
    :goto_24
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 839
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 840
    .local v4, "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_23

    move v11, v1

    goto :goto_25

    :cond_23
    move v11, v2

    :goto_25
    invoke-interface/range {v6 .. v11}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(JJZ)V

    .line 838
    .end local v4    # "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 843
    .end local v3    # "i":I
    :cond_24
    goto/16 :goto_3e

    .line 833
    :sswitch_21
    nop

    .line 833
    .restart local v2    # "i":I
    :goto_26
    move v1, v2

    .line 833
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 834
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled()V

    .line 833
    add-int/lit8 v2, v1, 0x1

    .line 833
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_26

    .line 836
    .end local v2    # "i":I
    :cond_25
    goto/16 :goto_3e

    .line 828
    :sswitch_22
    move v3, v2

    .line 828
    .restart local v3    # "i":I
    :goto_27
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 829
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_26

    move v5, v1

    goto :goto_28

    :cond_26
    move v5, v2

    :goto_28
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(Z)V

    .line 828
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 831
    .end local v3    # "i":I
    :cond_27
    goto/16 :goto_3e

    .line 823
    :sswitch_23
    nop

    .line 823
    .restart local v2    # "i":I
    :goto_29
    move v1, v2

    .line 823
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 824
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    .line 823
    add-int/lit8 v2, v1, 0x1

    .line 823
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_29

    .line 826
    .end local v2    # "i":I
    :cond_28
    goto/16 :goto_3e

    .line 788
    :sswitch_24
    move v3, v2

    .line 788
    .restart local v3    # "i":I
    :goto_2a
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 789
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_29

    move v5, v1

    goto :goto_2b

    :cond_29
    move v5, v2

    :goto_2b
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_2a

    move v6, v1

    goto :goto_2c

    :cond_2a
    move v6, v2

    :goto_2c
    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 791
    .end local v3    # "i":I
    :cond_2b
    goto/16 :goto_3e

    .line 783
    :sswitch_25
    move v3, v2

    .line 783
    .restart local v3    # "i":I
    :goto_2d
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 784
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2c

    move v5, v1

    goto :goto_2e

    :cond_2c
    move v5, v2

    :goto_2e
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    .line 783
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 786
    .end local v3    # "i":I
    :cond_2d
    goto/16 :goto_3e

    .line 818
    :sswitch_26
    nop

    .line 818
    .restart local v2    # "i":I
    :goto_2f
    move v1, v2

    .line 818
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 819
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(II)V

    .line 818
    add-int/lit8 v2, v1, 0x1

    .line 818
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2f

    .line 821
    .end local v2    # "i":I
    :cond_2e
    goto/16 :goto_3e

    .line 803
    :sswitch_27
    nop

    .line 803
    .restart local v2    # "i":I
    :goto_30
    move v1, v2

    .line 803
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 804
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    .line 803
    add-int/lit8 v2, v1, 0x1

    .line 803
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_30

    .line 806
    .end local v2    # "i":I
    :cond_2f
    goto/16 :goto_3e

    .line 798
    :sswitch_28
    nop

    .line 798
    .restart local v2    # "i":I
    :goto_31
    move v1, v2

    .line 798
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 799
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    .line 798
    add-int/lit8 v2, v1, 0x1

    .line 798
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_31

    .line 801
    .end local v2    # "i":I
    :cond_30
    goto/16 :goto_3e

    .line 793
    :sswitch_29
    nop

    .line 793
    .restart local v2    # "i":I
    :goto_32
    move v1, v2

    .line 793
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 794
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    .line 793
    add-int/lit8 v2, v1, 0x1

    .line 793
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_32

    .line 796
    .end local v2    # "i":I
    :cond_31
    goto/16 :goto_3e

    .line 777
    :sswitch_2a
    move v1, v2

    .line 777
    .restart local v1    # "i":I
    :goto_33
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 778
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 779
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "showImeSwitcherKey"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 778
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 781
    .end local v1    # "i":I
    :cond_32
    goto/16 :goto_3e

    .line 772
    :sswitch_2b
    move v3, v2

    .line 772
    .restart local v3    # "i":I
    :goto_34
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 773
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_33

    move v5, v1

    goto :goto_35

    :cond_33
    move v5, v2

    :goto_35
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->topAppWindowChanged(Z)V

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 775
    .end local v3    # "i":I
    :cond_34
    goto/16 :goto_3e

    .line 764
    :sswitch_2c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 765
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    nop

    .line 765
    .restart local v2    # "i":I
    :goto_36
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 766
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Landroid/graphics/Rect;

    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 769
    .end local v2    # "i":I
    :cond_35
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 770
    goto/16 :goto_3e

    .line 759
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2d
    nop

    .line 759
    .restart local v2    # "i":I
    :goto_37
    move v1, v2

    .line 759
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 760
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 759
    add-int/lit8 v2, v1, 0x1

    .line 759
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_37

    .line 762
    .end local v2    # "i":I
    :cond_36
    goto/16 :goto_3e

    .line 749
    :sswitch_2e
    nop

    .line 749
    .restart local v2    # "i":I
    :goto_38
    move v1, v2

    .line 749
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 750
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(I)V

    .line 749
    add-int/lit8 v2, v1, 0x1

    .line 749
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_38

    .line 752
    .end local v2    # "i":I
    :cond_37
    goto/16 :goto_3e

    .line 737
    :sswitch_2f
    nop

    .line 737
    .restart local v2    # "i":I
    :goto_39
    move v1, v2

    .line 737
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 738
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    .line 737
    add-int/lit8 v2, v1, 0x1

    .line 737
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_39

    .line 740
    .end local v2    # "i":I
    :cond_38
    goto/16 :goto_3e

    .line 732
    :sswitch_30
    nop

    .line 732
    .restart local v2    # "i":I
    :goto_3a
    move v1, v2

    .line 732
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 733
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIZ)V

    .line 732
    add-int/lit8 v2, v1, 0x1

    .line 732
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3a

    .line 735
    .end local v2    # "i":I
    :cond_39
    goto :goto_3e

    .line 715
    :sswitch_31
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_3d

    .line 724
    :pswitch_0
    nop

    .line 724
    .restart local v2    # "i":I
    :goto_3b
    move v1, v2

    .line 724
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 725
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    .line 724
    add-int/lit8 v2, v1, 0x1

    .line 724
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3b

    .line 717
    .end local v2    # "i":I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 718
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    nop

    .line 718
    .restart local v2    # "i":I
    :goto_3c
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 719
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 718
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 721
    .end local v2    # "i":I
    :cond_3a
    nop

    .line 729
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_3b
    :goto_3d
    nop

    .line 1011
    :cond_3c
    :goto_3e
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_31
        0x20000 -> :sswitch_30
        0x30000 -> :sswitch_2f
        0x40000 -> :sswitch_2e
        0x50000 -> :sswitch_2d
        0x60000 -> :sswitch_2c
        0x70000 -> :sswitch_2b
        0x80000 -> :sswitch_2a
        0x90000 -> :sswitch_29
        0xa0000 -> :sswitch_28
        0xb0000 -> :sswitch_27
        0xc0000 -> :sswitch_26
        0xd0000 -> :sswitch_25
        0xe0000 -> :sswitch_24
        0x120000 -> :sswitch_23
        0x130000 -> :sswitch_22
        0x140000 -> :sswitch_21
        0x150000 -> :sswitch_20
        0x160000 -> :sswitch_1f
        0x170000 -> :sswitch_1e
        0x180000 -> :sswitch_1d
        0x190000 -> :sswitch_1c
        0x1a0000 -> :sswitch_1b
        0x1b0000 -> :sswitch_1a
        0x1c0000 -> :sswitch_19
        0x1d0000 -> :sswitch_18
        0x1e0000 -> :sswitch_17
        0x1f0000 -> :sswitch_16
        0x200000 -> :sswitch_15
        0x210000 -> :sswitch_14
        0x220000 -> :sswitch_13
        0x230000 -> :sswitch_12
        0x240000 -> :sswitch_11
        0x250000 -> :sswitch_10
        0x260000 -> :sswitch_f
        0x270000 -> :sswitch_e
        0x280000 -> :sswitch_d
        0x290000 -> :sswitch_c
        0x2a0000 -> :sswitch_b
        0x2b0000 -> :sswitch_a
        0x2c0000 -> :sswitch_9
        0x2d0000 -> :sswitch_8
        0x2e0000 -> :sswitch_7
        0x640000 -> :sswitch_6
        0x650000 -> :sswitch_5
        0x660000 -> :sswitch_4
        0x670000 -> :sswitch_3
        0x680000 -> :sswitch_2
        0x690000 -> :sswitch_1
        0x6b0000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
