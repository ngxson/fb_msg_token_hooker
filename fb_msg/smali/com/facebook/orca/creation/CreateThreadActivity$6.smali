.class Lcom/facebook/orca/creation/CreateThreadActivity$6;
.super Ljava/lang/Object;
.source "CreateThreadActivity.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/creation/CreateThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$6;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V
    .locals 2
    .parameter

    .prologue
    .line 322
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$6;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Z

    .line 324
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity$6;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-static {v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->c(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    .line 325
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity$6;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-static {v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->d(Lcom/facebook/orca/creation/CreateThreadActivity;)Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$6;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    iget-boolean v1, v1, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Z

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Z)V

    .line 326
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
