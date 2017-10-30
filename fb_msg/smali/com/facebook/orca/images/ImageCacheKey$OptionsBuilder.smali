.class public Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;
.super Ljava/lang/Object;
.source "ImageCacheKey.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;->a:Z

    .line 58
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;->a:Z

    return v0
.end method

.method public b()Lcom/facebook/orca/images/ImageCacheKey$Options;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/orca/images/ImageCacheKey$Options;

    invoke-direct {v0, p0}, Lcom/facebook/orca/images/ImageCacheKey$Options;-><init>(Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;)V

    return-object v0
.end method
