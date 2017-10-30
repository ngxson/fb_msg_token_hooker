.class public Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ContactPickerAddPhoneOrEmailView.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget v0, Lcom/facebook/R$layout;->orca_contact_picker_additional_list_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->setContentView(I)V

    .line 33
    sget v0, Lcom/facebook/R$id;->contact_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->a:Landroid/view/View;

    .line 34
    sget v0, Lcom/facebook/R$id;->additional_text_field:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->b:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/facebook/R$id;->contact_divider:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->c:Landroid/view/View;

    .line 36
    return-void
.end method


# virtual methods
.method public setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
    .locals 4
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->b:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->default_contacts_section_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->c:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/facebook/R$drawable;->default_separator_color:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->a:Landroid/view/View;

    sget v2, Lcom/facebook/R$drawable;->divebar_contact_bg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->b:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->divebar_contact_name_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->c:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->divebar_contact_divider:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSpannedText(Landroid/text/Spanned;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
