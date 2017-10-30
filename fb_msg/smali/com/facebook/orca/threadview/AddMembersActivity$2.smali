.class Lcom/facebook/orca/threadview/AddMembersActivity$2;
.super Ljava/lang/Object;
.source "AddMembersActivity.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/AddMembersActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/orca/threadview/AddMembersActivity$2;->a:Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;
    .locals 3
    .parameter

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity$2;->a:Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-static {v1}, Lcom/facebook/orca/threadview/AddMembersActivity;->b(Lcom/facebook/orca/threadview/AddMembersActivity;)Lcom/facebook/orca/presence/PresenceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;)Z

    move-result v0

    .line 122
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

    .line 129
    return-object v0
.end method
