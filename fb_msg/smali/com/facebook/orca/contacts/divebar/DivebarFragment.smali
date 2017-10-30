.class public Lcom/facebook/orca/contacts/divebar/DivebarFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "DivebarFragment.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private Y:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

.field private aa:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Lcom/facebook/orca/users/LastActiveHelper;

.field private ad:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private ah:J

.field private ai:J

.field private aj:Lcom/facebook/orca/contacts/divebar/DivebarFragment$FragmentListener;

.field private b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

.field private c:Lcom/facebook/orca/server/BackgroundRefreshRunner;

.field private d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

.field private e:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

.field private f:Lcom/facebook/orca/contacts/divebar/DivebarViewListener;

.field private g:Lcom/facebook/orca/presence/PresenceManager;

.field private h:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    sput-object v0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ah:J

    .line 97
    return-void
.end method

.method private E()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;-><init>(Lcom/facebook/orca/contacts/divebar/DivebarFragment;)V

    return-object v0
.end method

.method private F()V
    .locals 6

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->c()J

    move-result-wide v2

    .line 253
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-wide v4, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ah:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ae:Ljava/util/List;

    .line 257
    const/4 v0, 0x1

    .line 258
    iput-wide v2, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ah:J

    .line 263
    :goto_0
    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->I()V

    .line 266
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 291
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->E()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->a(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ai:J

    .line 297
    return-void
.end method

.method private I()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 337
    iget-object v3, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ae:Ljava/util/List;

    .line 338
    iget-object v4, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->af:Ljava/util/List;

    .line 339
    iget-object v5, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ag:Ljava/util/List;

    .line 341
    if-nez v4, :cond_0

    .line 342
    sget-object v0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a:Ljava/lang/Class;

    const-string v1, "Not updating list b/c friends aren\'t yet loaded."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v6

    .line 347
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v7

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->b:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 354
    if-eqz v3, :cond_2

    .line 355
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 356
    new-instance v9, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 358
    invoke-direct {p0, v9}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 359
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 363
    :cond_1
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    sget v9, Lcom/facebook/R$string;->favorites_section_title:I

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 368
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 369
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterRow;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterRow;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_3
    move v3, v1

    .line 372
    :goto_2
    const/16 v0, 0xf

    if-ge v3, v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 373
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 374
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 372
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 378
    :cond_4
    new-instance v8, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 380
    invoke-direct {p0, v8}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 381
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 385
    :cond_5
    if-eqz v5, :cond_8

    .line 386
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->Z:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 388
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 389
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 392
    if-nez v1, :cond_7

    .line 393
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v4, Lcom/facebook/R$string;->contact_picker_active_now_friends_header:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v4, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {v4, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v1, v2

    .line 398
    :cond_7
    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 401
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v0, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    sget-object v4, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    .line 408
    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_4

    .line 412
    :cond_8
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/divebar/DivebarFragment;Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
    .locals 5
    .parameter

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 423
    iget-object v1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->g:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;)Z

    move-result v1

    .line 424
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v2

    .line 425
    iget-object v3, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->g:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;

    move-result-object v3

    .line 427
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    sget-object v4, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->aa:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ac:Lcom/facebook/orca/users/LastActiveHelper;

    sget-object v1, Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;->SHORT:Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/orca/users/LastActiveHelper;->a(Lcom/facebook/orca/users/LastActive;Lcom/facebook/orca/presence/PresenceState;Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    .line 446
    :goto_1
    return-object v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    :cond_1
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/divebar/DivebarFragment;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 300
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 309
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->af:Ljava/util/List;

    move v0, v1

    .line 313
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 314
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ag:Ljava/util/List;

    move v3, v1

    .line 318
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ae:Ljava/util/List;

    move v3, v1

    .line 323
    :cond_2
    if-eqz v3, :cond_3

    .line 324
    invoke-direct {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->I()V

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->af:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ag:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->a(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->p()V

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 121
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ab:Ljavax/inject/Provider;

    .line 122
    const-class v2, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ab:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/facebook/orca/annotations/ForDivebarList;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->e:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->e:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->e:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ad:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    .line 126
    new-instance v0, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->e:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->f:Lcom/facebook/orca/contacts/divebar/DivebarViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/divebar/DivebarViewListener;)V

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ab:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    sget v1, Lcom/facebook/R$string;->name_or_phone_search_hint:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->setSearchHint(Ljava/lang/String;)V

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    return-object v0

    .line 122
    :cond_0
    const-class v0, Lcom/facebook/orca/annotations/ForFacebookList;

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    sget v1, Lcom/facebook/R$string;->name_search_hint:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->setSearchHint(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 108
    new-instance v0, Lcom/facebook/orca/contacts/divebar/DivebarFragment$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment$1;-><init>(Lcom/facebook/orca/contacts/divebar/DivebarFragment;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ad:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    .line 114
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/divebar/DivebarFragment$FragmentListener;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->aj:Lcom/facebook/orca/contacts/divebar/DivebarFragment$FragmentListener;

    .line 103
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/divebar/DivebarViewListener;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->f:Lcom/facebook/orca/contacts/divebar/DivebarViewListener;

    .line 270
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->f:Lcom/facebook/orca/contacts/divebar/DivebarViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/divebar/DivebarViewListener;)V

    .line 273
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ae:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->af:Ljava/util/List;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->b()V

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ai:J

    sub-long/2addr v1, v3

    .line 221
    invoke-virtual {v0, v5}, Landroid/support/v4/app/LoaderManager;->a(I)Landroid/support/v4/content/Loader;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/support/v4/app/LoaderManager;->a(I)Landroid/support/v4/content/Loader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/content/Loader;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 224
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->E()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v4/app/LoaderManager;->b(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ai:J

    .line 231
    :cond_4
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->a()V

    .line 451
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 144
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->c:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    .line 145
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 146
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->g:Lcom/facebook/orca/presence/PresenceManager;

    .line 147
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->h:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 148
    const-class v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    .line 149
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsFavoriteContactsEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->Y:Ljavax/inject/Provider;

    .line 151
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->aa:Ljavax/inject/Provider;

    .line 152
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/LastActiveHelper;

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ac:Lcom/facebook/orca/users/LastActiveHelper;

    .line 154
    new-instance v0, Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/UserComparatorByName;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->Z:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b()V

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ae:Ljava/util/List;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->h:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->af:Ljava/util/List;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->h:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 175
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->ag:Ljava/util/List;

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->d:Lcom/facebook/orca/contacts/divebar/DivebarPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/divebar/DivebarPickerView;->b()V

    .line 180
    invoke-direct {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->I()V

    .line 181
    invoke-direct {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->H()V

    .line 182
    return-void
.end method

.method public v()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 236
    invoke-direct {p0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->F()V

    .line 237
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->aj:Lcom/facebook/orca/contacts/divebar/DivebarFragment$FragmentListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->aj:Lcom/facebook/orca/contacts/divebar/DivebarFragment$FragmentListener;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment$FragmentListener;->a()V

    .line 246
    :cond_0
    return-void
.end method
