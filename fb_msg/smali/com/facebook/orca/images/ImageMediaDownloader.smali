.class public Lcom/facebook/orca/images/ImageMediaDownloader;
.super Lcom/facebook/orca/media/MediaDownloader;
.source "ImageMediaDownloader.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/facebook/orca/images/ImageMediaDownloader;

    sput-object v0, Lcom/facebook/orca/images/ImageMediaDownloader;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    const-string v0, "image"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/media/MediaDownloader;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljava/lang/String;)V

    .line 23
    return-void
.end method
