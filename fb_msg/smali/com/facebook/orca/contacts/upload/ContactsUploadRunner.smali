.class public Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;
.super Ljava/lang/Object;
.source "ContactsUploadRunner.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Lcom/facebook/orca/ops/OrcaServiceOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 2
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 25
    iget-object v0, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner$1;-><init>(Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 38
    iget-object v0, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 39
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 43
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->b:Ljava/lang/String;

    const-string v1, "Already uploading, not uploading again"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "contacts_upload"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
