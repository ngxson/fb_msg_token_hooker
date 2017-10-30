.class public Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ContactPickerSectionHeaderView.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->a:Landroid/content/Context;

    .line 35
    sget v0, Lcom/facebook/R$layout;->orca_contact_picker_section_header:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->setContentView(I)V

    .line 36
    sget v0, Lcom/facebook/R$id;->contact_picker_section_header:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->b:Landroid/view/View;

    .line 37
    sget v0, Lcom/facebook/R$id;->contact_picker_section_header_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->c:Landroid/widget/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->b:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->default_contacts_section_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->c:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->default_contacts_section_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->b:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->divebar_section_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->c:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->divebar_section_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
