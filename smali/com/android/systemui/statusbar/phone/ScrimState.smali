.class public enum Lcom/android/systemui/statusbar/phone/ScrimState;
.super Ljava/lang/Enum;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/ScrimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_TO_KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;


# instance fields
.field mAnimateChange:Z

.field mAnimationDuration:J

.field mAodFrontScrimAlpha:F

.field mBlankScreen:Z

.field mCurrentBehindAlpha:F

.field mCurrentBehindTint:I

.field mCurrentInFrontAlpha:F

.field mCurrentInFrontTint:I

.field mDisplayRequiresBlanking:Z

.field mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mIndex:I

.field mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field mScrimBehindAlphaKeyguard:F

.field mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field mWallpaperSupportsAmbientMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    const-string v1, "KEYGUARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$2;

    const-string v1, "BOUNCER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/phone/ScrimState$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$3;

    const-string v1, "BOUNCER_SCRIMMED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$4;

    const-string v1, "BRIGHTNESS_MIRROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$5;

    const-string v1, "AOD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$6;

    const-string v1, "PULSING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/android/systemui/statusbar/phone/ScrimState$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$7;

    const-string v1, "UNLOCKED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v8}, Lcom/android/systemui/statusbar/phone/ScrimState$7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 188
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$8;

    const-string v1, "BOUNCER_TO_KEYGUARD"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v9}, Lcom/android/systemui/statusbar/phone/ScrimState$8;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_TO_KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_TO_KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 202
    const-wide/16 v0, 0xdc

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 203
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    .line 204
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    .line 205
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    .line 219
    iput p3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mIndex:I

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/systemui/statusbar/phone/ScrimState$1;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/ScrimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method


# virtual methods
.method public getAnimateChange()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return v0
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBehindAlpha(F)F
    .locals 1
    .param p1, "busyness"    # F

    .line 242
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindAlpha:F

    return v0
.end method

.method public getBehindTint()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    return v0
.end method

.method public getBlanksScreen()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    return v0
.end method

.method public getFrontAlpha()F
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontAlpha:F

    return v0
.end method

.method public getFrontTint()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mIndex:I

    return v0
.end method

.method public init(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 1
    .param p1, "scrimInFront"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "scrimBehind"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p3, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 223
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 224
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 225
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 226
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    .line 227
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 228
    return-void
.end method

.method public isLowPowerState()Z
    .locals 1

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0
    .param p1, "previousState"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 231
    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 0
    .param p1, "aodFrontScrimAlpha"    # F

    .line 279
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    .line 280
    return-void
.end method

.method public setScrimBehindAlphaKeyguard(F)V
    .locals 0
    .param p1, "scrimBehindAlphaKeyguard"    # F

    .line 283
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    .line 284
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 0
    .param p1, "wallpaperSupportsAmbientMode"    # Z

    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    .line 288
    return-void
.end method

.method public updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V
    .locals 4
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "alpha"    # F
    .param p3, "tint"    # I

    .line 262
    nop

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    const-string v0, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v0, "back_scrim_alpha"

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 262
    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 266
    nop

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    const-string v0, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string v0, "back_scrim_tint"

    .line 268
    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 266
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 270
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/ScrimView;->setTint(I)V

    .line 271
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->setViewAlpha(F)V

    .line 272
    return-void
.end method
