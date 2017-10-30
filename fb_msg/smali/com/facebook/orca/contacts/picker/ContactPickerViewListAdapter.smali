.class public Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPickerViewListAdapter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;


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
.field private final b:Landroid/content/Context;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+",
            "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

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

.field private g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

.field private i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Landroid/view/LayoutInflater;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V
    .locals 1
    .parameter
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
            "Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 49
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Landroid/view/LayoutInflater;

    .line 59
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->e:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 60
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;

    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance p1, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;-><init>(Landroid/content/Context;)V

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V

    .line 235
    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    check-cast p2, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;

    .line 205
    if-nez p2, :cond_0

    .line 206
    new-instance p2, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;-><init>(Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-virtual {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 213
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, v1, :cond_1

    .line 214
    sget v1, Lcom/facebook/R$string;->add_person_by_email_auto_complete_text:I

    .line 215
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</b>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->setSpannedText(Landroid/text/Spanned;)V

    .line 224
    return-object p2

    .line 217
    :cond_1
    sget v1, Lcom/facebook/R$string;->add_person_by_phone_auto_complete_text:I

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->e:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    check-cast p2, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;

    .line 243
    if-nez p2, :cond_0

    .line 244
    new-instance p2, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;-><init>(Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-virtual {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->setText(Ljava/lang/String;)V

    .line 249
    return-object p2
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    check-cast p2, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;

    .line 257
    if-nez p2, :cond_0

    .line 258
    new-instance p2, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;-><init>(Landroid/content/Context;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-virtual {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V

    .line 262
    :cond_0
    return-object p2
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    check-cast p2, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;

    .line 192
    if-nez p2, :cond_0

    .line 193
    new-instance p2, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;-><init>(Landroid/content/Context;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-virtual {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V

    .line 196
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->setContactRow(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;)V

    .line 197
    return-object p2
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 266
    .line 267
    if-nez p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_contact_picker_new_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 270
    :cond_0
    return-object p1
.end method


# virtual methods
.method public synthetic a()Lcom/facebook/orca/common/ui/widgets/CustomFilter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    .line 66
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
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
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 72
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter$2;->a:[I

    invoke-virtual {p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b(Lcom/google/common/collect/ImmutableList;)V

    .line 94
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->e()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

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
    .line 107
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 108
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-interface {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 123
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    .line 125
    :cond_0
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_1

    .line 126
    const/4 v0, 0x2

    goto :goto_0

    .line 127
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->b:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_2

    .line 128
    const/4 v0, 0x5

    goto :goto_0

    .line 129
    :cond_2
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    if-eqz v1, :cond_3

    .line 130
    const/4 v0, 0x3

    goto :goto_0

    .line 131
    :cond_3
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterRow;

    if-eqz v1, :cond_4

    .line 132
    const/4 v0, 0x4

    goto :goto_0

    .line 133
    :cond_4
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_5

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_5
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
    .line 172
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 173
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 175
    :cond_0
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_1

    .line 176
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->b:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_2

    .line 178
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    if-eqz v1, :cond_3

    .line 180
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_3
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterRow;

    if-eqz v1, :cond_4

    .line 182
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_4
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_5

    .line 184
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_5
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
    .line 117
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    instance-of v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
