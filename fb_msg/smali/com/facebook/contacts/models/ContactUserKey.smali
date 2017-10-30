.class public Lcom/facebook/contacts/models/ContactUserKey;
.super Ljava/lang/Object;
.source "ContactUserKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/contacts/models/Contact;)Lcom/facebook/orca/users/UserKey;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    sget-object v1, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK_CONTACT:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lcom/facebook/contacts/models/Contact;)Lcom/google/common/collect/ImmutableCollection;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/contacts/models/Contact;",
            ")",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 41
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    new-instance v2, Lcom/facebook/orca/users/UserKey;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v2, v3, v1}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    new-instance v2, Lcom/facebook/orca/users/UserKey;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->FACEBOOK_CONTACT:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v2, v3, v1}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 39
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
