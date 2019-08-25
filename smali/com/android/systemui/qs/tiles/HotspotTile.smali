.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;,
        Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private final mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mListening:Z

.field protected final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoSimError:Z

.field private mOperatorDialogShowing:Z

.field private final mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

.field private mReguireTileToGray:Z

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

.field private mVirtualSimExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    .line 84
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 62
    const v0, 0x7f0804e8

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 67
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 72
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    .line 89
    const-class v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 90
    const-class v0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 92
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 96
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 105
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string v3, "op_overheat_temperature_type"

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->operatorAlertDialog()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method private getSecondaryLabel(ZZZI)Ljava/lang/String;
    .locals 5
    .param p1, "isActive"    # Z
    .param p2, "isTransient"    # Z
    .param p3, "isDataSaverEnabled"    # Z
    .param p4, "numConnectedDevices"    # I

    .line 281
    if-eqz p2, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110522

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_0
    if-eqz p3, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110521

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_1
    if-lez p4, :cond_2

    if-eqz p1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 290
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 287
    invoke-virtual {v0, v1, p4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isHaveProfile()Z
    .locals 10

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->isSprintMccMnc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->getMmcMnc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "mccmnc":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "apn"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "type = ? and numeric = ? and user_visible != ? and name != ?"

    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/String;

    const-string v3, "dun"

    aput-object v3, v8, v2

    aput-object v0, v8, v1

    const/4 v3, 0x2

    const-string v9, "0"

    aput-object v9, v8, v3

    const/4 v3, 0x3

    const-string v9, "3G_HOT"

    aput-object v9, v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 420
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 423
    return v1

    .line 427
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 428
    return v2

    .line 414
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string v3, "no mccmnc"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v2
.end method

.method private isOperatorValid()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isHaveProfile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 433
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$operatorAlertDialog$0(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "alertDialog"    # Landroid/app/AlertDialog;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 470
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 471
    return-void
.end method

.method private operatorAlertDialog()V
    .locals 7

    .line 439
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 442
    .local v0, "titleId":I
    const/4 v1, 0x0

    .line 443
    .local v1, "messageId":I
    const/4 v2, 0x0

    .line 444
    .local v2, "okId":I
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    if-eqz v3, :cond_1

    .line 445
    const v0, 0x7f1102bc

    .line 446
    const v1, 0x7f1102bb

    .line 447
    const v2, 0x7f1102ba

    goto :goto_0

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isHaveProfile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 449
    const v0, 0x7f1102bf

    .line 450
    const v1, 0x7f1102be

    .line 451
    const v2, 0x7f1102bd

    .line 456
    :cond_2
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 458
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 459
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 460
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 461
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 466
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 467
    .local v4, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7de

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 469
    new-instance v5, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$27H8jHShXYGUqAqpjyv366eDPu8;

    invoke-direct {v5, v4}, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$27H8jHShXYGUqAqpjyv366eDPu8;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 473
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    .line 474
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 475
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 160
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_quick_setting"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 298
    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11051e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .line 169
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUSS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick / mNoSimError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " / !isHaveProfile():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isHaveProfile()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isOperatorValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string v1, "!isOperatorValid() AlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->operatorAlertDialog()V

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 179
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 185
    .local v0, "isEnabled":Z
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 186
    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    :cond_3
    return-void

    .line 190
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-eqz v2, :cond_5

    .line 191
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "virtual sim exist. ignore click."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 197
    :cond_5
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_6

    .line 198
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x7f110485

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 203
    :cond_6
    if-eqz v0, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 205
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .line 124
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 125
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 135
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 136
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->removeCallback(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 155
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 215
    .local v0, "transientEnabling":Z
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v3, :cond_1

    .line 216
    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 220
    :cond_1
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    .line 223
    .local v3, "isTransient":Z
    :goto_2
    const-string v4, "no_config_tethering"

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 224
    instance-of v4, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v4, :cond_6

    .line 225
    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 226
    .local v4, "info":Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;
    if-nez v0, :cond_5

    iget-boolean v5, v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v2

    :goto_4
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 227
    iget v5, v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 228
    .local v5, "numConnectedDevices":I
    iget-boolean v4, v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    .line 229
    .local v4, "isDataSaverEnabled":Z
    goto :goto_7

    .line 230
    .end local v4    # "isDataSaverEnabled":Z
    .end local v5    # "numConnectedDevices":I
    :cond_6
    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v1

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v2

    :goto_6
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 231
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/HotspotController;->getNumConnectedDevices()I

    move-result v5

    .line 232
    .restart local v5    # "numConnectedDevices":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v4

    .line 235
    .restart local v4    # "isDataSaverEnabled":Z
    :goto_7
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 236
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v7, 0x7f11051e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    .line 237
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v2

    goto :goto_8

    :cond_9
    move v6, v1

    :goto_8
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 238
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    .line 239
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v7, :cond_a

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-nez v7, :cond_a

    move v7, v2

    goto :goto_9

    :cond_a
    move v7, v1

    :goto_9
    iput-boolean v7, v6, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 240
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v6, :cond_b

    .line 242
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUST()Z

    move-result v6

    if-nez v6, :cond_b

    .line 244
    const v6, 0x7f0804ea

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 246
    :cond_b
    const-class v6, Landroid/widget/Switch;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 247
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 252
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-nez v6, :cond_d

    if-nez v4, :cond_d

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-nez v6, :cond_d

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUSS()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    move v6, v1

    goto :goto_b

    :cond_d
    :goto_a
    move v6, v2

    .line 255
    .local v6, "isTileUnavailable":Z
    :goto_b
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-eqz v7, :cond_e

    .line 256
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "virtual sim exist, set to unavailable."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_e
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v7, :cond_10

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v7, :cond_f

    goto :goto_c

    :cond_f
    move v7, v1

    goto :goto_d

    :cond_10
    :goto_c
    move v7, v2

    .line 263
    .local v7, "isTileActive":Z
    :goto_d
    sget-boolean v8, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleUpdateState / isTileActive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " / state.value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " / state.isTransient:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " / mReguireTileToGray: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_11
    if-eqz v6, :cond_12

    .line 269
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    goto :goto_e

    .line 271
    :cond_12
    if-eqz v7, :cond_13

    const/4 v2, 0x2

    nop

    :cond_13
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    .line 274
    :goto_e
    invoke-direct {p0, v7, v3, v4, v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSecondaryLabel(ZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 276
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isOperatorHotspotDisable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .locals 1

    .line 129
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method
