.class public Lcom/facebook/orca/threadview/ThreadViewLoader$Result;
.super Ljava/lang/Object;
.source "ThreadViewLoader.java"


# instance fields
.field public final a:Lcom/facebook/orca/threads/ThreadSummary;

.field public final b:Lcom/facebook/orca/threads/MessagesCollection;

.field public final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 80
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    .line 81
    iput-object p3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->c:Lcom/google/common/collect/ImmutableList;

    .line 82
    return-void
.end method
