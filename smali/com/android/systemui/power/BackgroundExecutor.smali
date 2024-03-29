.class public Lcom/android/systemui/power/BackgroundExecutor;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/power/BackgroundExecutor;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/systemui/power/BackgroundExecutor;

    invoke-direct {v0}, Lcom/android/systemui/power/BackgroundExecutor;-><init>()V

    sput-object v0, Lcom/android/systemui/power/BackgroundExecutor;->sInstance:Lcom/android/systemui/power/BackgroundExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static get()Lcom/android/systemui/power/BackgroundExecutor;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/systemui/power/BackgroundExecutor;->sInstance:Lcom/android/systemui/power/BackgroundExecutor;

    return-object v0
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/systemui/power/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
