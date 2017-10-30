.class Lcom/facebook/orca/app/FbAppInitializer$1;
.super Ljava/lang/Object;
.source "FbAppInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic b:Lcom/facebook/orca/app/FbAppInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/FbAppInitializer;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->b:Lcom/facebook/orca/app/FbAppInitializer;

    iput-object p2, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->b:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->a(Lcom/facebook/orca/app/FbAppInitializer;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->b:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->c(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbAppInitializer$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/FbAppInitializer$1$1;-><init>(Lcom/facebook/orca/app/FbAppInitializer$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->b:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->d(Lcom/facebook/orca/app/FbAppInitializer;)V

    .line 79
    return-void
.end method
