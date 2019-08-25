.class final Lcom/android/systemui/ScreenDecorations$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mOPScreenResolutionUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 3

    .line 921
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 922
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 918
    const-string v0, "oneplus_screen_resolution_adjust"

    .line 919
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;->mOPScreenResolutionUri:Landroid/net/Uri;

    .line 923
    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 924
    .local p1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;->mOPScreenResolutionUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 926
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 930
    if-nez p2, :cond_0

    .line 931
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v1, v1, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_screen_resolution_adjust"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    .line 935
    return-void
.end method
