.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;
    }
.end annotation


# instance fields
.field private mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;


# direct methods
.method private ensureAutoNightModeManager()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;Lcom/oneplus/lib/app/appcompat/TwilightManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method final getAutoNightModeManager()Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 248
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    return-object v0
.end method
