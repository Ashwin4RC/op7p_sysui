.class public Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;
.super Ljava/lang/Object;
.source "OPCameraAnimateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$MotorStateChangedCallback;
    }
.end annotation


# instance fields
.field private final MOTOR_SERVICE:Ljava/lang/String;

.field private mAvailabilityCallback:Landroid/os/IMotorStateChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mGraphLight:Lcom/android/systemui/statusbar/policy/GraphLight;

.field private mManager:Landroid/os/MotorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "motor"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->MOTOR_SERVICE:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;)Lcom/android/systemui/statusbar/policy/GraphLight;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mGraphLight:Lcom/android/systemui/statusbar/policy/GraphLight;

    return-object v0
.end method

.method private registerCameraCallback()V
    .locals 3

    .line 41
    const-string v0, "OPCameraAnimateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCameraCallback mManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mManager:Landroid/os/MotorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mManager:Landroid/os/MotorManager;

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$MotorStateChangedCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$MotorStateChangedCallback;-><init>(Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;Lcom/android/systemui/statusbar/policy/OPCameraAnimateController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mAvailabilityCallback:Landroid/os/IMotorStateChangedCallback;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mManager:Landroid/os/MotorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mAvailabilityCallback:Landroid/os/IMotorStateChangedCallback;

    invoke-virtual {v0, v1}, Landroid/os/MotorManager;->registerMotorStateChangedCallback(Landroid/os/IMotorStateChangedCallback;)V

    .line 47
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 28
    const-string v0, "OPCameraAnimateController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mContext:Landroid/content/Context;

    const-string v1, "motor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MotorManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mManager:Landroid/os/MotorManager;

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/policy/GraphLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/GraphLight;-><init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->mGraphLight:Lcom/android/systemui/statusbar/policy/GraphLight;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/OPCameraAnimateController;->registerCameraCallback()V

    .line 32
    return-void
.end method
