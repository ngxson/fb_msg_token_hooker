.class Lcom/facebook/contacts/contactcard/ContactCardFragment$3;
.super Ljava/lang/Object;
.source "ContactCardFragment.java"

# interfaces
.implements Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;


# instance fields
.field final synthetic a:Lcom/facebook/contacts/contactcard/ContactCardFragment;


# direct methods
.method constructor <init>(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment$3;->a:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/contacts/models/entry/Entry;)V
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment$3;->a:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-static {v0, p1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/facebook/contacts/models/entry/Entry;)V

    .line 366
    return-void
.end method
