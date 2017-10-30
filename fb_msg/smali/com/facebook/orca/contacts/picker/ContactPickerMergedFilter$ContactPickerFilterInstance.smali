.class Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;
.super Ljava/lang/Object;
.source "ContactPickerMergedFilter.java"


# instance fields
.field private final a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

.field private e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->c:Z

    .line 71
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 95
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->d:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    .line 87
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->d:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    return-object v0
.end method

.method public d()Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    return-object v0
.end method
