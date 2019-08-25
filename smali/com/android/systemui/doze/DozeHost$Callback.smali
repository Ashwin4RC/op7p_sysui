.class public interface abstract Lcom/android/systemui/doze/DozeHost$Callback;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onFingerprintPoke()V
    .locals 0

    .line 67
    return-void
.end method

.method public onNotificationHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 64
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 62
    return-void
.end method

.method public onSingleTap()V
    .locals 0

    .line 66
    return-void
.end method

.method public onThreeKeyChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .line 65
    return-void
.end method
