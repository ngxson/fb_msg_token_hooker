.class public Lcom/facebook/orca/audio/AudioMediaDownloader;
.super Lcom/facebook/orca/media/MediaDownloader;
.source "AudioMediaDownloader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    const-string v0, "audio"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/media/MediaDownloader;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljava/lang/String;)V

    .line 19
    return-void
.end method
