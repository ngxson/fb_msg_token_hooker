.class Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# instance fields
.field final a:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method private d(I)I
    .locals 1
    .parameter

    .prologue
    .line 724
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private e(I)I
    .locals 1
    .parameter

    .prologue
    .line 728
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private f(I)I
    .locals 1
    .parameter

    .prologue
    .line 732
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private g(I)I
    .locals 1
    .parameter

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method a(I)I
    .locals 2
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(II)I

    move-result v0

    return v0
.end method

.method a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Object;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v1

    .line 651
    if-eqz v1, :cond_0

    .line 652
    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    .line 653
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->e(I)I

    move-result v0

    .line 654
    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 656
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 657
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p1, v2, v0

    .line 659
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    aput-object v1, v2, v3

    .line 664
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    goto :goto_0
.end method

.method a(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 505
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(ILjava/lang/Object;)I

    move-result v2

    .line 506
    if-ne v2, p2, :cond_0

    move-object v0, v1

    .line 527
    :goto_0
    return-object v0

    .line 515
    :cond_0
    if-ge v2, p1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 523
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v3, v2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(ILjava/lang/Object;)I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 525
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-direct {v1, p3, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 527
    goto :goto_0
.end method

.method a(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c(ILjava/lang/Object;)I

    move-result v0

    .line 538
    if-ne v0, p1, :cond_0

    .line 544
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(ILjava/lang/Object;)I

    .line 545
    return-void

    .line 542
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move p1, v0

    goto :goto_0
.end method

.method b(I)I
    .locals 2
    .parameter

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    .line 597
    if-gez v0, :cond_0

    .line 598
    const/4 v0, -0x1

    .line 600
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method b(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 572
    const/4 v0, -0x1

    .line 582
    :cond_0
    return v0

    .line 574
    :cond_1
    if-lez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 575
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v2, v0, p2

    .line 577
    add-int/lit8 v1, p1, 0x1

    move v0, p1

    :goto_1
    if-ge v1, v2, :cond_0

    .line 578
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a(II)I

    move-result v3

    if-gez v3, :cond_2

    move v0, v1

    .line 577
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 574
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(ILjava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 552
    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 553
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->g(I)I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 555
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 562
    return p1

    .line 558
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    move p1, v0

    .line 560
    goto :goto_0
.end method

.method c(I)I
    .locals 3
    .parameter

    .prologue
    .line 696
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 697
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    move p1, v0

    .line 698
    goto :goto_0

    .line 700
    :cond_0
    return p1
.end method

.method c(ILjava/lang/Object;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 609
    if-nez p1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, v1

    .line 637
    :goto_0
    return v1

    .line 613
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v3

    .line 614
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 615
    if-eqz v3, :cond_2

    .line 620
    invoke-direct {p0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    .line 621
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->e(I)I

    move-result v2

    .line 622
    if-eq v2, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 624
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 625
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v0, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    move v1, v2

    .line 631
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v0, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v0, v2, p1

    .line 633
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, v1

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    move v1, p1

    .line 637
    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method d(ILjava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a(I)I

    move-result v0

    .line 677
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 680
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aput-object p2, v1, v0

    .line 683
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
