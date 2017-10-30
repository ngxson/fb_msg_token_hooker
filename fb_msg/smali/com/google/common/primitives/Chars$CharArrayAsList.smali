.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

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
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final a:[C

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([CII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    .line 474
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    .line 475
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    .line 476
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Character;
    .locals 2
    .parameter

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 488
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Character;)Ljava/lang/Character;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 521
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-char v1, v0, v1

    .line 522
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int v3, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v2, v3

    .line 523
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 493
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->a([CCII)I

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

    .line 536
    if-ne p1, p0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    instance-of v2, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v2, :cond_4

    .line 540
    check-cast p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .line 541
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v3

    .line 542
    invoke-virtual {p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 543
    goto :goto_0

    :cond_2
    move v2, v1

    .line 545
    :goto_1
    if-ge v2, v3, :cond_0

    .line 546
    iget-object v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v5, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v5, v2

    aget-char v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v6, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3

    move v0, v1

    .line 547
    goto :goto_0

    .line 545
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 552
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->a(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 556
    const/4 v1, 0x1

    .line 557
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 558
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Chars;->a(C)I

    move-result v2

    add-int/2addr v1, v2

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 499
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->a([CCII)I

    move-result v0

    .line 501
    if-ltz v0, :cond_0

    .line 502
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 505
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 510
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->b([CCII)I

    move-result v0

    .line 512
    if-ltz v0, :cond_0

    .line 513
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 516
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
    .line 461
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->a(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 528
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 529
    if-ne p1, p2, :cond_0

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 565
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 567
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
