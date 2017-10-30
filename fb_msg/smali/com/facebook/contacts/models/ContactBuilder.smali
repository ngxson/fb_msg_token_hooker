.class public Lcom/facebook/contacts/models/ContactBuilder;
.super Ljava/lang/Object;
.source "ContactBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/orca/users/Name;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/EntrySection;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:Ljava/lang/String;

.field private m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/ContactPhone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->h:Lcom/google/common/collect/ImmutableList;

    .line 30
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->m:Lcom/google/common/collect/ImmutableList;

    .line 31
    return-void
.end method


# virtual methods
.method public a(F)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->k:F

    .line 125
    return-object p0
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/EntrySection;",
            ">;)",
            "Lcom/facebook/contacts/models/ContactBuilder;"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->h:Lcom/google/common/collect/ImmutableList;

    .line 98
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->a:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/ContactPhone;",
            ">;)",
            "Lcom/facebook/contacts/models/ContactBuilder;"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->m:Lcom/google/common/collect/ImmutableList;

    .line 143
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->b:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->d:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public c()Lcom/facebook/orca/users/Name;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->c:Lcom/facebook/orca/users/Name;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->e:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->f:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->g:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->i:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public g()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/EntrySection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->h:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->j:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->l:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->k:F

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/ContactPhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->m:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public m()Lcom/facebook/contacts/models/Contact;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/facebook/contacts/models/Contact;

    invoke-direct {v0, p0}, Lcom/facebook/contacts/models/Contact;-><init>(Lcom/facebook/contacts/models/ContactBuilder;)V

    return-object v0
.end method
