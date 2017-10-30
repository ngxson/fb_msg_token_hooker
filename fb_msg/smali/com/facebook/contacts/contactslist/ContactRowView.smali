.class public Lcom/facebook/contacts/contactslist/ContactRowView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ContactRowView.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private final d:Landroid/widget/ImageView;

.field private e:Lcom/facebook/contacts/models/Contact;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactslist/ContactRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/contacts/contactslist/ContactRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget v0, Lcom/facebook/R$layout;->contacts_list_row:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactslist/ContactRowView;->setContentView(I)V

    .line 43
    sget v0, Lcom/facebook/R$id;->contact_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactslist/ContactRowView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->a:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/facebook/R$id;->contact_status:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactslist/ContactRowView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->b:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/facebook/R$id;->contact_user_tile_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactslist/ContactRowView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 46
    sget v0, Lcom/facebook/R$id;->contact_indicator:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactslist/ContactRowView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->d:Landroid/widget/ImageView;

    .line 47
    return-void
.end method


# virtual methods
.method public setContact(Lcom/facebook/contacts/models/Contact;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->e:Lcom/facebook/contacts/models/Contact;

    .line 51
    iget-object v0, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->c()Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    iget-object v1, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->e:Lcom/facebook/contacts/models/Contact;

    invoke-static {v1}, Lcom/facebook/contacts/models/ContactUserKey;->a(Lcom/facebook/contacts/models/Contact;)Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/contacts/contactslist/ContactRowView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    return-void
.end method
