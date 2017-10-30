.class Lcom/facebook/contacts/contactcard/ContactCardFragment$4;
.super Lcom/facebook/orca/ops/OperationResultFutureCallback;
.source "ContactCardFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/contacts/contactcard/ContactCardFragment;


# direct methods
.method constructor <init>(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;->a:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OperationResultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;->a:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 450
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;->a:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-static {v0, p1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/facebook/orca/ops/ServiceException;)V

    .line 451
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;->a:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 444
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;->a:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-static {v0, p1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/facebook/orca/server/OperationResult;)V

    .line 445
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method
