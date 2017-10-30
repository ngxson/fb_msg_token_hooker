.class Lcom/facebook/orca/contacts/picker/FriendListsLoader$3;
.super Lcom/facebook/dispose/AbstractDisposable;
.source "FriendListsLoader.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/FriendListsLoader;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$3;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-direct {p0}, Lcom/facebook/dispose/AbstractDisposable;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$3;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->b(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$3;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->b(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a()V

    .line 230
    :cond_0
    return-void
.end method
