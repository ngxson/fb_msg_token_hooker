.class public Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
.super Ljava/lang/Object;
.source "ContactPickerFilterResult.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    .line 71
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b:Ljava/lang/CharSequence;

    .line 72
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->EMPTY_CONSTRAINT:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)",
            "Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->OK:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 3
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->EXCEPTION:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "Constraints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_0

    .line 97
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
