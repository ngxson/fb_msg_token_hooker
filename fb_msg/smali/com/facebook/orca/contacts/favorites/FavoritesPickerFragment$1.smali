.class Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment$1;
.super Ljava/lang/Object;
.source "FavoritesPickerFragment.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment$1;->a:Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;
    .locals 2
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    .line 69
    return-object v0
.end method
