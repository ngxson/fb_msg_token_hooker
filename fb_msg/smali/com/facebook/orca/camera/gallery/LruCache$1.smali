.class Lcom/facebook/orca/camera/gallery/LruCache$1;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/facebook/orca/camera/gallery/LruCache;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/gallery/LruCache;IFZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/camera/gallery/LruCache$1;->b:Lcom/facebook/orca/camera/gallery/LruCache;

    iput p5, p0, Lcom/facebook/orca/camera/gallery/LruCache$1;->a:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/LruCache$1;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/orca/camera/gallery/LruCache$1;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
