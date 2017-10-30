.class public Lcom/facebook/orca/images/ImageCacheKey$Options;
.super Ljava/lang/Object;
.source "ImageCacheKey.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/images/ImageCacheKey$Options;->a:Z

    .line 34
    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/images/ImageCacheKey$OptionsBuilder;-><init>()V

    return-object v0
.end method
