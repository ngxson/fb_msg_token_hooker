.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Ljava/lang/Object;

    .line 408
    iput-object p3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    .line 409
    iput-object p4, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    .line 410
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Ljava/util/Collection;

    .line 412
    return-void

    .line 410
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 424
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    .line 425
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 429
    if-eqz v0, :cond_1

    .line 430
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    .line 433
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 549
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 551
    if-eqz v1, :cond_0

    .line 552
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMultimap;->c(Lcom/google/common/collect/AbstractMultimap;)I

    .line 553
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d()V

    .line 557
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 567
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const/4 v0, 0x0

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v1

    .line 571
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 574
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 575
    if-nez v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 594
    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 598
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 599
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 584
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 589
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d()V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 472
    if-ne p1, p0, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 476
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 481
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 495
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 604
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 605
    if-eqz v0, :cond_0

    .line 606
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;)I

    .line 607
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    .line 609
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 613
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const/4 v0, 0x0

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v1

    .line 617
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 620
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 621
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 627
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 629
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 630
    if-eqz v1, :cond_0

    .line 631
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 632
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->f:Lcom/google/common/collect/AbstractMultimap;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 633
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    .line 635
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 468
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 486
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
