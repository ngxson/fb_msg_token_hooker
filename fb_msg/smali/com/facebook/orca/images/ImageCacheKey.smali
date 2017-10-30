.class public Lcom/facebook/orca/images/ImageCacheKey;
.super Lcom/facebook/orca/media/MediaCacheKey;
.source "ImageCacheKey.java"


# static fields
.field public static final a:Lcom/facebook/orca/images/ImageCacheKey$Options;

.field public static final b:Lcom/facebook/orca/images/ImageCacheKey$Options;


# instance fields
.field private final c:Landroid/net/Uri;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/orca/images/ImageCacheKey$Options;

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/facebook/orca/images/ImageCacheKey$Options;->newBuilder()Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;->a(Z)Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;->b()Lcom/facebook/orca/images/ImageCacheKey$Options;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/images/ImageCacheKey;->a:Lcom/facebook/orca/images/ImageCacheKey$Options;

    .line 22
    invoke-static {}, Lcom/facebook/orca/images/ImageCacheKey$Options;->newBuilder()Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;->a(Z)Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;->b()Lcom/facebook/orca/images/ImageCacheKey$Options;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/images/ImageCacheKey;->b:Lcom/facebook/orca/images/ImageCacheKey$Options;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/orca/images/ImageCacheKey$Options;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/ImageCacheKey$Options;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/orca/images/ImageCacheKey$Options;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/media/MediaCacheKey;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCacheKey;->c:Landroid/net/Uri;

    .line 80
    iput-object p2, p0, Lcom/facebook/orca/images/ImageCacheKey;->e:Lcom/facebook/orca/images/ImageCacheKey$Options;

    .line 81
    iput-object p3, p0, Lcom/facebook/orca/images/ImageCacheKey;->d:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/ImageCacheKey$Options;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->e:Lcom/facebook/orca/images/ImageCacheKey$Options;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/images/ImageCacheKey;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/images/ImageCacheKey;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->f:Ljava/lang/String;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/images/ImageCacheKey;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->e:Lcom/facebook/orca/images/ImageCacheKey$Options;

    iget-boolean v0, v0, Lcom/facebook/orca/images/ImageCacheKey$Options;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/images/ImageCacheKey;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->g:Ljava/lang/String;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->g:Ljava/lang/String;

    return-object v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
