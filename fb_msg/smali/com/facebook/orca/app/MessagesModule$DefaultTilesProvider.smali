.class Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/photos/tiles/DefaultTiles;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1241
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/photos/tiles/DefaultTiles;
    .locals 5

    .prologue
    .line 1245
    new-instance v4, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    const-class v1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    const-class v2, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    const-class v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;-><init>(Landroid/content/res/Resources;Lcom/facebook/orca/photos/tiles/DefaultTilesCache;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/cache/ThreadDisplayCache;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;->a()Lcom/facebook/orca/photos/tiles/DefaultTiles;

    move-result-object v0

    return-object v0
.end method
