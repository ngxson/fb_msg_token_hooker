.class public Lcom/facebook/orca/media/MediaResource$Builder;
.super Ljava/lang/Object;
.source "MediaResource.java"


# instance fields
.field private a:Lcom/facebook/orca/media/MediaResource$Type;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource$Builder;
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/media/MediaResource$Builder;->b:Landroid/net/Uri;

    .line 52
    return-object p0
.end method

.method public a(Lcom/facebook/orca/media/MediaResource$Type;)Lcom/facebook/orca/media/MediaResource$Builder;
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/orca/media/MediaResource$Builder;->a:Lcom/facebook/orca/media/MediaResource$Type;

    .line 43
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/media/MediaResource$Builder;
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/orca/media/MediaResource$Builder;->c:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public a()Lcom/facebook/orca/media/MediaResource$Type;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource$Builder;->a:Lcom/facebook/orca/media/MediaResource$Type;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource$Builder;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/media/MediaResource$Builder;
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/media/MediaResource$Builder;->d:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/facebook/orca/media/MediaResource;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/facebook/orca/media/MediaResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/media/MediaResource;-><init>(Lcom/facebook/orca/media/MediaResource$Builder;Lcom/facebook/orca/media/MediaResource$1;)V

    return-object v0
.end method
