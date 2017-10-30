.class Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$2;
.super Ljava/lang/Object;
.source "AddressBookPickerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$2;->a:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$2;->a:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/picker/AddressBookLoader;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/Loader;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;",
            ">;",
            "Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$2;->a:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    invoke-static {v0, p2}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a(Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;)V

    .line 146
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    check-cast p2, Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$2;->a(Landroid/support/v4/content/Loader;Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;)V

    return-void
.end method
