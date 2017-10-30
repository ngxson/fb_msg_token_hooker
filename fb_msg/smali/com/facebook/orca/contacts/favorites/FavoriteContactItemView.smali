.class public Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;
.super Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView$DraggableRowView;
.source "FavoriteContactItemView.java"


# instance fields
.field private b:Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Lcom/facebook/orca/photos/tiles/UserTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView$DraggableRowView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;)Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->b:Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    sget v0, Lcom/facebook/R$layout;->orca_favorites_list_row:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->setContentView(I)V

    .line 44
    sget v0, Lcom/facebook/R$id;->contact_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->c:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/facebook/R$id;->contact_user_tile_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->e:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 46
    sget v0, Lcom/facebook/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->d:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 48
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->b:Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->e:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 62
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->d:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView$1;-><init>(Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getContactRow()Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->b:Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    return-object v0
.end method

.method public getInnerRow()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setContactRow(Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->b:Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->b()V

    .line 57
    return-void
.end method
