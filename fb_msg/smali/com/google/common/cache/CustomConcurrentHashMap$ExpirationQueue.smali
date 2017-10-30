.class final Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3610
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3611
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;)V

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3662
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3663
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3651
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3654
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3655
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3657
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3668
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3669
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3670
    const/4 v0, 0x0

    .line 3674
    :goto_0
    return-object v0

    .line 3673
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3713
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3714
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3715
    invoke-static {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->d(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    move-object v0, v1

    .line 3717
    goto :goto_0

    .line 3719
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3720
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3721
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3692
    check-cast p1, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3693
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3725
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$2;

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$2;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 3610
    check-cast p1, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3610
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3610
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->b()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3680
    check-cast p1, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3681
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3682
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3683
    invoke-static {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3684
    invoke-static {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->d(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3686
    sget-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3703
    const/4 v1, 0x0

    .line 3704
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3705
    add-int/lit8 v1, v1, 0x1

    .line 3704
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3707
    :cond_0
    return v1
.end method
