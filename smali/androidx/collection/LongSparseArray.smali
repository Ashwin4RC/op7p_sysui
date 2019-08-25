.class public Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 65
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 68
    sget-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result p1

    .line 71
    new-array v1, p1, [J

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 72
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 74
    :goto_0
    iput v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 75
    return-void
.end method

.method private gc()V
    .locals 9

    .line 148
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 149
    .local v0, "n":I
    const/4 v1, 0x0

    .line 150
    .local v1, "o":I
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 151
    .local v2, "keys":[J
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 153
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .local v1, "i":I
    .local v5, "o":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 154
    aget-object v6, v3, v1

    .line 156
    .local v6, "val":Ljava/lang/Object;
    sget-object v7, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 157
    if-eq v1, v5, :cond_0

    .line 158
    aget-wide v7, v2, v1

    aput-wide v7, v2, v5

    .line 159
    aput-object v6, v3, v5

    .line 160
    const/4 v7, 0x0

    aput-object v7, v3, v1

    .line 163
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 153
    .end local v6    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_2
    iput-boolean v4, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 168
    iput v5, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 171
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 322
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 323
    .local v0, "n":I
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 325
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 326
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v3    # "i":I
    :cond_0
    iput v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 330
    iput-boolean v2, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 331
    return-void
.end method

.method public clone()Landroidx/collection/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "clone":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    move-object v0, v1

    .line 83
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 84
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 88
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 107
    .local v0, "i":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 108
    :cond_1
    :goto_0
    return-object p3
.end method

.method public keyAt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 251
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 255
    :cond_0
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 181
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 182
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto/16 :goto_0

    .line 184
    :cond_0
    not-int v0, v0

    .line 186
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 188
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 189
    return-void

    .line 192
    :cond_1
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 193
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 196
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    not-int v0, v1

    .line 199
    :cond_2
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 200
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 202
    .local v1, "n":I
    new-array v2, v1, [J

    .line 203
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 206
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v4, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    .line 210
    iput-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 213
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 215
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :cond_4
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 220
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 221
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    .line 223
    :goto_0
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 139
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    .line 143
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 230
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 234
    :cond_0
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 376
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 377
    const-string/jumbo v0, "{}"

    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    const/4 v1, 0x0

    .line 382
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_3

    .line 383
    if-lez v1, :cond_1

    .line 384
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 387
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 390
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_2

    .line 391
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 393
    :cond_2
    const-string v5, "(this Map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 265
    .local p0, "this":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    .line 269
    :cond_0
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
