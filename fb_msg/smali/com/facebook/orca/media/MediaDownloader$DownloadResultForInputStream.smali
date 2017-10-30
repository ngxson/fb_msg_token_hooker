.class Lcom/facebook/orca/media/MediaDownloader$DownloadResultForInputStream;
.super Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
.source "MediaDownloader.java"


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;-><init>(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)V

    .line 88
    iput-object p1, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForInputStream;->a:Ljava/io/InputStream;

    .line 89
    return-void
.end method


# virtual methods
.method public b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForInputStream;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForInputStream;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 99
    return-void
.end method
