.class public abstract Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
.super Ljava/lang/Object;
.source "MediaDownloader.java"


# instance fields
.field private final a:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;


# direct methods
.method protected constructor <init>(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    .line 48
    return-void
.end method

.method public static a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 1
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForError;

    invoke-direct {v0, p0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForError;-><init>(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 1
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForInputStream;

    invoke-direct {v0, p0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpEntity;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 1
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;

    invoke-direct {v0, p0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultForHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
