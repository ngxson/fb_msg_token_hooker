.class public abstract Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;
.super Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;
.source "AbstractContactPickerListFilter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;


# instance fields
.field protected a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

.field private b:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserIdentifierKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    .line 45
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    .line 28
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->c:Ljava/util/Set;

    .line 29
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 37
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->e()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    .line 54
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    invoke-interface {v1, p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V

    .line 55
    return-void
.end method

.method protected a(Lcom/facebook/orca/users/UserIdentifier;)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserIdentifier;->e()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
