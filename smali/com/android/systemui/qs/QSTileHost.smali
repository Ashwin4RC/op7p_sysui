.class public Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/qs/QSFactory;",
        ">;",
        "Lcom/android/systemui/qs/QSHost;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private final mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/QSHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mOperatorCustom:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

.field private final mQsFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    .line 70
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p3, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 91
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 95
    new-instance v0, Lcom/android/systemui/qs/external/TileServices;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/qs/QSFactory;

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 100
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qs_tiles"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 105
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;-><init>(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSTileHost$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mOperatorCustom:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mOperatorCustom:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileHost;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic lambda$onTuningChanged$1(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "tileSpecs"    # Ljava/util/List;
    .param p1, "tile"    # Ljava/util/Map$Entry;

    .line 206
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$onTuningChanged$2(Ljava/util/Map$Entry;)V
    .locals 3
    .param p0, "tile"    # Ljava/util/Map$Entry;

    .line 208
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying tile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 210
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSHost$Callback;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 314
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 315
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 316
    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .locals 6
    .param p1, "spec"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    .line 274
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 273
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "setting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 276
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    const-string v4, ","

    .line 281
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 280
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 282
    return-void
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p1, "previousTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 326
    move-object/from16 v2, p2

    if-eqz v1, :cond_1

    invoke-interface/range {p1 .. p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    sget-boolean v3, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "QSTileHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeTiles: no change skip. tiles="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    return-void

    .line 332
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 333
    .local v3, "NP":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    .line 334
    .local v4, "NA":I
    const/4 v5, 0x0

    move v6, v5

    .line 334
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_4

    .line 335
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 336
    .local v7, "tileSpec":Ljava/lang/String;
    const-string v8, "custom("

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 336
    .end local v7    # "tileSpec":Ljava/lang/String;
    goto :goto_1

    .line 337
    .restart local v7    # "tileSpec":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 338
    invoke-static {v7}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 339
    .local v8, "component":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 340
    .local v9, "intent":Landroid/content/Intent;
    new-instance v17, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v14, Landroid/service/quicksettings/Tile;

    invoke-direct {v14}, Landroid/service/quicksettings/Tile;-><init>()V

    new-instance v15, Landroid/os/UserHandle;

    .line 342
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-direct {v15, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v10, v17

    move-object/from16 v16, v15

    move-object v15, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 343
    .local v10, "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    invoke-virtual {v10}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 344
    invoke-virtual {v10}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 345
    iget-object v11, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v11, v8, v5}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 346
    invoke-virtual {v10}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    .line 334
    .end local v7    # "tileSpec":Ljava/lang/String;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 349
    .end local v6    # "i":I
    :cond_4
    sget-boolean v5, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCurrentTiles "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sysui_qs_tiles"

    const-string v7, ","

    .line 351
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 350
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 352
    return-void
.end method

.method public collapsePanels()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateCollapsePanels()V

    .line 168
    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2
    .param p1, "tileSpec"    # Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    .line 357
    .local v1, "t":Lcom/android/systemui/plugins/qs/QSTile;
    if-eqz v1, :cond_0

    .line 358
    return-object v1

    .line 355
    .end local v1    # "t":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "collapsedView"    # Z

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/qs/QSFactory;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    .line 367
    .local v1, "view":Lcom/android/systemui/plugins/qs/QSTileView;
    if-eqz v1, :cond_0

    .line 368
    return-object v1

    .line 365
    .end local v1    # "view":Lcom/android/systemui/plugins/qs/QSTileView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default factory didn\'t create view for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceCollapsePanels()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateForceCollapsePanels()V

    .line 173
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object v0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNeedToHide(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tileSpec"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mOperatorCustom:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mOperatorCustom:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mOperatorCustom:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mOperatorCustom:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 418
    :cond_3
    return v1

    .line 415
    :cond_4
    :goto_0
    return v1
.end method

.method protected loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 376
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f11054a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "defaultTileList":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/OPUtils;->isCurrentGuest(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const v2, 0x7f11054b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 380
    sget-boolean v2, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded tile specs of guest from config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_0
    if-nez p2, :cond_1

    .line 384
    const v2, 0x7f110549

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 385
    sget-boolean v2, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded tile specs from config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_1
    sget-boolean v2, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded tile specs from setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 391
    .local v3, "addedDefault":Z
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 392
    .local v7, "tile":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .end local v7    # "tile":Ljava/lang/String;
    goto :goto_2

    .line 394
    .restart local v7    # "tile":Ljava/lang/String;
    :cond_3
    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 395
    if-nez v3, :cond_6

    .line 396
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 397
    const/4 v3, 0x1

    goto :goto_2

    .line 401
    :cond_4
    const-string v8, "opdnd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 402
    const-string v8, "dnd"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    goto :goto_2

    .line 406
    :cond_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v7    # "tile":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 409
    :cond_7
    return-object v2
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/qs/QSFactory;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 130
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sysui_qs_tiles"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/qs/QSFactory;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sysui_qs_tiles"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "sysui_qs_tiles"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "QSTileHost"

    const-string v1, "Recreating tiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11054c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 205
    .local v1, "currentUser":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-ne v1, v2, :cond_3

    return-void

    .line 206
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$yU-sQWBVZ_STOuSxrKNWIDPkScE;

    invoke-direct {v3, v0}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$yU-sQWBVZ_STOuSxrKNWIDPkScE;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3Sm37Dy1JWpLe_hn88f-6UG0Q-M;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3Sm37Dy1JWpLe_hn88f-6UG0Q-M;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 211
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 212
    .local v2, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    .local v4, "tileSpec":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile;

    .line 215
    .local v5, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    const-string v6, "custom("

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 217
    :cond_4
    if-eqz v5, :cond_9

    instance-of v6, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v6, :cond_5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/qs/external/CustomTile;

    .line 218
    invoke-virtual {v6}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v6

    if-ne v6, v1, :cond_9

    .line 219
    :cond_5
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 220
    sget-boolean v6, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_6
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    .line 222
    instance-of v6, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-eq v6, v1, :cond_7

    .line 223
    invoke-interface {v5, v1}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 225
    :cond_7
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 227
    :cond_8
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_2

    .line 230
    :cond_9
    sget-boolean v6, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_a
    if-eqz v5, :cond_b

    .line 233
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 237
    :cond_b
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v6

    move-object v5, v6

    .line 238
    if-eqz v5, :cond_d

    .line 239
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 240
    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 243
    :cond_c
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_d
    :goto_1
    goto :goto_2

    .line 246
    :catch_0
    move-exception v6

    .line 247
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error creating tile for spec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v4    # "tileSpec":Ljava/lang/String;
    .end local v5    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_2
    goto/16 :goto_0

    .line 251
    :cond_e
    iput v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 252
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 253
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 255
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 256
    const/4 v3, 0x0

    .line 256
    .local v3, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 257
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 259
    .end local v3    # "i":I
    :cond_f
    return-void
.end method

.method public openPanels()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateOpenPanels()V

    .line 178
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSHost$Callback;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 322
    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .locals 5
    .param p1, "tileSpec"    # Ljava/lang/String;

    .line 264
    if-nez p1, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    .local v0, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    const-string v3, ","

    .line 269
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 268
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 270
    return-void
.end method

.method public replaceTile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/lang/String;

    .line 287
    if-nez p2, :cond_0

    return-void

    .line 288
    :cond_0
    const-string v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeTile /origin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    .line 290
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 289
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "setting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    return-void

    .line 297
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 298
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 299
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sysui_qs_tiles"

    const-string v5, ","

    .line 308
    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 307
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 309
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 163
    return-void
.end method
