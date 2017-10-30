.class Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;
.super Ljava/lang/Object;
.source "GroupContactCardFragment.java"

# interfaces
.implements Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;


# instance fields
.field final synthetic a:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;


# direct methods
.method constructor <init>(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;->a:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;->a:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;->a:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-static {v2}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;->a:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public a(Lcom/facebook/orca/users/UserKey;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;->a:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-static {v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;->a:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-static {v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;->a(Lcom/facebook/orca/users/UserKey;)V

    .line 83
    :cond_0
    return-void
.end method
