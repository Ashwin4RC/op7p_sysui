.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadOptions"
.end annotation


# instance fields
.field public flags:I

.field public loadTitles:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->flags:I

    return-void
.end method
