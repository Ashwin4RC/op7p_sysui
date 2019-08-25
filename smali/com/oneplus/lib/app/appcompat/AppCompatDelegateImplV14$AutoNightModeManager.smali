.class final Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mIsNight:Z

.field private mTwilightManager:Lcom/oneplus/lib/app/appcompat/TwilightManager;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;Lcom/oneplus/lib/app/appcompat/TwilightManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
    .param p2, "twilightManager"    # Lcom/oneplus/lib/app/appcompat/TwilightManager;

    .line 316
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->mTwilightManager:Lcom/oneplus/lib/app/appcompat/TwilightManager;

    .line 318
    invoke-virtual {p2}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->mIsNight:Z

    .line 319
    return-void
.end method
