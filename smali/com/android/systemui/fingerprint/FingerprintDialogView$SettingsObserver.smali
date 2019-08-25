.class final Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final FP_SCREEN_TIMOUT_ANIMATION:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1961
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 1962
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1959
    const-string p1, "fp_screen_time_out"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->FP_SCREEN_TIMOUT_ANIMATION:Landroid/net/Uri;

    .line 1963
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 1975
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1976
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1980
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1982
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$3100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fp_screen_time_out"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 1983
    .local v0, "animate":Z
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$3200(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)V

    .line 1984
    return-void
.end method

.method public register()V
    .locals 3

    .line 1966
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$3100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->FP_SCREEN_TIMOUT_ANIMATION:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1967
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$SettingsObserver;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$3100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1971
    return-void
.end method
