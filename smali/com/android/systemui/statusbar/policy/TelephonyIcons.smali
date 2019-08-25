.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DEBUG:Z

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final SIGNAL_LEVEL_NUM:I

.field static final STACKED_STRENGTH_ICONS:[I

.field static final STACKED_STRENGTH_ICONS_FIVE_BAR:[I

.field static final STACKED_STRENGTH_ICONS_FOUR_BAR:[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private static isInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 38
    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    .line 53
    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    .line 67
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    .line 77
    new-array v1, v2, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    .line 87
    new-array v1, v2, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FOUR_BAR:[I

    .line 97
    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    .line 121
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FIVE_BAR:[I

    .line 139
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FIVE_BAR:[[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOUR_BAR:[[I

    :goto_0
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 140
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FIVE_BAR:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL_FOUR_BAR:[I

    :goto_1
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    .line 141
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FIVE_BAR:[I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING_FOUR_BAR:[I

    :goto_2
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    .line 142
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FIVE_BAR:[I

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS_FOUR_BAR:[I

    :goto_3
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "CARRIER_NETWORK_CHANGE"

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f1101d0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "2G"

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110206

    const v29, 0x7f08082e

    const/16 v30, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 217
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "3G"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110209

    const v16, 0x7f08082f

    const/16 v17, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 231
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "3G+"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110207

    const v29, 0x7f080830

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 245
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "WFC"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 256
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "Unknown"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 267
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "E"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110211

    const v16, 0x7f080837

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 280
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "1X"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110210

    const v29, 0x7f08082d

    const/16 v30, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 293
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "G"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110212

    const v16, 0x7f080838

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 306
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "H"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110207

    const v29, 0x7f080839

    const/16 v30, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 319
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "H+"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110208

    const v16, 0x7f08083a

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 332
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "4G"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f11020a

    const v29, 0x7f080831

    const/16 v30, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 345
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "4G+"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f11020b

    const v16, 0x7f080833

    const/16 v17, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 358
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "LTE"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f110214

    const v29, 0x7f08083c

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 371
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "LTE+"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f110215

    const v16, 0x7f08083d

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 385
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "LTE"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v29, 0x7f080832

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 400
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "DataDisabled"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f1101d4

    const v16, 0x7f08082c

    const/16 v17, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 415
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "5G"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f11020c

    const v29, 0x7f080835

    const/16 v30, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 428
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "5GBasic"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f11020d

    const v16, 0x7f080835

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 441
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v19, "5GUWB"

    sget-object v22, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v27, v1, v4

    const v28, 0x7f11020f

    const v29, 0x7f080836

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v30}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 454
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v6, "5GSA"

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v14, v1, v4

    const v15, 0x7f11020e

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 492
    sget v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIGNAL_LEVEL_NUM:I

    .line 495
    const-string v0, "TelephonyIcons"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DEBUG:Z

    .line 512
    sput-boolean v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0808df
        0x7f08092f
        0x7f080983
        0x7f0809d7
        0x7f080a2b
    .end array-data

    :array_1
    .array-data 4
        0x7f080902
        0x7f080952
        0x7f0809a6
        0x7f0809fa
        0x7f080a4e
    .end array-data

    :array_2
    .array-data 4
        0x7f0808fd
        0x7f08094d
        0x7f0809a1
        0x7f0809f5
        0x7f080a49
    .end array-data

    :array_3
    .array-data 4
        0x7f0808fc
        0x7f08094c
        0x7f0809a0
        0x7f0809f4
        0x7f080a48
    .end array-data

    :array_4
    .array-data 4
        0x7f080916
        0x7f080966
        0x7f0809ba
        0x7f080a0e
        0x7f080a62
    .end array-data

    :array_5
    .array-data 4
        0x7f080a9f
        0x7f080aa0
        0x7f080aa1
        0x7f080aa2
        0x7f080aa3
    .end array-data

    :array_6
    .array-data 4
        0x7f080915
        0x7f080965
        0x7f0809b9
        0x7f080a0d
        0x7f080a61
    .end array-data

    :array_7
    .array-data 4
        0x7f080917
        0x7f080967
        0x7f0809bb
        0x7f080a0f
        0x7f080a63
        0x7f080a83
    .end array-data

    :array_8
    .array-data 4
        0x7f080918
        0x7f080968
        0x7f0809bc
        0x7f080a10
        0x7f080a64
        0x7f080a84
    .end array-data

    :array_9
    .array-data 4
        0x7f08091b
        0x7f08096b
        0x7f0809bf
        0x7f080a13
        0x7f080a67
        0x7f080a87
    .end array-data

    :array_a
    .array-data 4
        0x7f080919
        0x7f080969
        0x7f0809bd
        0x7f080a11
        0x7f080a65
        0x7f080a85
    .end array-data

    :array_b
    .array-data 4
        0x7f08091a
        0x7f08096a
        0x7f0809be
        0x7f080a12
        0x7f080a66
        0x7f080a86
    .end array-data
.end method

.method static getOneplusRoamingSignalIconId(I)I
    .locals 2
    .param p0, "level"    # I

    .line 929
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    .line 931
    .local v0, "icons":[I
    aget v1, v0, p0

    return v1
.end method

.method static getOneplusVirtualSimSignalIconId(I)I
    .locals 2
    .param p0, "level"    # I

    .line 920
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    .line 922
    .local v0, "icons":[I
    aget v1, v0, p0

    return v1
.end method

.method static getStackedDataIcon(IIZ)[I
    .locals 7
    .param p0, "type"    # I
    .param p1, "level"    # I
    .param p2, "showLTE"    # Z

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "strengthId":I
    const/4 v1, 0x0

    .line 873
    .local v1, "typeId":I
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    .line 874
    .local v2, "strengthIconList":[I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 877
    .local v3, "icons":[I
    aget v0, v2, p1

    .line 881
    const/16 v4, 0x11

    if-eq p0, v4, :cond_3

    const/16 v4, 0x13

    if-eq p0, v4, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 906
    const v1, 0x7f080858

    .line 907
    const-string v4, "TelephonyIcons"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknow network type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 884
    :pswitch_0
    if-eqz p2, :cond_0

    const v4, 0x7f080859

    goto :goto_0

    :cond_0
    const v4, 0x7f080856

    :goto_0
    move v1, v4

    .line 885
    goto :goto_2

    .line 902
    :pswitch_1
    const v1, 0x7f080854

    .line 903
    goto :goto_2

    .line 888
    :cond_1
    if-eqz p2, :cond_2

    const v4, 0x7f08085a

    goto :goto_1

    :cond_2
    const v4, 0x7f080857

    :goto_1
    move v1, v4

    .line 889
    goto :goto_2

    .line 897
    :cond_3
    :pswitch_2
    const v1, 0x7f080855

    .line 898
    nop

    .line 911
    :goto_2
    const/4 v4, 0x0

    aput v0, v3, v4

    .line 912
    const/4 v4, 0x1

    aput v1, v3, v4

    .line 913
    return-object v3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static getStackedVoiceIcon(IIZZ)[I
    .locals 7
    .param p0, "type"    # I
    .param p1, "level"    # I
    .param p2, "isRoaming"    # Z
    .param p3, "showLTE"    # Z

    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "strengthId":I
    const/4 v1, 0x0

    .line 832
    .local v1, "typeId":I
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_STRENGTH_ICONS:[I

    .line 833
    .local v2, "strengthIconList":[I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 837
    .local v3, "icons":[I
    aget v0, v2, p1

    .line 840
    if-eqz p2, :cond_0

    .line 841
    const v1, 0x7f08085b

    goto :goto_1

    .line 843
    :cond_0
    const/4 v4, 0x7

    if-eq p0, v4, :cond_3

    const/16 v4, 0xd

    if-eq p0, v4, :cond_1

    .line 854
    const v1, 0x7f080853

    .line 855
    const-string v4, "TelephonyIcons"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknow network type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 846
    :cond_1
    if-eqz p3, :cond_2

    const v4, 0x7f080859

    goto :goto_0

    :cond_2
    const v4, 0x7f080856

    :goto_0
    move v1, v4

    .line 847
    goto :goto_1

    .line 850
    :cond_3
    const v1, 0x7f080853

    .line 851
    nop

    .line 862
    :goto_1
    const/4 v4, 0x0

    aput v0, v3, v4

    .line 863
    const/4 v4, 0x1

    aput v1, v3, v4

    .line 864
    return-object v3
.end method
