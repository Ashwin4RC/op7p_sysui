.class Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
.super Ljava/lang/Object;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorCustom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mHideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideTileReceiver:Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;

.field private mHospotDisableByOperator:Z

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private recordPosition:I

.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHospotDisableByOperator:Z

    .line 426
    const/4 p1, -0x2

    iput p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->recordPosition:I

    .line 431
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHideList:Ljava/util/List;

    .line 469
    new-instance p1, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;-><init>(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 435
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSTileHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTileHost;
    .param p2, "x1"    # Lcom/android/systemui/qs/QSTileHost$1;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    .line 423
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHideList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    .line 423
    iget v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->recordPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
    .param p1, "x1"    # I

    .line 423
    iput p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->recordPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
    .param p1, "x1"    # Ljava/lang/String;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->existTile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHospotDisableByOperator:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
    .param p1, "x1"    # Z

    .line 423
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHospotDisableByOperator:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->addTileWithPosition(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->hideTile(Ljava/lang/String;ZI)V

    return-void
.end method

.method private addTileWithPosition(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "force"    # Z

    .line 501
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    .line 502
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 501
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "setting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 504
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 509
    invoke-static {}, Lcom/android/systemui/qs/QSTileHost;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTileWithPosition / position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / tileSpecs.size():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    if-ltz p2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 511
    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 512
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_3

    .line 513
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    const-string v4, ","

    .line 517
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 516
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 518
    return-void
.end method

.method private existTile(Ljava/lang/String;)I
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    .line 495
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 494
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "setting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 497
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method private hideTile(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;
    .param p2, "hide"    # Z
    .param p3, "position"    # I

    .line 522
    if-eqz p2, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, v1, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 525
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 526
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v2, v2, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 527
    .end local v0    # "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->addTileWithPosition(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 532
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->addTileWithPosition(Ljava/lang/String;IZ)V

    .line 535
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 438
    const-class v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_sysui_qs_tiles_hide"

    .line 442
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 441
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "hideTiles":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/QSTileHost;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QSTileHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideTiles="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHideList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 447
    .local v4, "tile":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .end local v4    # "tile":Ljava/lang/String;
    goto :goto_1

    .line 448
    .restart local v4    # "tile":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 449
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHideList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6, v5}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->hideTile(Ljava/lang/String;ZI)V

    .line 446
    .end local v4    # "tile":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    :cond_2
    new-instance v1, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;-><init>(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHideTileReceiver:Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;

    .line 455
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.oneplus.systemui.qs.hide_tile"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->mHideTileReceiver:Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 459
    return-void
.end method
