.class final Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AodBatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodBatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodBatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    .line 711
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 712
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 716
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 717
    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-static {v0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->access$000(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V

    .line 718
    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-static {v0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->access$100(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V

    .line 719
    return-void
.end method
