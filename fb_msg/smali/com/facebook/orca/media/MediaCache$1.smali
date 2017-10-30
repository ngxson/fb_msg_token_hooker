.class Lcom/facebook/orca/media/MediaCache$1;
.super Ljava/lang/Object;
.source "MediaCache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/facebook/orca/media/MediaCache;


# direct methods
.method constructor <init>(Lcom/facebook/orca/media/MediaCache;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCache$1;->a:Lcom/facebook/orca/media/MediaCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache$1;->a:Lcom/facebook/orca/media/MediaCache;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache;->b(Lcom/facebook/orca/media/MediaCache;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
