.class Lcom/facebook/orca/login/LogoutFragment$3;
.super Ljava/lang/Object;
.source "LogoutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/LogoutFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/orca/login/LogoutFragment$3;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment$3;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/LogoutFragment;->c(Lcom/facebook/orca/login/LogoutFragment;)V

    .line 159
    return-void
.end method
