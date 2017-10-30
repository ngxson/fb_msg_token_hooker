.class Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;
.super Ljava/lang/Object;
.source "EditFavoritesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/users/User;

.field final synthetic b:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/users/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;->b:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    iput-object p2, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;->a:Lcom/facebook/orca/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    packed-switch p2, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;->b:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    invoke-static {v0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->c(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;->a:Lcom/facebook/orca/users/User;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;->b:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    invoke-static {v0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->d(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;->b:Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    invoke-static {v0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->e(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
