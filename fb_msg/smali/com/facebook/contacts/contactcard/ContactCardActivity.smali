.class public Lcom/facebook/contacts/contactcard/ContactCardActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ContactCardActivity.java"


# instance fields
.field private n:Lcom/facebook/contacts/contactcard/ContactCardFragment;

.field private o:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/facebook/R$layout;->contacts_card:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 26
    const-class v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 28
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardActivity;->o:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/facebook/R$id;->contact_card_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardActivity;->n:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardActivity;->n:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/users/UserKey;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardActivity;->finish()V

    goto :goto_0
.end method
