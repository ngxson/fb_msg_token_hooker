.class public Lcom/facebook/orca/contacts/picker/ContactPickerFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ContactPickerFragment.java"


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
.field private Y:Landroid/widget/AutoCompleteTextView;

.field private Z:Landroid/widget/TextView;

.field private aa:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private ac:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

.field private b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

.field private c:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

.field private d:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->ac:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-direct {v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;-><init>(Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 262
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->g(I)V

    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->ac:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->g:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;

    if-eqz v0, :cond_0

    .line 199
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->ac:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->g:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;

    invoke-interface {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;->a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 202
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/users/PickedUser;)V
    .locals 4
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->c(Lcom/facebook/orca/users/PickedUser;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->c:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;->a(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_0

    .line 229
    iget v3, v2, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;->a:I

    iget v2, v2, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;->b:I

    invoke-interface {v1, v3, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 231
    :cond_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 232
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->E()V

    .line 233
    return-void
.end method

.method private c(Lcom/facebook/orca/users/PickedUser;)Ljava/lang/CharSequence;
    .locals 7
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 244
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 245
    new-instance v3, Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->d:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->e:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/facebook/orca/contacts/picker/PickedUserSpan;-><init>(Lcom/facebook/orca/users/PickedUser;Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 251
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 252
    const/16 v4, 0x21

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 253
    return-object v1
.end method

.method private g(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0, p1}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 206
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v1, :cond_1

    .line 207
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 208
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/facebook/orca/users/PickedUser;

    invoke-direct {v1, v0, v5}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    .line 212
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->ab:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    move-result-object v0

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a(I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    new-instance v3, Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v5, v0}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 219
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 220
    new-instance v0, Lcom/facebook/orca/users/PickedUser;

    invoke-direct {v0, v2, v5}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    goto :goto_0
.end method


# virtual methods
.method E()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->aa:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->aa:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->aa:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 184
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v1}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 195
    :goto_1
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    goto :goto_1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 87
    sget v0, Lcom/facebook/R$layout;->orca_contact_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->h:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->h:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->contact_picker_heading:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->i:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->h:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->contact_picker_autocomplete_input:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->h:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->contact_picker_warning:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Z:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 74
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->c:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    .line 75
    const-class v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->ab:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 76
    new-instance v0, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->d:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    .line 77
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    sget v1, Lcom/facebook/R$drawable;->token_field:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->e:Landroid/graphics/drawable/Drawable;

    .line 79
    sget v1, Lcom/facebook/R$drawable;->token_field:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->f:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-ne p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 163
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;->CREATE_THREAD:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->i:Landroid/widget/TextView;

    sget v1, Lcom/facebook/R$string;->contact_picker_to_heading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Z:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->i:Landroid/widget/TextView;

    sget v1, Lcom/facebook/R$string;->contact_picker_add_heading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Z:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->g:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;

    .line 143
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 138
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->F()V

    .line 139
    return-void
.end method

.method public a(Lcom/facebook/orca/users/PickedUser;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    .line 129
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->aa:Lcom/google/common/collect/ImmutableList;

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public b()Lcom/google/common/collect/ImmutableList;
    .locals 5
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
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    .line 168
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 169
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 170
    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a()Lcom/facebook/orca/users/PickedUser;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->ac:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Y:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    return-void
.end method

.method public v()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 124
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->F()V

    .line 125
    return-void
.end method
