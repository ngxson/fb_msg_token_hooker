.class public Lcom/facebook/orca/inject/ContextAwareInjector;
.super Lcom/facebook/orca/inject/AbstractInjector;
.source "ContextAwareInjector.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/inject/ContextScope;

.field private final c:Lcom/facebook/orca/inject/FbInjector;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/inject/FbInjector;Lcom/facebook/orca/inject/ContextScope;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractInjector;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/inject/ContextAwareInjector;->c:Lcom/facebook/orca/inject/FbInjector;

    .line 27
    iput-object p2, p0, Lcom/facebook/orca/inject/ContextAwareInjector;->b:Lcom/facebook/orca/inject/ContextScope;

    .line 28
    iput-object p3, p0, Lcom/facebook/orca/inject/ContextAwareInjector;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/inject/ContextAwareInjector;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextAwareInjector;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/inject/ContextAwareInjector;)Lcom/facebook/orca/inject/ContextScope;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextAwareInjector;->b:Lcom/facebook/orca/inject/ContextScope;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextAwareInjector;->c:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->b(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/facebook/orca/inject/ContextAwareInjector$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/inject/ContextAwareInjector$1;-><init>(Lcom/facebook/orca/inject/ContextAwareInjector;Ljavax/inject/Provider;)V

    return-object v1
.end method
