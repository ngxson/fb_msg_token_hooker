.class Lcom/facebook/orca/contacts/picker/FriendListPickerView$1;
.super Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;
.source "FriendListPickerView.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/FriendListPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView$1;->a:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView$1;->a:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Lcom/facebook/orca/contacts/picker/FriendListPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    .line 35
    return-void
.end method
