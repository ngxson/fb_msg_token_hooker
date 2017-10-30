.class Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment$1;
.super Ljava/lang/Object;
.source "FacebookFriendPickerFragment.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment$1;->a:Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment$1;->a:Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->a(Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    return-object v0
.end method
