.class Lcom/facebook/orca/contacts/picker/FriendListsLoader$4;
.super Lcom/facebook/orca/ops/OperationResultFutureCallback;
.source "FriendListsLoader.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/FriendListsLoader;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$4;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OperationResultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$4;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader;Lcom/facebook/orca/server/OperationResult;)V

    .line 248
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$4;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method
