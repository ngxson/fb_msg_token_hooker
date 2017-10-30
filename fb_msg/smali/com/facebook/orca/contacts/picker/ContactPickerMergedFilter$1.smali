.class Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$1;
.super Ljava/lang/Object;
.source "ContactPickerMergedFilter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

.field final synthetic b:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$1;->b:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;

    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$1;->b:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
