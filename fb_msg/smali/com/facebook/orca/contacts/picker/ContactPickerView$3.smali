.class Lcom/facebook/orca/contacts/picker/ContactPickerView$3;
.super Ljava/lang/Object;
.source "ContactPickerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Z)V

    .line 152
    return-void
.end method
