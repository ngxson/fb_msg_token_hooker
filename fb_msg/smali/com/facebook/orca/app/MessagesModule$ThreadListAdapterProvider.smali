.class Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threadlist/ThreadListAdapter;",
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
    .line 1779
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1779
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threadlist/ThreadListAdapter;
    .locals 5

    .prologue
    .line 1783
    new-instance v4, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/ArchiveThreadManager;

    const-class v2, Lcom/facebook/orca/cache/SpamThreadManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/SpamThreadManager;

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/ArchiveThreadManager;Lcom/facebook/orca/cache/SpamThreadManager;Landroid/view/LayoutInflater;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1779
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;->a()Lcom/facebook/orca/threadlist/ThreadListAdapter;

    move-result-object v0

    return-object v0
.end method
