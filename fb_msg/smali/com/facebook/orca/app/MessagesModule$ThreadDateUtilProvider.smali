.class Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threads/ThreadDateUtil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1805
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1805
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ThreadDateUtil;
    .locals 2

    .prologue
    .line 1809
    new-instance v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/ThreadDateUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1805
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;->a()Lcom/facebook/orca/threads/ThreadDateUtil;

    move-result-object v0

    return-object v0
.end method
