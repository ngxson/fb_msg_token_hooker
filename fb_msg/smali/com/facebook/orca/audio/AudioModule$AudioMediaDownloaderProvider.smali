.class Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AudioModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/audio/AudioMediaDownloader;",
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
    .line 53
    iput-object p1, p0, Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;->a:Lcom/facebook/orca/audio/AudioModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/audio/AudioModule;Lcom/facebook/orca/audio/AudioModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;-><init>(Lcom/facebook/orca/audio/AudioModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/audio/AudioMediaDownloader;
    .locals 3

    .prologue
    .line 57
    new-instance v2, Lcom/facebook/orca/audio/AudioMediaDownloader;

    const-class v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/audio/AudioMediaDownloader;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;->a()Lcom/facebook/orca/audio/AudioMediaDownloader;

    move-result-object v0

    return-object v0
.end method
