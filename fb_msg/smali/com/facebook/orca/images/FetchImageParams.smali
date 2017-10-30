.class public Lcom/facebook/orca/images/FetchImageParams;
.super Ljava/lang/Object;
.source "FetchImageParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/facebook/orca/images/UrlImageProcessor;

.field private final c:Ljava/lang/String;

.field private volatile d:Lcom/facebook/orca/images/ImageCacheKey;

.field private volatile e:Lcom/facebook/orca/images/ImageCacheKey;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    .line 48
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageParams;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    .line 49
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/images/UrlImageProcessor;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/images/FetchImageParams;)Z
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/facebook/orca/images/UrlImageProcessor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/images/ImageCacheKey;
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->d:Lcom/facebook/orca/images/ImageCacheKey;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->d:Lcom/facebook/orca/images/ImageCacheKey;

    .line 99
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    sget-object v1, Lcom/facebook/orca/images/UrlImageProcessor;->a:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lcom/facebook/orca/images/ImageCacheKey;

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/images/ImageCacheKey;->a:Lcom/facebook/orca/images/ImageCacheKey$Options;

    iget-object v3, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/ImageCacheKey$Options;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->d:Lcom/facebook/orca/images/ImageCacheKey;

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->d:Lcom/facebook/orca/images/ImageCacheKey;

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/images/FetchImageParams;->d()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->d:Lcom/facebook/orca/images/ImageCacheKey;

    goto :goto_1
.end method

.method public d()Lcom/facebook/orca/images/ImageCacheKey;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->e:Lcom/facebook/orca/images/ImageCacheKey;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/facebook/orca/images/ImageCacheKey;

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/images/ImageCacheKey;->a:Lcom/facebook/orca/images/ImageCacheKey$Options;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/ImageCacheKey$Options;)V

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->e:Lcom/facebook/orca/images/ImageCacheKey;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->e:Lcom/facebook/orca/images/ImageCacheKey;

    return-object v0
.end method
