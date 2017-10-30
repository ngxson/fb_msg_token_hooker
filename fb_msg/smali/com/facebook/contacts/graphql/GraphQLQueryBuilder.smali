.class public Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
.super Ljava/lang/Object;
.source "GraphQLQueryBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/contacts/graphql/GraphQLQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->e:Lcom/google/common/collect/ImmutableList$Builder;

    .line 20
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->d:Lcom/google/common/collect/ImmutableList$Builder;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->e:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 43
    return-object p0
.end method

.method public a(Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->d:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 72
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;

    invoke-direct {v0, p1, p2}, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->b:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 1
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    invoke-direct {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/graphql/GraphQLQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->e:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->d:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/facebook/contacts/graphql/GraphQLQuery;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/contacts/graphql/GraphQLQuery;

    invoke-direct {v0, p0}, Lcom/facebook/contacts/graphql/GraphQLQuery;-><init>(Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;)V

    return-object v0
.end method
