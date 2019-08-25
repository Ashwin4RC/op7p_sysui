.class public Lcom/oneplus/lib/preference/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method public static compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "me"    # Ljava/lang/CharSequence;
    .param p1, "another"    # Ljava/lang/CharSequence;

    .line 119
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "myLen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 120
    .local v1, "anotherLen":I
    const/4 v2, 0x0

    .local v2, "myPos":I
    const/4 v3, 0x0

    .line 121
    .local v3, "anotherPos":I
    if-ge v0, v1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 123
    .local v4, "end":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 124
    add-int/lit8 v5, v2, 0x1

    .local v5, "myPos":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .end local v2    # "myPos":I
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int/lit8 v6, v3, 0x1

    .line 125
    .local v6, "anotherPos":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .end local v3    # "anotherPos":I
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    sub-int/2addr v2, v3

    move v3, v2

    .local v3, "result":I
    if-eqz v2, :cond_1

    .line 126
    return v3

    .line 121
    .end local v3    # "result":I
    :cond_1
    move v2, v5

    move v3, v6

    goto :goto_0

    .line 129
    .end local v5    # "myPos":I
    .end local v6    # "anotherPos":I
    .restart local v2    # "myPos":I
    .local v3, "anotherPos":I
    :cond_2
    sub-int v5, v0, v1

    return v5
.end method
