.class Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;
.source "OrcaServiceHandlerHookForApp.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaDataManager;

.field private final b:Lcom/facebook/orca/push/PushInitializer;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/push/PushInitializer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->a:Lcom/facebook/orca/app/OrcaDataManager;

    .line 22
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->b:Lcom/facebook/orca/push/PushInitializer;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->b:Lcom/facebook/orca/push/PushInitializer;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushInitializer;->a()V

    .line 33
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->a:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->d()V

    .line 28
    return-void
.end method
