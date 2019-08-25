.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    }
.end annotation


# instance fields
.field private final CAR_MODE_STATUS:Ljava/lang/String;

.field private final DEBUG:Z

.field private mAllTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mFinished:Z

.field private final mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSpecs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->DEBUG:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    .line 77
    const-string v0, "oneplus_carmode_switch"

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->CAR_MODE_STATUS:Ljava/lang/String;

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TileQueryHelper"

    const-string v1, "new TileQueryHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 84
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    .line 85
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method private addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$-7aqDrq4N73id-i9gI_WE72bklw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$-7aqDrq4N73id-i9gI_WE72bklw;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method private addStockTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f11054d

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getStringWithCheckTile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "possible":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "possibleTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "dbg:mem"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, "tilesToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "spec":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v5

    .line 118
    .local v5, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    if-nez v5, :cond_1

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 121
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 122
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/QSTileHost;->isNeedToHide(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    const/4 v6, 0x1

    invoke-interface {v5, p0, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 130
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    .line 131
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 132
    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 133
    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v4    # "spec":Ljava/lang/String;
    .end local v5    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    goto :goto_0

    .line 140
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$pVNHAsbxeJK0zo0OnLB_L5xKe_E;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$pVNHAsbxeJK0zo0OnLB_L5xKe_E;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method private addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "appLabel"    # Ljava/lang/CharSequence;

    .line 246
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 247
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 248
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 249
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 251
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 253
    const/4 v1, 0x0

    invoke-direct {p0, p1, p4, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 254
    return-void
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p4, "isSystem"    # Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    .line 232
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 233
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 234
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const-class v2, Landroid/widget/Button;

    .line 235
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 236
    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 237
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez p4, :cond_2

    iget-object v2, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    move-object v2, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 239
    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 240
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 3
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    .line 219
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 220
    .local v1, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    return-object v0

    .line 223
    .end local v1    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStringWithCheckTile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_carmode_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 283
    .local v0, "carModeStatus":I
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "tileString":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 285
    const-string v2, "dnd"

    const-string v3, "opdndcarmode"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_0
    const-string v2, "opdndcarmode"

    const-string v3, "dnd"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 289
    :goto_0
    const-string v2, "TileQueryHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStringWithCheckTile / carModeStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tileString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v1
.end method

.method public static synthetic lambda$addPackageTiles$1(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 17
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    move-object/from16 v0, p0

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    .line 157
    .local v1, "params":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    iget-object v2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 158
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 162
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f11054d

    invoke-direct {v0, v4, v6}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getStringWithCheckTile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "stockTiles":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 165
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 166
    .local v8, "packageName":Ljava/lang/String;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v9, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 170
    goto :goto_0

    .line 173
    :cond_0
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 174
    .local v10, "appLabel":Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v11

    .line 175
    .local v11, "spec":Ljava/lang/String;
    invoke-direct {v0, v1, v11}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v12

    .line 177
    .local v12, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    move-object/from16 v13, p1

    invoke-virtual {v13, v11}, Lcom/android/systemui/qs/QSTileHost;->isNeedToHide(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 178
    goto :goto_0

    .line 181
    :cond_1
    if-eqz v12, :cond_2

    .line 182
    invoke-direct {v0, v11, v10, v12, v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v14, v14, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v14, :cond_3

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v14, :cond_3

    .line 186
    goto :goto_0

    .line 188
    :cond_3
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v14, v2}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 189
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    const-string v15, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v5, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 190
    nop

    .line 164
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "appLabel":Ljava/lang/CharSequence;
    .end local v11    # "spec":Ljava/lang/String;
    .end local v12    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 192
    .restart local v7    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "appLabel":Ljava/lang/CharSequence;
    .restart local v11    # "spec":Ljava/lang/String;
    .restart local v12    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    .restart local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez v14, :cond_5

    .line 193
    goto :goto_1

    .line 195
    :cond_5
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v15, 0x106000b

    invoke-virtual {v5, v15}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 197
    iget-object v5, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 198
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_6
    const-string v15, "null"

    :goto_2
    invoke-direct {v0, v11, v14, v15, v10}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 199
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "appLabel":Ljava/lang/CharSequence;
    .end local v11    # "spec":Ljava/lang/String;
    .end local v12    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 201
    :cond_7
    move-object/from16 v13, p1

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    .line 202
    return-void
.end method

.method public static synthetic lambda$addStockTiles$0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "tilesToAdd"    # Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 142
    .local v1, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    .line 144
    .local v2, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 148
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 149
    .end local v1    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v2    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    goto :goto_0

    .line 150
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    .line 151
    return-void
.end method

.method public static synthetic lambda$notifyTilesChanged$2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "tilesToReturn"    # Ljava/util/ArrayList;
    .param p2, "finished"    # Z

    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    .line 209
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    instance-of v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcSpecs()V

    .line 215
    :cond_0
    return-void
.end method

.method private notifyTilesChanged(Z)V
    .locals 3
    .param p1, "finished"    # Z

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v0, "tilesToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method


# virtual methods
.method public destroyTiles()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 260
    .local v1, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 261
    .end local v1    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 264
    :cond_1
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return v0
.end method

.method public queryTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addStockTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 98
    return-void
.end method

.method public recalcEditPage()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    instance-of v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcEditPage()V

    .line 300
    :cond_1
    return-void
.end method
