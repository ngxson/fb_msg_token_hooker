.class public Lcom/facebook/orca/threadlist/ThreadListLoader$Result;
.super Ljava/lang/Object;
.source "ThreadListLoader.java"


# instance fields
.field public final a:Lcom/facebook/orca/threads/ThreadsCollection;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/ThreadsCollection;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 83
    iput-wide p2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->b:J

    .line 84
    iput-wide p4, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->c:J

    .line 85
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    return v0
.end method
