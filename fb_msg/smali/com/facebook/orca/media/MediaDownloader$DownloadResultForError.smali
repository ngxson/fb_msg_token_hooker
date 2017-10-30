.class Lcom/facebook/orca/media/MediaDownloader$DownloadResultForError;
.super Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
.source "MediaDownloader.java"


# direct methods
.method constructor <init>(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;-><init>(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)V

    .line 78
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
