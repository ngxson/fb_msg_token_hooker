.class public Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;
.super Ljava/lang/Object;
.source "ThreadDisplayCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 64
    iput-wide p3, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c:J

    .line 65
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c:J

    return-wide v0
.end method
