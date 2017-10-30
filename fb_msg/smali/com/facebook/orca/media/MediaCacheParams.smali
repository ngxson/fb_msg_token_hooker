.class public Lcom/facebook/orca/media/MediaCacheParams;
.super Ljava/lang/Object;
.source "MediaCacheParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/media/MediaCacheParams;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput p1, p0, Lcom/facebook/orca/media/MediaCacheParams;->d:I

    .line 107
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/media/MediaCacheParams;
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCacheParams;->a:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/media/MediaCacheParams;
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/facebook/orca/media/MediaCacheParams;->c:Z

    .line 94
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCacheParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Lcom/facebook/orca/media/MediaCacheParams;
    .locals 0
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lcom/facebook/orca/media/MediaCacheParams;->e:I

    .line 120
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/media/MediaCacheParams;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCacheParams;->b:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCacheParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/facebook/orca/media/MediaCacheParams;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/facebook/orca/media/MediaCacheParams;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/media/MediaCacheParams;->c:Z

    return v0
.end method
