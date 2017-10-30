.class public Lcom/facebook/contacts/contactcard/MapSectionView;
.super Lcom/facebook/widget/CustomLinearLayout;
.source "MapSectionView.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/facebook/widget/MapImage;

.field private f:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/MapSectionView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 50
    const-class v1, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->a:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->setOrientation(I)V

    .line 53
    sget v0, Lcom/facebook/R$layout;->contacts_map_section_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->setContentView(I)V

    .line 54
    sget v0, Lcom/facebook/R$id;->contacts_map_label_wrapper:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->b:Landroid/view/View;

    .line 55
    sget v0, Lcom/facebook/R$id;->contacts_map_image_wrapper:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->c:Landroid/view/View;

    .line 58
    sget v0, Lcom/facebook/R$id;->contacts_map_last_shared:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->d:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/facebook/R$id;->contacts_map_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/MapImage;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    .line 61
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage;->setZoom(I)V

    .line 63
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    new-instance v1, Lcom/facebook/contacts/contactcard/MapSectionView$1;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/MapSectionView$1;-><init>(Lcom/facebook/contacts/contactcard/MapSectionView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/MapSectionView;)Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->f:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    .line 138
    iget-object v2, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->a:Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/MapSectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->contact_card_map_last_shared:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method private setMapVisibility(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 144
    iget-object v3, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 145
    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/users/UserKey;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 81
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    .line 82
    invoke-virtual {p2, v3}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    :goto_0
    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, v4}, Lcom/facebook/contacts/contactcard/MapSectionView;->setMapVisibility(Z)V

    .line 90
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    invoke-virtual {v1, v4}, Lcom/facebook/widget/MapImage;->setKeepMarkerAtCenter(Z)V

    .line 91
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    invoke-virtual {v1}, Lcom/facebook/widget/MapImage;->a()V

    .line 93
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/location/Coordinates;->a()Landroid/location/Location;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    invoke-virtual {v2, v1}, Lcom/facebook/widget/MapImage;->setCenter(Landroid/location/Location;)V

    .line 95
    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->a(Lcom/facebook/orca/threads/Message;)V

    .line 99
    :goto_1
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->setMapVisibility(Z)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->f:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    .line 75
    return-void
.end method

.method public setGroupMessages(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 106
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    .line 107
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 111
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/MapSectionView;->setMapVisibility(Z)V

    .line 117
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    invoke-virtual {v0}, Lcom/facebook/widget/MapImage;->a()V

    .line 118
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    invoke-virtual {v0, v5}, Lcom/facebook/widget/MapImage;->setKeepMarkerAtCenter(Z)V

    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 122
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_2

    .line 124
    iget-object v4, p0, Lcom/facebook/contacts/contactcard/MapSectionView;->e:Lcom/facebook/widget/MapImage;

    invoke-virtual {v3}, Lcom/facebook/orca/location/Coordinates;->a()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/facebook/widget/MapImage;->a(Landroid/location/Location;)V

    .line 126
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    :cond_3
    :goto_2
    move-object v1, v0

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-direct {p0, v1}, Lcom/facebook/contacts/contactcard/MapSectionView;->a(Lcom/facebook/orca/threads/Message;)V

    .line 134
    :goto_3
    return-void

    .line 132
    :cond_5
    invoke-direct {p0, v5}, Lcom/facebook/contacts/contactcard/MapSectionView;->setMapVisibility(Z)V

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method
