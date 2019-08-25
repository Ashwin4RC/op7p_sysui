.class Lcom/android/settingslib/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 846
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 847
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 908
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 909
    .local v1, "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 910
    .local v2, "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_0

    .line 911
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    .line 913
    .end local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_0
    goto :goto_0

    .line 900
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 901
    .restart local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 902
    .restart local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_1

    .line 903
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    .line 905
    .end local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_1
    goto :goto_1

    .line 906
    :cond_2
    goto/16 :goto_9

    .line 891
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 892
    .restart local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 893
    .restart local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_4

    .line 894
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 897
    .end local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_4
    goto :goto_2

    .line 898
    :cond_5
    goto/16 :goto_9

    .line 883
    :pswitch_3
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 884
    .restart local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 885
    .restart local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_6

    .line 886
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 888
    .end local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_6
    goto :goto_4

    .line 889
    :cond_7
    goto/16 :goto_9

    .line 874
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 875
    .restart local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 876
    .restart local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_8

    .line 877
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 880
    .end local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_8
    goto :goto_5

    .line 881
    :cond_9
    goto/16 :goto_9

    .line 866
    :pswitch_5
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 867
    .restart local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 868
    .restart local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_a

    .line 869
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 871
    .end local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_a
    goto :goto_6

    .line 872
    :cond_b
    goto :goto_9

    .line 858
    :pswitch_6
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 859
    .restart local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 860
    .restart local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v2, :cond_c

    .line 861
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 863
    .end local v1    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v2    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_c
    goto :goto_7

    .line 864
    :cond_d
    goto :goto_9

    .line 849
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 850
    .local v0, "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 851
    .local v2, "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 852
    .local v3, "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    if-eqz v3, :cond_e

    if-ne v3, v0, :cond_e

    .line 853
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 855
    .end local v2    # "sessionRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v3    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_e
    goto :goto_8

    .line 856
    .end local v0    # "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_f
    nop

    .line 916
    :cond_10
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
