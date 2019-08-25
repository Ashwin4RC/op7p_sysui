.class Lcom/android/systemui/qs/tiles/HotspotTile$3;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;->operatorAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 461
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1302(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 464
    return-void
.end method
