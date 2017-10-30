.class Lcom/facebook/orca/media/MediaCache$ExpirationComparator;
.super Ljava/lang/Object;
.source "MediaCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/media/MediaCache",
        "<TKEY;TVA",
        "LUE;",
        ">.InMemoryCachedValue<TKEY;TVA",
        "LUE;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/media/MediaCache;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/media/MediaCache;)V
    .locals 4
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCache$ExpirationComparator;->a:Lcom/facebook/orca/media/MediaCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-static {p1}, Lcom/facebook/orca/media/MediaCache;->a(Lcom/facebook/orca/media/MediaCache;)Lcom/facebook/orca/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/media/MediaCache$ExpirationComparator;->b:J

    .line 596
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)I
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/media/MediaCache",
            "<TKEY;TVA",
            "LUE;",
            ">.InMemoryCachedValue<TKEY;TVA",
            "LUE;",
            ">;",
            "Lcom/facebook/orca/media/MediaCache",
            "<TKEY;TVA",
            "LUE;",
            ">.InMemoryCachedValue<TKEY;TVA",
            "LUE;",
            ">;)I"
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0x1d4c0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 600
    invoke-static {p1}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->e(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 601
    invoke-static {p2}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->e(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 603
    invoke-static {p1}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->e(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)J

    move-result-wide v6

    .line 604
    invoke-static {p2}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->e(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)J

    move-result-wide v8

    .line 606
    cmp-long v10, v2, v4

    if-gez v10, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 608
    :cond_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    move v0, v1

    .line 609
    goto :goto_0

    .line 612
    :cond_2
    iget-wide v4, p0, Lcom/facebook/orca/media/MediaCache$ExpirationComparator;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 614
    cmp-long v2, v6, v8

    if-ltz v2, :cond_0

    .line 616
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    move v0, v1

    .line 617
    goto :goto_0

    .line 619
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :cond_4
    invoke-static {p2}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->d(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)I

    move-result v0

    invoke-static {p1}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->d(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 589
    check-cast p1, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;

    check-cast p2, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/media/MediaCache$ExpirationComparator;->a(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)I

    move-result v0

    return v0
.end method
