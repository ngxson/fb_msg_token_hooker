.class Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$6;
.super Ljava/lang/Object;
.source "EditFavoritesActivity.java"

# interfaces
.implements Lcom/facebook/orca/contacts/favorites/FavoriteContactRow$DeletePersonOnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$6;->a:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/User;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$6;->a:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->b(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/users/User;)V

    .line 283
    return-void
.end method
