.class final Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;
.super Ljava/lang/Object;
.source "OPFiveGTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/OPFiveGTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSignalCallback"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;)V
    .locals 1

    .line 173
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance p1, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/OPFiveGTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;Lcom/android/systemui/qs/tiles/OPFiveGTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/OPFiveGTile$1;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    return-object v0
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->access$600(Lcom/android/systemui/qs/tiles/OPFiveGTile;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 204
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 4
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataActivityId"    # I
    .param p8, "stackedDataIcon"    # [I
    .param p9, "stackedVoiceIcon"    # [I
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "isWide"    # Z
    .param p13, "subId"    # I
    .param p14, "roaming"    # Z
    .param p15, "connected"    # Z

    move-object v0, p0

    move-object v1, p2

    .line 181
    if-nez v1, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v3, v2, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;->enabled:Z

    .line 186
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->access$400(Lcom/android/systemui/qs/tiles/OPFiveGTile;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "simDetected"    # Z

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;->noSim:Z

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/OPFiveGTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->access$500(Lcom/android/systemui/qs/tiles/OPFiveGTile;Ljava/lang/Object;)V

    .line 193
    return-void
.end method
