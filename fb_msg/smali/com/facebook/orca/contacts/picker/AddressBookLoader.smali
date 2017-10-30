.class public Lcom/facebook/orca/contacts/picker/AddressBookLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "AddressBookLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/BuiltInContactsUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

.field private h:Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/BuiltInContactsUserIterator;",
            ">;",
            "Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->f:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->g:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    .line 37
    return-void
.end method

.method private v()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "getContacts"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 99
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;

    .line 102
    invoke-virtual {v0}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a()V

    .line 104
    :try_start_0
    const-string v3, "#fetch"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {v4}, Lcom/facebook/orca/users/User;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b()V

    throw v1

    .line 111
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-virtual {v0}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b()V

    .line 115
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 116
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->f()Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;
    .locals 3

    .prologue
    .line 87
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 88
    const-string v0, "loadContactsOnWorkerThread"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->v()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->g:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 92
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 93
    const-string v0, "orca:AddressBookLoader"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->c(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->g()V

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->h:Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->h:Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->b(Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->g:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    new-instance v1, Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    invoke-direct {v1, v0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->h:Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->h:Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->b(Ljava/lang/Object;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->h:Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->o()V

    .line 71
    :cond_2
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->h()V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->b()Z

    .line 77
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->h()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;->h:Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;

    .line 83
    return-void
.end method
