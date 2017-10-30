.class public interface abstract Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;
.super Ljava/lang/Object;
.source "IContactPickerViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ListAdapter;
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilterable;
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;


# virtual methods
.method public abstract a(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
.end method

.method public abstract a(Lcom/google/common/collect/ImmutableList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
.end method

.method public abstract e()V
.end method
