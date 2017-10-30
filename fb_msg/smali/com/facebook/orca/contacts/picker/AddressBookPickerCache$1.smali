.class Lcom/facebook/orca/contacts/picker/AddressBookPickerCache$1;
.super Landroid/database/ContentObserver;
.source "AddressBookPickerCache.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache$1;->a:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache$1;->a:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->b()V

    .line 36
    return-void
.end method
