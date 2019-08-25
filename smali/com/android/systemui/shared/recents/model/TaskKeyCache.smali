.class public abstract Lcom/android/systemui/shared/recents/model/TaskKeyCache;
.super Ljava/lang/Object;
.source "TaskKeyCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    .local p0, "this":Lcom/android/systemui/shared/recents/model/TaskKeyCache;, "Lcom/android/systemui/shared/recents/model/TaskKeyCache<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method final evictAll()V
    .locals 2

    .line 107
    .local p0, "this":Lcom/android/systemui/shared/recents/model/TaskKeyCache;, "Lcom/android/systemui/shared/recents/model/TaskKeyCache<TV;>;"
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->evictAllCache()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 115
    monitor-exit v0

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract evictAllCache()V
.end method

.method final get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/systemui/shared/recents/model/TaskKeyCache;, "Lcom/android/systemui/shared/recents/model/TaskKeyCache<TV;>;"
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->getCacheEntry(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/android/systemui/shared/recents/model/TaskKeyCache;, "Lcom/android/systemui/shared/recents/model/TaskKeyCache<TV;>;"
    const/4 v0, 0x0

    .line 51
    .local v0, "lastKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object v0, v2

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 62
    const/4 v1, 0x0

    return-object v1

    .line 67
    :cond_1
    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->getCacheEntry(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 53
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected abstract getCacheEntry(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method final put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/android/systemui/shared/recents/model/TaskKeyCache;, "Lcom/android/systemui/shared/recents/model/TaskKeyCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->putCacheEntry(ILjava/lang/Object;)V

    .line 87
    return-void

    .line 83
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    const-string v0, "TaskKeyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected null key or value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method protected abstract putCacheEntry(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation
.end method

.method final remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 3
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 93
    .local p0, "this":Lcom/android/systemui/shared/recents/model/TaskKeyCache;, "Lcom/android/systemui/shared/recents/model/TaskKeyCache<TV;>;"
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->removeCacheEntry(I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    monitor-exit v0

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract removeCacheEntry(I)V
.end method
