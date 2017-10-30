.class Lcom/facebook/orca/media/MediaCacheCleanupService$1;
.super Lcom/google/inject/TypeLiteral;
.source "MediaCacheCleanupService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/media/MediaCache;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/media/MediaCacheCleanupService;


# direct methods
.method constructor <init>(Lcom/facebook/orca/media/MediaCacheCleanupService;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCacheCleanupService$1;->a:Lcom/facebook/orca/media/MediaCacheCleanupService;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
