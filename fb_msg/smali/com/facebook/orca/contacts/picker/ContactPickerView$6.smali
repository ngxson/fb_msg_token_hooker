.class Lcom/facebook/orca/contacts/picker/ContactPickerView$6;
.super Ljava/lang/Object;
.source "ContactPickerView.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$6;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$6;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c(Lcom/facebook/orca/contacts/picker/ContactPickerView;I)V

    .line 182
    return-void
.end method

.method public a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$6;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 187
    return-void
.end method
