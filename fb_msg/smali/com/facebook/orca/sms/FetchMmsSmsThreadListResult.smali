.class Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;
.super Ljava/lang/Object;
.source "FetchMmsSmsThreadListResult.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/ThreadsCollection;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadsCollection;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 16
    iput-object p2, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;->b:Lcom/google/common/collect/ImmutableList;

    .line 17
    return-void
.end method


# virtual methods
.method a()Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    return-object v0
.end method

.method b()Lcom/google/common/collect/ImmutableList;
    .locals 1
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
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
