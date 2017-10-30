.class public Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoritesEditListAdapter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;
.implements Lcom/facebook/widget/DragSortListView$DragSortListAdapter;


# static fields
.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/view/LayoutInflater;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+",
            "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

.field private h:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    sput-object v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<+",
            "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->e:Lcom/google/common/collect/ImmutableList;

    .line 41
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 45
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->i:I

    .line 59
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->d:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->b:Landroid/view/LayoutInflater;

    .line 62
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;

    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance p1, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;-><init>(Landroid/content/Context;)V

    .line 155
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V

    .line 158
    :cond_0
    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    if-eqz p2, :cond_0

    .line 146
    :goto_0
    return-object p2

    :cond_0
    new-instance p2, Lcom/facebook/orca/contacts/favorites/NoFavoriteContactsItemView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/favorites/NoFavoriteContactsItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p2, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactItemView;

    .line 133
    if-nez p2, :cond_0

    .line 134
    new-instance p2, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactItemView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactItemView;-><init>(Landroid/content/Context;)V

    .line 136
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactItemView;->setContactRow(Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;)V

    .line 138
    return-object p2
.end method

.method private a(Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    check-cast p2, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;

    .line 122
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    new-instance p2, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;-><init>(Landroid/content/Context;)V

    .line 125
    :cond_1
    invoke-virtual {p2, p1}, Lcom/facebook/orca/contacts/favorites/FavoriteContactItemView;->setContactRow(Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;)V

    .line 127
    return-object p2
.end method


# virtual methods
.method public synthetic a()Lcom/facebook/orca/common/ui/widgets/CustomFilter;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    .line 254
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->e:Lcom/google/common/collect/ImmutableList;

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->e:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->notifyDataSetChanged()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->i:I

    .line 71
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 72
    instance-of v0, v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->i:I

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter$2;->a:[I

    invoke-virtual {p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->b(Lcom/google/common/collect/ImmutableList;)V

    .line 229
    :goto_0
    return-void

    .line 219
    :pswitch_0
    invoke-virtual {p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->b(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->e()V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->d:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method b(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 180
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->notifyDataSetChanged()V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->i:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-interface {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->e:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->notifyDataSetChanged()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter$1;-><init>(Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 116
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 91
    instance-of v1, v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    if-eqz v1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_0
    instance-of v1, v0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;

    if-eqz v1, :cond_1

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->c:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_2

    .line 96
    const/4 v0, 0x3

    goto :goto_0

    .line 97
    :cond_2
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->d:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_3

    .line 98
    const/4 v0, 0x2

    goto :goto_0

    .line 100
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 165
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->d:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0, p3, p2}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 167
    :cond_0
    instance-of v1, v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    if-eqz v1, :cond_1

    .line 168
    check-cast v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a(Lcom/facebook/orca/contacts/favorites/FavoriteContactRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;

    if-eqz v1, :cond_2

    .line 170
    check-cast v0, Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a(Lcom/facebook/orca/contacts/favorites/AddFavoriteContactRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_2
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->c:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_3

    .line 172
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x4

    return v0
.end method
