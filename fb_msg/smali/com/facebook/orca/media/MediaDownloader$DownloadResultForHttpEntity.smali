.class Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;
.super Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
.source "MediaDownloader.java"


# instance fields
.field private final a:Lorg/apache/http/HttpEntity;

.field private final b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;-><init>(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)V

    .line 109
    iput-object p1, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;->a:Lorg/apache/http/HttpEntity;

    .line 110
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;->b:Ljava/io/InputStream;

    .line 111
    return-void
.end method


# virtual methods
.method public b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
