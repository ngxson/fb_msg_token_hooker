.class Lcom/facebook/orca/threadview/ThreadViewFragment$5;
.super Ljava/lang/Object;
.source "ThreadViewFragment.java"

# interfaces
.implements Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$5;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$5;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MAP:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewFragment$State;)V

    .line 734
    return-void
.end method

.method public a(Lcom/facebook/orca/users/UserKey;)V
    .locals 2
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$5;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/users/UserKey;)V

    .line 723
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$5;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewFragment$State;)V

    .line 724
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$5;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->H()V

    .line 739
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$5;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->g(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    .line 729
    return-void
.end method
