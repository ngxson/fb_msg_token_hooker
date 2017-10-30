.class Lcom/facebook/orca/threadview/ThreadViewFragment$3;
.super Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;
.source "ThreadViewFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V
    .locals 2
    .parameter

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->b(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MESSAGES:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 367
    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewFragment$State;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->GROUP_CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewFragment$State;)V

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->b(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->d(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/contacts/contactcard/ContactCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$3;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->d(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/contacts/contactcard/ContactCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->c()V

    goto :goto_0
.end method
