.class Lcom/facebook/orca/presence/PresenceManager$6;
.super Ljava/lang/Object;
.source "PresenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threads/Message;

.field final synthetic b:Lcom/facebook/orca/presence/PresenceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/facebook/orca/presence/PresenceManager$6;->b:Lcom/facebook/orca/presence/PresenceManager;

    iput-object p2, p0, Lcom/facebook/orca/presence/PresenceManager$6;->a:Lcom/facebook/orca/threads/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$6;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager$6;->a:Lcom/facebook/orca/threads/Message;

    invoke-static {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/threads/Message;)V

    .line 463
    return-void
.end method
