.class Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$2;
.super Ljava/lang/Object;
.source "ContactPickerMergedFilter.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

.field final synthetic b:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$2;->b:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;

    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 160
    return-void
.end method

.method public a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 4
    .parameter

    .prologue
    .line 164
    invoke-static {}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Received friends filtering state: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$2;->b:Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;)V

    .line 167
    return-void
.end method
