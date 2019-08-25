.class Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$MotorStateChangedCallback;
.super Landroid/os/IMotorStateChangedCallback$Stub;
.source "OPCameraAnimateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotorStateChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$MotorStateChangedCallback;->this$0:Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;

    invoke-direct {p0}, Landroid/os/IMotorStateChangedCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$1;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$MotorStateChangedCallback;-><init>(Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;)V

    return-void
.end method


# virtual methods
.method public onMotorStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 52
    const-string v0, "OPCameraAnimateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotorStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$MotorStateChangedCallback;->this$0:Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->access$100(Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;)Lcom/android/systemui/statusbar/policy/GraphLight;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/GraphLight;->postShow()V

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, -0xa

    if-ne p1, v0, :cond_2

    .line 56
    :cond_1
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->onMotorStateChanged(I)V

    .line 61
    :cond_2
    :goto_0
    return-void
.end method
