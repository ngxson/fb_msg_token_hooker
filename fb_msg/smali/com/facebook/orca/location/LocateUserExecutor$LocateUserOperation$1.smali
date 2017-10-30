.class Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$1;
.super Ljava/lang/Object;
.source "LocateUserExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/LocateUserExecutor;

.field final synthetic b:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;Lcom/facebook/orca/location/LocateUserExecutor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$1;->b:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;

    iput-object p2, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$1;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$1;->b:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;

    invoke-static {v0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;)V

    .line 81
    return-void
.end method
