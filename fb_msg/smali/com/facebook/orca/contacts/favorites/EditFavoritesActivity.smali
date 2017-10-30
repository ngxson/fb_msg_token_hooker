.class public Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "EditFavoritesActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Lcom/facebook/widget/DragSortListView$DropListener;

.field n:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

.field private p:Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

.field private q:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

.field private r:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private s:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private t:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

.field private u:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

.field private w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

.field private x:Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    sput-object v0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->o:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->A:Z

    .line 194
    new-instance v0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$4;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$4;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->B:Lcom/facebook/widget/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->u:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->k()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/users/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->b(Lcom/facebook/orca/users/User;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    .line 182
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->z:Ljava/util/List;

    .line 183
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->n()V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->g()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->a(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->p()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->s:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "update_favorites_failed"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 330
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->save_favorites_failed:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$7;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 339
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->s:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "update_favorites_success"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 316
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 318
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->q:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->A:Z

    .line 322
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->finish()V

    .line 323
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;)V
    .locals 3
    .parameter

    .prologue
    .line 217
    new-instance v0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$5;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/users/User;)V

    .line 233
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    sget v2, Lcom/facebook/R$string;->favorites_delete_contact_prompt:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->dialog_yes:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->dialog_no:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 238
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;Lcom/facebook/orca/users/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->a(Lcom/facebook/orca/users/User;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/users/User;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->m()V

    .line 244
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->n()V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 248
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->x:Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;->getFirstVisiblePosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->x:Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;->smoothScrollToPosition(I)V

    .line 251
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->m()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->n()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)Lcom/facebook/orca/ops/DialogBasedProgressIndicator;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->v:Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->g()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 148
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$3;

    invoke-direct {v3, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$3;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->a(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 172
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->A:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->o()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->finish()V

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->A:Z

    .line 264
    return-void
.end method

.method private n()V
    .locals 8

    .prologue
    .line 267
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 269
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v3

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->d:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 276
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v4, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    invoke-direct {v4, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;-><init>(Lcom/facebook/orca/users/User;)V

    .line 278
    new-instance v0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$6;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$6;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    invoke-virtual {v4, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;->a(Lcom/facebook/orca/contacts/favorites/FavoriteContactRow$DeletePersonOnClickListener;)V

    .line 285
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->z:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 290
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 291
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 293
    if-nez v1, :cond_2

    .line 294
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->c:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 295
    const/4 v1, 0x1

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->n:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    new-instance v6, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-interface {v5, v6}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_3
    move v0, v1

    move v1, v0

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->p:Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 306
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->p:Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->notifyDataSetChanged()V

    .line 309
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->s:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "update_favorites"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "favorite_count"

    iget-object v3, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    const-string v1, "favorites"

    new-instance v2, Lcom/facebook/orca/server/UpdateFavoriteContactsParams;

    iget-object v3, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/facebook/orca/server/UpdateFavoriteContactsParams;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->t:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v2, "update_favorite_contacts"

    invoke-virtual {v1, v2, v0, p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->u:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->u:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$8;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 368
    new-instance v0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v1, Lcom/facebook/R$string;->updating_favorites:I

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->v:Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    .line 369
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->v:Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->a()V

    .line 370
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 83
    sget v0, Lcom/facebook/R$layout;->orca_edit_favorites:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 86
    const-class v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->q:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    .line 87
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->r:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 88
    const-class v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->p:Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    .line 89
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->t:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 90
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->s:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 93
    new-instance v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->p:Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    new-instance v1, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$1;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;->setOnDoneClickedListener(Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView$OnDoneClickedListener;)V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    sget v1, Lcom/facebook/R$string;->name_search_hint:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;->setSearchHint(Ljava/lang/String;)V

    .line 104
    sget v0, Lcom/facebook/R$id;->picker_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    new-instance v0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity$2;-><init>(Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->n:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->p:Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->n:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->w:Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditPickerView;->getDraggableList()Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->x:Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->x:Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->B:Lcom/facebook/widget/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/FavoritesDragSortListView;->setDropListener(Lcom/facebook/widget/DragSortListView$DropListener;)V

    .line 131
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->q:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->q:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->r:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->z:Ljava/util/List;

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->n()V

    .line 143
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->j()V

    .line 144
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-string v0, "edit_messaging_favorites"

    return-object v0
.end method

.method public i()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 256
    new-instance v3, Lcom/facebook/orca/users/PickedUser;

    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
