.class Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-boolean p2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iget-boolean v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->a:Z

    invoke-static {v0, v1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V

    .line 113
    return-void
.end method
