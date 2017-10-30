.class public Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;
.super Ljava/lang/Object;
.source "GraphQLQueryFieldCall.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    array-length v0, p2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 14
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 15
    iput-object p1, p0, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;->b:[Ljava/lang/Object;

    .line 17
    return-void

    :cond_0
    move v0, v2

    .line 13
    goto :goto_0

    :cond_1
    move v1, v2

    .line 14
    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/contacts/graphql/GraphQLQueryFieldCall;->b:[Ljava/lang/Object;

    return-object v0
.end method
