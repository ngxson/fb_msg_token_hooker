.class Lcom/facebook/orca/contacts/picker/ContactPickerFragment$2;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->E()V

    .line 116
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    return-void
.end method
