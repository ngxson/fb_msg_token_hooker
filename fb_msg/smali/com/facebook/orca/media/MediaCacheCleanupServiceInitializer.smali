.class public Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;
.super Ljava/lang/Object;
.source "MediaCacheCleanupServiceInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaCacheCleanupService;->a(Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/orca/images/ImageCacheCleanupService;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method
