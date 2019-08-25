.class final Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPFiveGTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/OPFiveGTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;Lcom/android/systemui/qs/tiles/OPFiveGTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/OPFiveGTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/OPFiveGTile$1;

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;-><init>(Lcom/android/systemui/qs/tiles/OPFiveGTile;)V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .line 210
    const-string v0, "OPFiveGTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->access$700(Lcom/android/systemui/qs/tiles/OPFiveGTile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->access$702(Lcom/android/systemui/qs/tiles/OPFiveGTile;I)I

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPFiveGTile$KeyguardCallback;->this$0:Lcom/android/systemui/qs/tiles/OPFiveGTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/OPFiveGTile;->refreshState()V

    .line 213
    return-void
.end method
