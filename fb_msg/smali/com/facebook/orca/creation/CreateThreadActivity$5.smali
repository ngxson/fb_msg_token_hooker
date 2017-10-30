.class Lcom/facebook/orca/creation/CreateThreadActivity$5;
.super Ljava/lang/Object;
.source "CreateThreadActivity.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;


# instance fields
.field final synthetic a:Lcom/facebook/orca/creation/CreateThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$5;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;
    .locals 3
    .parameter

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 263
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$5;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-static {v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(Lcom/facebook/orca/creation/CreateThreadActivity;)Lcom/facebook/orca/presence/PresenceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;)Z

    move-result v0

    .line 265
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 274
    :cond_0
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    goto :goto_0
.end method
