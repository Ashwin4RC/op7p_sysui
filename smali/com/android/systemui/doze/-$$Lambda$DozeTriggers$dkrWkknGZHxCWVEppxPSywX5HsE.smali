.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field private final synthetic f$1:Z

.field private final synthetic f$2:F

.field private final synthetic f$3:F

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;ZFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-boolean p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$1:Z

    iput p3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$2:F

    iput p4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$3:F

    iput p5, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-boolean v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$1:Z

    iget v2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$2:F

    iget v3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$3:F

    iget v4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$dkrWkknGZHxCWVEppxPSywX5HsE;->f$4:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onSensor$0(Lcom/android/systemui/doze/DozeTriggers;ZFFII)V

    return-void
.end method
