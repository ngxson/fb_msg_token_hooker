.class Lcom/facebook/orca/contacts/upload/ContactsUploadRunner$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ContactsUploadRunner.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner$1;->a:Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Succeeded"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method
