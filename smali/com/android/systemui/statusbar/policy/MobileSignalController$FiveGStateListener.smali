.class Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;
.super Ljava/lang/Object;
.source "MobileSignalController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FiveGStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1487
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
