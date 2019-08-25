.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static SHOW_ROAMING_BANNER:[I

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mFlags:I

.field private final mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mSimErrorState:[Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 687
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/CarrierText;->SHOW_ROAMING_BANNER:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x86
        0x90
        0x9a
        0xb3
        0xb4
        0xd5
        0xd6
        0xd7
        0x82
        0x8c
        0x96
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    .line 76
    new-instance v0, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    nop

    .line 140
    nop

    .line 142
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 144
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 147
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    const-string v2, "carrier_config"

    .line 150
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 152
    return-void

    .line 140
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;
    .param p1, "x1"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierText;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    return-object v0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .line 533
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 534
    .local v0, "plmnValid":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 535
    .local v1, "spnValid":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 537
    :cond_0
    if-eqz v0, :cond_1

    .line 538
    return-object p0

    .line 539
    :cond_1
    if-eqz v1, :cond_2

    .line 540
    return-object p1

    .line 542
    :cond_2
    const-string v2, ""

    return-object v2
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;
    .param p2, "separator"    # Ljava/lang/String;

    .line 633
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 634
    .local v0, "plmnValid":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 635
    .local v1, "spnValid":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 636
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 637
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    :goto_0
    return-object v2

    .line 638
    :cond_1
    if-eqz v0, :cond_2

    .line 639
    return-object p0

    .line 640
    :cond_2
    if-eqz v1, :cond_3

    .line 641
    return-object p1

    .line 643
    :cond_3
    const-string v2, ""

    return-object v2
.end method

.method private getAirplaneModeMessage()Ljava/lang/String;
    .locals 2

    .line 368
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110127

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 368
    :goto_0
    return-object v0
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 428
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    nop

    .line 471
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11033a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 470
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 465
    :pswitch_1
    nop

    .line 466
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11033c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 465
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 468
    goto :goto_0

    .line 459
    :pswitch_2
    nop

    .line 460
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11033b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 459
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 462
    goto :goto_0

    .line 455
    :pswitch_3
    const/4 v0, 0x0

    .line 456
    goto :goto_0

    .line 448
    :pswitch_4
    nop

    .line 449
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110334

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 448
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 452
    goto :goto_0

    .line 444
    :pswitch_5
    const/4 v0, 0x0

    .line 445
    goto :goto_0

    .line 439
    :pswitch_6
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const v3, 0x7f11032a

    .line 440
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 439
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 441
    goto :goto_0

    .line 435
    :pswitch_7
    const-string v0, ""

    .line 436
    goto :goto_0

    .line 430
    :pswitch_8
    move-object v0, p2

    .line 431
    nop

    .line 476
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEriText(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 682
    const-string v0, ""

    return-object v0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "originNamesId"    # I
    .param p3, "localNamesId"    # I

    .line 620
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "origNames":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "localNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 622
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 623
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v5, v1, v2

    const-string/jumbo v6, "string"

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 622
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    .end local v2    # "i":I
    :cond_1
    return-object p1
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 2

    .line 363
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110328

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 363
    :goto_0
    return-object v0
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 498
    if-nez p1, :cond_0

    .line 499
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    .line 503
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 508
    .local v0, "missingAndNotProvisioned":Z
    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    move-object p1, v1

    .line 509
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 529
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 527
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 525
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 523
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 521
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 519
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 517
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 515
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 513
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 511
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isUssCDMA()Z
    .locals 4

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 723
    .local v0, "type":I
    sget-boolean v1, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "CarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUssCDMA getType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 727
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 730
    .end local v0    # "type":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .line 484
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 487
    const-string v0, " - "

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    return-object p1
.end method

.method private networkClassToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "networkClass"    # I

    .line 598
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 603
    .local v0, "classIds":[I
    const/4 v1, 0x0

    .line 604
    .local v1, "classString":Ljava/lang/String;
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 607
    :cond_0
    if-nez v1, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2

    nop

    :array_0
    .array-data 4
        0x7f1101f0
        0x7f1101ed
        0x7f1101ee
        0x7f1101ef
    .end array-data
.end method

.method private showRoaming(Landroid/telephony/ServiceState;)Z
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 708
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 709
    return v0

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/OPUtils;->isSprintMccMnc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isUssCDMA()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method private showUSSRoamingIndicator(Landroid/telephony/ServiceState;)Z
    .locals 10
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 650
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 654
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 655
    .local v1, "isRoaming":Z
    const/4 v2, 0x0

    .line 656
    .local v2, "isSpecifyEriInfoCard":Z
    const/4 v3, 0x0

    .line 659
    .local v3, "isShowRoamingbanner":Z
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 660
    .local v4, "bundle":Landroid/os/PersistableBundle;
    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 661
    const-string v6, "carrier_eri_file_name_string"

    invoke-virtual {v4, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "eriFile":Ljava/lang/String;
    const-string v7, "eri.xml"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v5

    move v2, v7

    .line 664
    const-string v7, "CarrierText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showUSSRoamingIndicator eriFile:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v6    # "eriFile":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v6

    .line 668
    .local v6, "roamingIndicator":I
    move v7, v0

    .line 668
    .local v7, "i":I
    :goto_0
    sget-object v8, Lcom/android/keyguard/CarrierText;->SHOW_ROAMING_BANNER:[I

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 669
    sget-object v8, Lcom/android/keyguard/CarrierText;->SHOW_ROAMING_BANNER:[I

    aget v8, v8, v7

    if-ne v6, v8, :cond_2

    .line 670
    const/4 v3, 0x1

    .line 671
    goto :goto_1

    .line 668
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 675
    .end local v7    # "i":I
    :cond_3
    :goto_1
    const-string v7, "CarrierText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showUSSRoamingIndicator isRoaming:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isSpecifyEriInfoCard:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isShowRoamingbanner:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " roamingIndicator:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    move v0, v5

    nop

    :cond_4
    return v0

    .line 651
    .end local v1    # "isRoaming":Z
    .end local v2    # "isSpecifyEriInfoCard":Z
    .end local v3    # "isShowRoamingbanner":Z
    .end local v4    # "bundle":Landroid/os/PersistableBundle;
    .end local v6    # "roamingIndicator":I
    :cond_5
    :goto_2
    return v0
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "noSims"    # Z

    .line 161
    const-string v0, ""

    .line 162
    .local v0, "carrier":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 164
    .local v1, "carrierTextForSimIOError":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 168
    if-eqz p2, :cond_0

    .line 169
    nop

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10401ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 169
    invoke-static {v1, v3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 171
    :cond_0
    if-nez v2, :cond_1

    .line 173
    invoke-static {v1, p1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 176
    :cond_1
    invoke-static {p1, v1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 164
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "index":I
    :cond_3
    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 383
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 391
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 397
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 401
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 374
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 375
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 378
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 379
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 405
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 408
    if-nez p2, :cond_0

    .line 409
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 411
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 413
    :goto_0
    return-void
.end method

.method protected updateCarrierText()V
    .locals 22

    .line 184
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 185
    .local v1, "allSimsMissing":Z
    const/4 v2, 0x0

    .line 186
    .local v2, "anySimReadyAndInService":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 189
    .local v3, "showLocale":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 191
    .local v4, "showRat":Z
    const/4 v5, 0x0

    .line 193
    .local v5, "displayText":Ljava/lang/CharSequence;
    iget-object v6, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v6

    .line 194
    .local v6, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 195
    .local v8, "N":I
    const-string v9, "CarrierText"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateCarrierText(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move v9, v2

    move v2, v1

    move v1, v7

    .line 196
    .local v1, "i":I
    .local v2, "allSimsMissing":Z
    .local v9, "anySimReadyAndInService":Z
    :goto_0
    if-ge v1, v8, :cond_14

    .line 197
    const-string v12, ""

    .line 198
    .local v12, "networkClass":Ljava/lang/CharSequence;
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    .line 200
    .local v13, "subId":I
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    .line 202
    .local v14, "phoneId":I
    iget-object v15, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v15

    .line 203
    .local v15, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    if-eqz v4, :cond_3

    .line 205
    iget-object v7, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ServiceState;

    .line 207
    .local v7, "ss":Landroid/telephony/ServiceState;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    if-eqz v10, :cond_0

    .line 208
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v10

    if-nez v10, :cond_3

    .line 209
    :cond_0
    const/4 v10, 0x0

    .line 210
    .local v10, "networkType":I
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v16

    if-eqz v16, :cond_1

    .line 212
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v10

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v16

    if-eqz v16, :cond_2

    .line 215
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v10

    .line 217
    :cond_2
    :goto_1
    nop

    .line 218
    invoke-static {v10}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v11

    .line 217
    invoke-direct {v0, v11}, Lcom/android/keyguard/CarrierText;->networkClassToString(I)Ljava/lang/String;

    move-result-object v12

    .line 225
    .end local v7    # "ss":Landroid/telephony/ServiceState;
    .end local v10    # "networkType":I
    :cond_3
    const-string v7, ""

    .line 226
    .local v7, "carrierName":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUSS()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 227
    iget-object v10, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v10, v10, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/ServiceState;

    .line 228
    .local v10, "ss":Landroid/telephony/ServiceState;
    if-eqz v10, :cond_6

    .line 230
    invoke-direct {v0, v10}, Lcom/android/keyguard/CarrierText;->showUSSRoamingIndicator(Landroid/telephony/ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 231
    invoke-direct {v0, v13}, Lcom/android/keyguard/CarrierText;->getEriText(I)Ljava/lang/String;

    move-result-object v7

    .line 233
    const-string v11, "CarrierText"

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 233
    .end local v7    # "carrierName":Ljava/lang/CharSequence;
    .local v17, "carrierName":Ljava/lang/CharSequence;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v9

    const-string v9, "(getEriText="

    .line 233
    .end local v9    # "anySimReadyAndInService":Z
    .local v18, "anySimReadyAndInService":Z
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v7, v17

    goto :goto_2

    .line 237
    .end local v17    # "carrierName":Ljava/lang/CharSequence;
    .end local v18    # "anySimReadyAndInService":Z
    .restart local v7    # "carrierName":Ljava/lang/CharSequence;
    .restart local v9    # "anySimReadyAndInService":Z
    :cond_4
    move/from16 v18, v9

    .line 237
    .end local v9    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    invoke-direct {v0, v10}, Lcom/android/keyguard/CarrierText;->showRoaming(Landroid/telephony/ServiceState;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1105d2

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 240
    :cond_5
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 243
    .end local v18    # "anySimReadyAndInService":Z
    .restart local v9    # "anySimReadyAndInService":Z
    :cond_6
    move/from16 v18, v9

    .line 243
    .end local v9    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 245
    .end local v10    # "ss":Landroid/telephony/ServiceState;
    :goto_2
    goto :goto_3

    .line 246
    .end local v18    # "anySimReadyAndInService":Z
    .restart local v9    # "anySimReadyAndInService":Z
    :cond_7
    move/from16 v18, v9

    .line 246
    .end local v9    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 250
    :goto_3
    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    goto :goto_4

    .line 273
    :cond_8
    move/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v19, v7

    goto/16 :goto_8

    .line 250
    :cond_9
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 251
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, "names":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v10, "newCarrierName":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 253
    .local v11, "j":I
    :goto_5
    move-object/from16 v19, v7

    array-length v7, v9

    .line 253
    .end local v7    # "carrierName":Ljava/lang/CharSequence;
    .local v19, "carrierName":Ljava/lang/CharSequence;
    if-ge v11, v7, :cond_f

    .line 254
    if-eqz v3, :cond_a

    .line 255
    aget-object v7, v9, v11

    move/from16 v20, v3

    move-object/from16 v21, v6

    const v3, 0x7f030048

    const v6, 0x7f030038

    invoke-direct {v0, v7, v3, v6}, Lcom/android/keyguard/CarrierText;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v20, "showLocale":Z
    .local v21, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    aput-object v7, v9, v11

    goto :goto_6

    .line 259
    .end local v20    # "showLocale":Z
    .end local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "showLocale":Z
    .restart local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_a
    move/from16 v20, v3

    move-object/from16 v21, v6

    .line 259
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "showLocale":Z
    .restart local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_6
    aget-object v3, v9, v11

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 260
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v4, :cond_b

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v9, v11

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v11

    .line 264
    :cond_b
    if-lez v11, :cond_c

    aget-object v3, v9, v11

    add-int/lit8 v6, v11, -0x1

    aget-object v6, v9, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 265
    goto :goto_7

    .line 267
    :cond_c
    if-lez v11, :cond_d

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 268
    :cond_d
    aget-object v3, v9, v11

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_e
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v19

    move/from16 v3, v20

    move-object/from16 v6, v21

    goto :goto_5

    .line 271
    .end local v11    # "j":I
    .end local v20    # "showLocale":Z
    .end local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "showLocale":Z
    .restart local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_f
    move/from16 v20, v3

    move-object/from16 v21, v6

    .line 271
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "showLocale":Z
    .restart local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 271
    .end local v9    # "names":[Ljava/lang/String;
    .end local v10    # "newCarrierName":Ljava/lang/StringBuilder;
    .end local v19    # "carrierName":Ljava/lang/CharSequence;
    .restart local v7    # "carrierName":Ljava/lang/CharSequence;
    goto :goto_9

    .line 273
    .end local v20    # "showLocale":Z
    .end local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "showLocale":Z
    .restart local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_10
    move/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v19, v7

    :goto_8
    move-object/from16 v7, v19

    .line 273
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "showLocale":Z
    .restart local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_9
    invoke-direct {v0, v15, v7}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 275
    .local v3, "carrierTextForSimState":Ljava/lang/CharSequence;
    const-string v6, "CarrierText"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handling (subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz v3, :cond_11

    .line 278
    const/4 v2, 0x0

    .line 279
    invoke-static {v5, v3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 282
    :cond_11
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v15, v6, :cond_13

    .line 284
    iget-object v6, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ServiceState;

    .line 286
    .local v6, "ss":Landroid/telephony/ServiceState;
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v9

    if-nez v9, :cond_13

    .line 289
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    const/16 v10, 0x12

    if-ne v9, v10, :cond_12

    iget-object v9, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 290
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 291
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    if-eqz v9, :cond_13

    iget-object v9, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 292
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 294
    :cond_12
    const-string v9, "CarrierText"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM ready and in service: subId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", ss="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v3, 0x1

    .line 196
    .end local v6    # "ss":Landroid/telephony/ServiceState;
    .end local v7    # "carrierName":Ljava/lang/CharSequence;
    .end local v12    # "networkClass":Ljava/lang/CharSequence;
    .end local v13    # "subId":I
    .end local v14    # "phoneId":I
    .end local v15    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v18    # "anySimReadyAndInService":Z
    .local v3, "anySimReadyAndInService":Z
    move v9, v3

    goto :goto_a

    .line 196
    .end local v3    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    :cond_13
    move/from16 v9, v18

    .line 196
    .end local v18    # "anySimReadyAndInService":Z
    .local v9, "anySimReadyAndInService":Z
    :goto_a
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v20

    move-object/from16 v6, v21

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 301
    .end local v1    # "i":I
    .end local v20    # "showLocale":Z
    .end local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v3, "showLocale":Z
    .local v6, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_14
    move/from16 v20, v3

    move-object/from16 v21, v6

    move/from16 v18, v9

    .line 301
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    .restart local v20    # "showLocale":Z
    .restart local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1a

    .line 302
    if-eqz v8, :cond_15

    .line 309
    nop

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 310
    .end local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v3, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 309
    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_c

    .line 316
    .end local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_15
    move-object/from16 v3, v21

    .line 317
    .end local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x10401ee

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 318
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    .line 320
    .local v6, "i":Landroid/content/Intent;
    if-eqz v6, :cond_19

    .line 321
    const-string v7, ""

    .line 322
    .local v7, "spn":Ljava/lang/String;
    const-string v9, ""

    .line 323
    .local v9, "plmn":Ljava/lang/String;
    const-string/jumbo v10, "showSpn"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 324
    const-string/jumbo v10, "spn"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    if-eqz v20, :cond_16

    .line 327
    const v10, 0x7f030048

    const v11, 0x7f030038

    invoke-direct {v0, v7, v10, v11}, Lcom/android/keyguard/CarrierText;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 332
    :cond_16
    const-string/jumbo v10, "showPlmn"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 333
    const-string v10, "plmn"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 335
    if-eqz v20, :cond_17

    .line 336
    const v10, 0x7f030048

    const v11, 0x7f030038

    invoke-direct {v0, v9, v10, v11}, Lcom/android/keyguard/CarrierText;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 342
    :cond_17
    const-string v10, "CarrierText"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting plmn/spn sticky brdcst "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {v9, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 344
    move-object v1, v9

    goto :goto_b

    .line 346
    :cond_18
    invoke-static {v9, v7}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 349
    .end local v7    # "spn":Ljava/lang/String;
    .end local v9    # "plmn":Ljava/lang/String;
    :cond_19
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v1}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 349
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v6    # "i":Landroid/content/Intent;
    goto :goto_c

    .line 353
    .end local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1a
    move-object/from16 v3, v21

    .line 353
    .end local v21    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_c
    invoke-direct {v0, v5, v2}, Lcom/android/keyguard/CarrierText;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 356
    .end local v5    # "displayText":Ljava/lang/CharSequence;
    .local v1, "displayText":Ljava/lang/CharSequence;
    if-nez v18, :cond_1b

    iget-object v5, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getAirplaneModeMessage()Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_1b
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method
