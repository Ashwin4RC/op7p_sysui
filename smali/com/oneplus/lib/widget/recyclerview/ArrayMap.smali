.class public Lcom/oneplus/lib/widget/recyclerview/ArrayMap;
.super Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Lcom/oneplus/lib/widget/recyclerview/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;-><init>()V

    .line 55
    return-void
.end method

.method private getCollection()Lcom/oneplus/lib/widget/recyclerview/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/lib/widget/recyclerview/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->mCollections:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->mCollections:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->mCollections:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->getCollection()Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->getCollection()Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->ensureCapacity(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->getCollection()Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
