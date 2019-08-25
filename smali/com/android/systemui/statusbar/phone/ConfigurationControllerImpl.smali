.class public Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;


# instance fields
.field private mDensity:I

.field private mFontScale:F

.field private mInCarMode:Z

.field private final mLastConfig:Landroid/content/res/Configuration;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field private mSmallestScreenWidthDp:I

.field private mUiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLastConfig:Landroid/content/res/Configuration;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 56
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    .line 57
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    .line 58
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mInCarMode:Z

    .line 60
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mUiMode:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 63
    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mSmallestScreenWidthDp:I

    .line 65
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$0(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$1(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    .line 92
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$2(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onLocaleListChanged()V

    .line 111
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$3(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onOverlayChanged()V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    .line 127
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;>;"
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 77
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 78
    .local v1, "fontScale":F
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 79
    .local v2, "density":I
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 81
    .local v3, "uiMode":I
    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 83
    .local v4, "smallestScreenWidthDp":I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    if-ne v2, v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    cmpl-float v5, v1, v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mInCarMode:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mUiMode:I

    if-ne v3, v5, :cond_1

    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mSmallestScreenWidthDp:I

    if-eq v4, v5, :cond_2

    .line 88
    :cond_1
    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$vqa1un3Hr9_5bDPhhhNK1qKD-2o;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$vqa1un3Hr9_5bDPhhhNK1qKD-2o;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    .line 94
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    .line 95
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mUiMode:I

    .line 97
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mSmallestScreenWidthDp:I

    .line 100
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_2

    const-string v5, "ConfigurationControllerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged / newConfig:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 105
    .local v5, "localeList":Landroid/os/LocaleList;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 106
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 107
    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$MFXzl9-SIDbbTeRwTeJK0oQCn9Q;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$MFXzl9-SIDbbTeRwTeJK0oQCn9Q;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 114
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v6

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 115
    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$SclF_d3UDXYaKsa0uhbxuxURXSI;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$SclF_d3UDXYaKsa0uhbxuxURXSI;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 121
    :cond_4
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
