.class Lcom/google/common/primitives/Shorts$ShortArrayAsList;
.super Ljava/util/AbstractList;
.source "Shorts.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final a:[S

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([SII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    .line 479
    iput p2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    .line 480
    iput p3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    .line 481
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Short;
    .locals 2
    .parameter

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 493
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 526
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-short v1, v0, v1

    .line 527
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int v3, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, v2, v3

    .line 528
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 498
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 541
    if-ne p1, p0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return v0

    .line 544
    :cond_1
    instance-of v2, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v2, :cond_4

    .line 545
    check-cast p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 546
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v3

    .line 547
    invoke-virtual {p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 548
    goto :goto_0

    :cond_2
    move v2, v1

    .line 550
    :goto_1
    if-ge v2, v3, :cond_0

    .line 551
    iget-object v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v5, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v5, v2

    aget-short v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v6, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    if-eq v4, v5, :cond_3

    move v0, v1

    .line 552
    goto :goto_0

    .line 550
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 557
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a(I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 561
    const/4 v1, 0x1

    .line 562
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 563
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    aget-short v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Shorts;->a(S)I

    move-result v2

    add-int/2addr v1, v2

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 504
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

    move-result v0

    .line 506
    if-ltz v0, :cond_0

    .line 507
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 515
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->b([SSII)I

    move-result v0

    .line 517
    if-ltz v0, :cond_0

    .line 518
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 466
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 484
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 533
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 534
    if-ne p1, p2, :cond_0

    .line 535
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 570
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    aget-short v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 572
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
