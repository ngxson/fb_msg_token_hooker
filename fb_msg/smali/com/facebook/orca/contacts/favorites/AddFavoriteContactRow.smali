.class public Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;
.super Ljava/lang/Object;
.source "AddFavoriteContactRow.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# instance fields
.field private final a:Lcom/facebook/orca/users/User;

.field private b:Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow$AddContactOnClickListener;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/User;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;->a:Lcom/facebook/orca/users/User;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;->a:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow$AddContactOnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;->b:Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow$AddContactOnClickListener;

    .line 30
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;->b:Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow$AddContactOnClickListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;->b:Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow$AddContactOnClickListener;

    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;->a:Lcom/facebook/orca/users/User;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow$AddContactOnClickListener;->a(Lcom/facebook/orca/users/User;)V

    .line 36
    :cond_0
    return-void
.end method
