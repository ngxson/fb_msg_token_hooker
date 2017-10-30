.class Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KEY:",
        "Lcom/facebook/orca/media/MediaCacheKey;",
        "VA",
        "LUE:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/media/MediaCache;

.field private final b:Lcom/facebook/orca/media/MediaCacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKEY;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVA",
            "LUE;"
        }
    .end annotation
.end field

.field private final d:I

.field private volatile e:J

.field private f:J


# direct methods
.method constructor <init>(Lcom/facebook/orca/media/MediaCache;Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TVA",
            "LUE;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->a:Lcom/facebook/orca/media/MediaCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->b:Lcom/facebook/orca/media/MediaCacheKey;

    .line 92
    iput-object p3, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->c:Ljava/lang/Object;

    .line 93
    iput p4, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->d:I

    .line 94
    invoke-static {p1}, Lcom/facebook/orca/media/MediaCache;->a(Lcom/facebook/orca/media/MediaCache;)Lcom/facebook/orca/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->e:J

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)J
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)Lcom/facebook/orca/media/MediaCacheKey;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->b:Lcom/facebook/orca/media/MediaCacheKey;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->d:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)J
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->f:J

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->a:Lcom/facebook/orca/media/MediaCache;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache;->a(Lcom/facebook/orca/media/MediaCache;)Lcom/facebook/orca/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->e:J

    .line 99
    return-void
.end method
