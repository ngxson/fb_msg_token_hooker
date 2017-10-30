.class Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/ImageMediaDownloader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ImageModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/images/ImageModule;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/ImageMediaDownloader;
    .locals 3

    .prologue
    .line 157
    new-instance v1, Lcom/facebook/orca/images/ImageMediaDownloader;

    iget-object v0, p0, Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-static {v0}, Lcom/facebook/orca/images/ImageModule;->a(Lcom/facebook/orca/images/ImageModule;)Landroid/content/Context;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/images/ImageMediaDownloader;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;->a()Lcom/facebook/orca/images/ImageMediaDownloader;

    move-result-object v0

    return-object v0
.end method
