.class public Lcom/facebook/orca/inject/Binding;
.super Ljava/lang/Object;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/orca/inject/Scope;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/inject/Binding;->a:Lcom/google/inject/Key;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/inject/Scope;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/orca/inject/Binding;->c:Lcom/facebook/orca/inject/Scope;

    .line 42
    return-void
.end method

.method public a(Lcom/google/inject/Key;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/inject/Binding;->a:Lcom/google/inject/Key;

    .line 26
    return-void
.end method

.method public a(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/inject/Binding;->b:Ljavax/inject/Provider;

    .line 34
    return-void
.end method

.method public b()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/inject/Binding;->b:Ljavax/inject/Provider;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/inject/Scope;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/inject/Binding;->c:Lcom/facebook/orca/inject/Scope;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/orca/inject/Binding;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/orca/inject/Binding;->e:Z

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/inject/Binding;->e:Z

    .line 58
    return-void
.end method
