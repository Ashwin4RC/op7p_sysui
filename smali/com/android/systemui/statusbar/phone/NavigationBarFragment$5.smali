.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1253
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 1258
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1259
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    .line 1261
    :cond_1
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1263
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V

    .line 1265
    :cond_2
    return-void
.end method
