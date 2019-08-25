.class public Lcom/android/systemui/doze/DozeLog;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeLog$SummaryStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SIZE:I

.field private static sCount:I

.field private static sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static final sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private static sMessages:[Ljava/lang/String;

.field private static sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPosition:I

.field private static sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPulsing:Z

.field private static sRegisterKeyguardCallback:Z

.field private static sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sSince:J

.field private static sTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->DEBUG:Z

    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    sput v0, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sRegisterKeyguardCallback:Z

    .line 332
    new-instance v0, Lcom/android/systemui/doze/DozeLog$1;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeLog$1;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .line 31
    sget-wide v0, Lcom/android/systemui/doze/DozeLog;->sSince:J

    return-wide v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 238
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 239
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 240
    :cond_0
    const-string v1, "  Doze log:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    sget v1, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    sget v2, Lcom/android/systemui/doze/DozeLog;->sCount:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int/2addr v1, v2

    .line 242
    .local v1, "start":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/android/systemui/doze/DozeLog;->sCount:I

    if-ge v3, v4, :cond_1

    .line 243
    add-int v4, v1, v3

    sget v5, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int/2addr v4, v5

    .line 244
    .local v4, "j":I
    const-string v5, "    "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    sget-object v7, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    aget-wide v7, v7, v4

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 247
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .end local v4    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v3    # "i":I
    :cond_1
    const-string v3, "  Doze summary stats (for "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/android/systemui/doze/DozeLog;->sSince:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 251
    const-string v3, "):"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    sget-object v3, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v4, "Pickup pulse (near vibration)"

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 253
    sget-object v3, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v4, "Pickup pulse (not near vibration)"

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 254
    sget-object v3, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v4, "Notification pulse"

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 255
    sget-object v3, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v4, "Screen on (pulsing)"

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 256
    sget-object v3, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v4, "Screen on (not pulsing)"

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 257
    sget-object v3, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v4, "Emergency call"

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 258
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 259
    invoke-static {v3}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "reason":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity near ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 261
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity far ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 258
    .end local v4    # "reason":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v1    # "start":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 115
    sget v1, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    new-array v1, v1, [J

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    .line 116
    sget v1, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/doze/DozeLog;->sSince:J

    .line 118
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 119
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 120
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 121
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 122
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 123
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 124
    const/4 v1, 0x2

    const/16 v3, 0xa

    filled-new-array {v3, v1}, [I

    move-result-object v1

    const-class v4, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 125
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 126
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v4

    new-instance v6, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v6, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    aput-object v6, v5, v1

    .line 127
    sget-object v5, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v4

    new-instance v6, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v6, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v4    # "i":I
    :cond_0
    const-string v1, "init"

    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 130
    sget-boolean v1, Lcom/android/systemui/doze/DozeLog;->sRegisterKeyguardCallback:Z

    if-eqz v1, :cond_1

    .line 131
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 134
    :cond_1
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .line 267
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 268
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 269
    :cond_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    sget v2, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 270
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    sget v2, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    aput-object p0, v1, v2

    .line 271
    sget v1, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int/2addr v1, v2

    sput v1, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    .line 272
    sget v1, Lcom/android/systemui/doze/DozeLog;->sCount:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/android/systemui/doze/DozeLog;->sCount:I

    .line 273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const-string v0, "DozeLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 273
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static pulseReasonToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "pulseReason"    # I

    .line 214
    packed-switch p0, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_0
    const-string v0, "fingerprintPoke"

    return-object v0

    .line 226
    :pswitch_1
    const-string/jumbo v0, "singleTap"

    return-object v0

    .line 223
    :pswitch_2
    const-string v0, "alwaysOn"

    return-object v0

    .line 228
    :pswitch_3
    const-string/jumbo v0, "threeKeyChanged"

    return-object v0

    .line 220
    :pswitch_4
    const-string v0, "longpress"

    return-object v0

    .line 219
    :pswitch_5
    const-string v0, "doubletap"

    return-object v0

    .line 218
    :pswitch_6
    const-string v0, "pickup"

    return-object v0

    .line 217
    :pswitch_7
    const-string/jumbo v0, "sigmotion"

    return-object v0

    .line 216
    :pswitch_8
    const-string v0, "notification"

    return-object v0

    .line 215
    :pswitch_9
    const-string v0, "intent"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public static traceDozing(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dozing"    # Z

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 140
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dozing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static traceEmergencyCall()V
    .locals 2

    .line 153
    const-string v0, "emergencyCall"

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 155
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 157
    monitor-exit v0

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static traceFling(ZZZZ)V
    .locals 2
    .param p0, "expand"    # Z
    .param p1, "aboveThreshold"    # Z
    .param p2, "thresholdNeeded"    # Z
    .param p3, "screenOnFromTouch"    # Z

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling expand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " aboveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " thresholdNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " screenOnFromTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static traceKeyguard(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 190
    if-nez p0, :cond_0

    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 193
    :cond_0
    return-void
.end method

.method public static traceKeyguardBouncerChanged(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bouncer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static traceMissedTick(Ljava/lang/String;)V
    .locals 2
    .param p0, "delay"    # Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missedTick by="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static traceNotificationPulse(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 104
    const-string v0, "notificationPulse"

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 106
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 108
    monitor-exit v0

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static tracePickupPulse(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "withinVibrationThreshold"    # Z

    .line 78
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickupPulse withinVibrationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 82
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 83
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 84
    :cond_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 85
    monitor-exit v0

    .line 87
    return-void

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static traceProximityResult(Landroid/content/Context;ZJI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "near"    # Z
    .param p2, "millis"    # J
    .param p4, "pulseReason"    # I

    .line 203
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proximityResult reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 207
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 208
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v1, v1, p4

    xor-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 209
    monitor-exit v0

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pulsePending"    # Z
    .param p2, "state"    # Lcom/android/systemui/doze/DozeMachine$State;
    .param p3, "blocked"    # Z

    .line 282
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseDropped pulsePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public static tracePulseFinish()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 98
    const-string v0, "pulseFinish"

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static tracePulseStart(I)V
    .locals 2
    .param p0, "reason"    # I

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseStart reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static tracePulseTouchDisabledByProx(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disabled"    # Z

    .line 289
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseTouchDisabledByProx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static traceScreenOff(I)V
    .locals 2
    .param p0, "why"    # I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOff why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static traceScreenOn()V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOn pulsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 170
    const-class v0, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 175
    return-void

    .line 172
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static traceSensor(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pulseReason"    # I

    .line 306
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sensor type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public static traceState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2
    .param p0, "state"    # Lcom/android/systemui/doze/DozeMachine$State;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 198
    return-void
.end method
