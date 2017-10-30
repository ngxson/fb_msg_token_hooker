.class Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AudioModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/audio/FetchAudioExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/audio/AudioModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/audio/AudioModule;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;->a:Lcom/facebook/orca/audio/AudioModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/audio/AudioModule;Lcom/facebook/orca/audio/AudioModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;-><init>(Lcom/facebook/orca/audio/AudioModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/audio/FetchAudioExecutor;
    .locals 4

    .prologue
    .line 68
    new-instance v3, Lcom/facebook/orca/audio/FetchAudioExecutor;

    const-class v0, Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/audio/AudioCache;

    const-class v1, Lcom/facebook/orca/common/async/KeyedExecutor;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/async/KeyedExecutor;

    const-class v2, Lcom/facebook/orca/audio/AudioMediaDownloader;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/audio/AudioMediaDownloader;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/audio/FetchAudioExecutor;-><init>(Lcom/facebook/orca/audio/AudioCache;Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/audio/AudioMediaDownloader;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;->a()Lcom/facebook/orca/audio/FetchAudioExecutor;

    move-result-object v0

    return-object v0
.end method
