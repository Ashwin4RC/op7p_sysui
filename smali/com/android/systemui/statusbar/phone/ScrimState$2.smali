.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$2;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "index"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 81
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$2;->mCurrentBehindAlpha:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$2;->mCurrentInFrontAlpha:F

    .line 83
    return-void
.end method
