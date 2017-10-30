.class public Lcom/facebook/orca/contacts/favorites/NoFavoriteContactsItemView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "NoFavoriteContactsItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/NoFavoriteContactsItemView;->a(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    sget v0, Lcom/facebook/R$layout;->orca_no_favorites_row:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/NoFavoriteContactsItemView;->setContentView(I)V

    .line 33
    return-void
.end method
