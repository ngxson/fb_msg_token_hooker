.class public Lcom/facebook/contacts/contactcard/SectionView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "SectionView.java"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/SectionView;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/SectionView;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/SectionView;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/facebook/R$layout;->contacts_section_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/SectionView;->setContentView(I)V

    .line 40
    sget v0, Lcom/facebook/R$id;->row_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/SectionView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/SectionView;->b:Landroid/view/ViewGroup;

    .line 41
    sget v0, Lcom/facebook/R$id;->entry_section_root:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/SectionView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/SectionView;->a:Landroid/widget/FrameLayout;

    .line 42
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/SectionView;->b()V

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/contacts/contactcard/SectionView;->a(Landroid/view/View;Z)V

    .line 63
    return-void
.end method

.method protected a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/SectionView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 52
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/SectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/SectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 54
    sget v2, Lcom/facebook/R$layout;->contacts_horiz_divider:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/SectionView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/SectionView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/SectionView;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 59
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/SectionView;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/SectionView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    return-void
.end method
