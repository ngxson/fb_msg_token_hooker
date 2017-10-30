.class Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$2;
.super Ljava/lang/Object;
.source "EditFavoritesActivity.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$2;->a:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;
    .locals 2
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;-><init>(Lcom/facebook/orca/users/User;)V

    .line 112
    new-instance v1, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$2$1;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;->a(Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow$AddContactOnClickListener;)V

    .line 121
    return-object v0
.end method
