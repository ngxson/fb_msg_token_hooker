.class public Lcom/facebook/orca/audio/FetchCachedAudioUriTask;
.super Landroid/os/AsyncTask;
.source "FetchCachedAudioUriTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/facebook/orca/audio/AudioCacheKey;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/audio/AudioCache;

.field private b:Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/audio/AudioCache;Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->a:Lcom/facebook/orca/audio/AudioCache;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->b:Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/facebook/orca/audio/AudioCacheKey;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->a:Lcom/facebook/orca/audio/AudioCache;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/media/MediaCacheKey;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->b:Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;

    .line 55
    return-void
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->b:Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->b:Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;->a(Landroid/net/Uri;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13
    check-cast p1, [Lcom/facebook/orca/audio/AudioCacheKey;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->a([Lcom/facebook/orca/audio/AudioCacheKey;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->a(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
