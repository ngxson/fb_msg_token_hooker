.class public Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;
.super Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;
.source "LinkedBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl",
        "<TT;>;",
        "Lcom/facebook/orca/inject/binder/LinkedBindingBuilder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/orca/inject/Binding;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)",
            "Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/Binding;->a(Ljavax/inject/Provider;)V

    .line 52
    new-instance v0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;

    iget-object v1, p0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    new-instance v1, Lcom/facebook/orca/inject/InstanceProvider;

    invoke-direct {v1, p1}, Lcom/facebook/orca/inject/InstanceProvider;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Ljavax/inject/Provider;)V

    .line 47
    return-void
.end method

.method public b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    new-instance v1, Lcom/facebook/orca/inject/RedirectProvider;

    invoke-static {p1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/inject/RedirectProvider;-><init>(Lcom/google/inject/Key;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Ljavax/inject/Provider;)V

    .line 28
    new-instance v0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;

    iget-object v1, p0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;)",
            "Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    new-instance v1, Lcom/facebook/orca/inject/ReflectionProviderPassThrough;

    invoke-direct {v1, p1}, Lcom/facebook/orca/inject/ReflectionProviderPassThrough;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Ljavax/inject/Provider;)V

    .line 58
    new-instance v0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;

    iget-object v1, p0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    return-object v0
.end method
