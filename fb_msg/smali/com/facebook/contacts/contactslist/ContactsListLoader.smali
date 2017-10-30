.class public Lcom/facebook/contacts/contactslist/ContactsListLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ContactsListLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Lcom/facebook/contacts/iterator/DbContactIteratorFactory;

.field private h:Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/contacts/contactslist/ContactsListLoader;

    sput-object v0, Lcom/facebook/contacts/contactslist/ContactsListLoader;->f:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/contacts/iterator/DbContactIteratorFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcom/facebook/contacts/contactslist/ContactsListLoader;->g:Lcom/facebook/contacts/iterator/DbContactIteratorFactory;

    .line 54
    return-void
.end method

.method private v()Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/contacts/contactslist/ContactsListLoader;->w()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;

    invoke-direct {v1, v0}, Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method private w()Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/contacts/contactslist/ContactsListLoader;->g:Lcom/facebook/contacts/iterator/DbContactIteratorFactory;

    invoke-virtual {v0}, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;->a()Lcom/facebook/contacts/iterator/DbContactIterator;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 91
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/contacts/iterator/DbContactIterator;->a()Lcom/facebook/contacts/models/Contact;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/contacts/iterator/DbContactIterator;->close()V

    .line 96
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/facebook/contacts/contactslist/ContactsListLoader;->f()Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/contacts/contactslist/ContactsListLoader;->v()Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->g()V

    .line 59
    iget-object v0, p0, Lcom/facebook/contacts/contactslist/ContactsListLoader;->h:Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/contacts/contactslist/ContactsListLoader;->h:Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactslist/ContactsListLoader;->b(Ljava/lang/Object;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactslist/ContactsListLoader;->h:Lcom/facebook/contacts/contactslist/ContactsListLoader$Result;

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/facebook/contacts/contactslist/ContactsListLoader;->o()V

    .line 67
    :cond_1
    return-void
.end method
