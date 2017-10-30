.class public Lcom/facebook/contacts/data/ContactSerialization;
.super Ljava/lang/Object;
.source "ContactSerialization.java"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactSerialization;->a:Landroid/content/res/Resources;

    .line 33
    iput-object p2, p0, Lcom/facebook/contacts/data/ContactSerialization;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/contacts/models/Contact;
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/contacts/data/ContactSerialization;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/Contact;

    return-object v0
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/EntrySection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/entry/Entry;",
            ">;)",
            "Lcom/facebook/contacts/models/EntrySection;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/contacts/data/ContactSerialization;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->contact_card_contact_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/facebook/contacts/models/EntrySection;

    invoke-direct {v1, v0, p1}, Lcom/facebook/contacts/models/EntrySection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public a(Lcom/facebook/contacts/models/Contact;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/contacts/data/ContactSerialization;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
