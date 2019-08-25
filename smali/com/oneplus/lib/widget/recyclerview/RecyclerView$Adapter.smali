.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z


# virtual methods
.method public final bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 5328
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    .line 5329
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5330
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    .line 5332
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5335
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5336
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 5337
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearPayload()V

    .line 5338
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5339
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 5313
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5314
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5315
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    .line 5316
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5317
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 5382
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 5354
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 5400
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public abstract onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5303
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 5304
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onFailedToRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 5458
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 5472
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 5484
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 5421
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method
