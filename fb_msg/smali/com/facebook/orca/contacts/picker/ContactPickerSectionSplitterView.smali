.class public Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ContactPickerSectionSplitterView.java"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget v0, Lcom/facebook/R$layout;->orca_contact_picker_section_splitter:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->setContentView(I)V

    .line 32
    sget v0, Lcom/facebook/R$id;->contact_picker_section_header:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->a:Landroid/view/View;

    .line 33
    return-void
.end method


# virtual methods
.method public setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
    .locals 4
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->a:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->default_contacts_section_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionSplitterView;->a:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->divebar_section_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
