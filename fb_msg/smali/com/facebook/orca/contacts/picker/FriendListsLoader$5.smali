.class Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;
.super Ljava/lang/Object;
.source "FriendListsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

.field final synthetic b:Lcom/facebook/orca/contacts/picker/FriendListsLoader;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;->b:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;->b:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;->b:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->b(Ljava/lang/Object;)V

    .line 361
    :cond_0
    return-void
.end method
