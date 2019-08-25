.class final Lcom/oneplus/aod/AodWindowManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodWindowManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/AodWindowManager;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    .line 277
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 278
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodWindowManager;->access$000(Lcom/oneplus/aod/AodWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v2}, Lcom/oneplus/aod/AodWindowManager;->access$600(Lcom/oneplus/aod/AodWindowManager;)Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 284
    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v2}, Lcom/oneplus/aod/AodWindowManager;->access$600(Lcom/oneplus/aod/AodWindowManager;)Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v2}, Lcom/oneplus/aod/AodWindowManager;->access$600(Lcom/oneplus/aod/AodWindowManager;)Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 289
    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v2}, Lcom/oneplus/aod/AodWindowManager;->access$600(Lcom/oneplus/aod/AodWindowManager;)Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 291
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 295
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 297
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 299
    .local v0, "currentUserId":I
    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodWindowManager;->access$000(Lcom/oneplus/aod/AodWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oneplus/aod/AodUtils;->updateNotificationWakeState(Landroid/content/Context;I)V

    goto :goto_0

    .line 301
    :cond_0
    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodWindowManager;->access$000(Lcom/oneplus/aod/AodWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oneplus/aod/AodUtils;->updateAlwaysOnState(Landroid/content/Context;I)V

    goto :goto_0

    .line 303
    :cond_1
    sget-object v1, Lcom/oneplus/aod/AodUtils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodWindowManager;->access$000(Lcom/oneplus/aod/AodWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oneplus/aod/AodUtils;->updateMotionAwakeState(Landroid/content/Context;I)V

    goto :goto_0

    .line 310
    :cond_2
    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodWindowManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodWindowManager;->access$000(Lcom/oneplus/aod/AodWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oneplus/aod/AodUtils;->updateSingleTapAwakeState(Landroid/content/Context;I)V

    .line 314
    :cond_3
    :goto_0
    return-void
.end method
