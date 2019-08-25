.class public abstract Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field private static sCompatVectorFromResourcesEnabled:Z

.field private static sDefaultNightMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const/4 v0, -0x1

    sput v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sDefaultNightMode:I

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return-void
.end method
