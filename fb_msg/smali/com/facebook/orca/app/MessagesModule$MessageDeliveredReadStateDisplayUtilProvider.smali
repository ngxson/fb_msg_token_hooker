.class Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;",
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
    .line 2267
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2267
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;
    .locals 2

    .prologue
    .line 2272
    new-instance v1, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    invoke-direct {v1, v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;-><init>(Lcom/facebook/orca/cache/DataCache;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2267
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;->a()Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    move-result-object v0

    return-object v0
.end method
