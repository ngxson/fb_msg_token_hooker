.class Lcom/facebook/orca/media/MediaCache$MyInputSupplier;
.super Ljava/lang/Object;
.source "MediaCache.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;->a:Ljava/io/InputStream;

    .line 379
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/facebook/orca/media/MediaCache$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/io/InputStream;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 383
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;->b:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;->b:Z

    .line 385
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;->a:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
