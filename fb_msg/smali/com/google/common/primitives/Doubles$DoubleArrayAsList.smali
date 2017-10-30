.class Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
.super Ljava/util/AbstractList;
.source "Doubles.java"

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
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final a:[D

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([DII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    .line 420
    iput p2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    .line 421
    iput p3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    .line 422
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Double;
    .locals 2
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 434
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 467
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    .line 468
    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int v4, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 469
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    .line 439
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->a([DDII)I

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
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 482
    if-ne p1, p0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    instance-of v2, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v2, :cond_4

    .line 486
    check-cast p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .line 487
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v3

    .line 488
    invoke-virtual {p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 489
    goto :goto_0

    :cond_2
    move v2, v1

    .line 491
    :goto_1
    if-ge v2, v3, :cond_0

    .line 492
    iget-object v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v5, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v5, v2

    aget-wide v4, v4, v5

    iget-object v6, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v7, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v7, v2

    aget-wide v6, v6, v7

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    move v0, v1

    .line 493
    goto :goto_0

    .line 491
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 498
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 502
    const/4 v1, 0x1

    .line 503
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 504
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->a(D)I

    move-result v2

    add-int/2addr v1, v2

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter

    .prologue
    .line 445
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->a([DDII)I

    move-result v0

    .line 447
    if-ltz v0, :cond_0

    .line 448
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter

    .prologue
    .line 456
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->b([DDII)I

    move-result v0

    .line 458
    if-ltz v0, :cond_0

    .line 459
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 462
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
    .line 407
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 425
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 474
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 475
    if-ne p1, p2, :cond_0

    .line 476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 511
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 512
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 513
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
