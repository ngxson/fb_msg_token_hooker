.class public Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;
.super Ljava/lang/Object;
.source "CreateThreadMethod.java"


# instance fields
.field private final a:Lcom/facebook/orca/server/CreateThreadParams;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/CreateThreadParams;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;->a:Lcom/facebook/orca/server/CreateThreadParams;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;)Lcom/facebook/orca/server/CreateThreadParams;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;->a:Lcom/facebook/orca/server/CreateThreadParams;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;->b:Ljava/lang/String;

    return-object v0
.end method
