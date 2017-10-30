.class public Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ContactPickerFavoritesSectionHeaderView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->a:Landroid/content/Context;

    .line 39
    sget v0, Lcom/facebook/R$layout;->orca_favorites_contact_picker_section_header:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->setContentView(I)V

    .line 40
    sget v0, Lcom/facebook/R$id;->contact_picker_section_header:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->b:Landroid/view/View;

    .line 41
    sget v0, Lcom/facebook/R$id;->contact_picker_section_header_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->c:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/facebook/R$id;->edit_favorites_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->d:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->d:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/contacts/favorites/EditFavoritesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->a()V

    return-void
.end method


# virtual methods
.method public setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->b:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->default_contacts_section_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->c:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->default_contacts_section_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$color;->default_contacts_section_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->b:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->divebar_section_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->c:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->divebar_section_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFavoritesSectionHeaderView;->d:Landroid/widget/Button;

    sget v2, Lcom/facebook/R$color;->divebar_section_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
