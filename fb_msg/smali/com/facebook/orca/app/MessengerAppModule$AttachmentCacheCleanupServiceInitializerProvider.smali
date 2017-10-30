.class Lcom/facebook/orca/app/MessengerAppModule$AttachmentCacheCleanupServiceInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessengerAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$AttachmentCacheCleanupServiceInitializerProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$AttachmentCacheCleanupServiceInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;
    .locals 2

    .prologue
    .line 497
    new-instance v1, Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$AttachmentCacheCleanupServiceInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$AttachmentCacheCleanupServiceInitializerProvider;->a()Lcom/facebook/orca/media/MediaCacheCleanupServiceInitializer;

    move-result-object v0

    return-object v0
.end method
