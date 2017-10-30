.class public Lcom/facebook/contacts/graphql/GraphQLQuery;
.super Ljava/lang/Object;
.source "GraphQLQuery.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/graphql/GraphQLQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->c:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->d:Lcom/google/common/collect/ImmutableList;

    .line 42
    invoke-virtual {p1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->e:Lcom/google/common/collect/ImmutableList;

    .line 43
    return-void
.end method

.method public static a()Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    invoke-direct {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;-><init>()V

    const-string v1, "me()"

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 3
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    invoke-direct {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "node("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;
    .locals 1
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    invoke-direct {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;

    .line 58
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v3, ","

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;->b()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 65
    const-string v0, " as "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 69
    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/contacts/graphql/GraphQLQuery;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
