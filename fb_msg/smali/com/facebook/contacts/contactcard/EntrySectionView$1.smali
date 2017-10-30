.class Lcom/facebook/contacts/contactcard/EntrySectionView$1;
.super Ljava/lang/Object;
.source "EntrySectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/contacts/contactcard/EntrySectionView;


# direct methods
.method constructor <init>(Lcom/facebook/contacts/contactcard/EntrySectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/EntrySectionView$1;->a:Lcom/facebook/contacts/contactcard/EntrySectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView$1;->a:Lcom/facebook/contacts/contactcard/EntrySectionView;

    invoke-static {v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->a(Lcom/facebook/contacts/contactcard/EntrySectionView;)Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/facebook/contacts/contactcard/entry/EntryView;

    invoke-virtual {p1}, Lcom/facebook/contacts/contactcard/entry/EntryView;->getEntry()Lcom/facebook/contacts/models/entry/Entry;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/EntrySectionView$1;->a:Lcom/facebook/contacts/contactcard/EntrySectionView;

    invoke-static {v1}, Lcom/facebook/contacts/contactcard/EntrySectionView;->a(Lcom/facebook/contacts/contactcard/EntrySectionView;)Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;->a(Lcom/facebook/contacts/models/entry/Entry;)V

    .line 46
    :cond_0
    return-void
.end method
