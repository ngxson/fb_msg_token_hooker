.class Lcom/facebook/orca/app/AppInitLock$1;
.super Ljava/lang/Object;
.source "AppInitLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/AppInitLock;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/AppInitLock;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/app/AppInitLock$1;->a:Lcom/facebook/orca/app/AppInitLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/app/AppInitLock$1;->a:Lcom/facebook/orca/app/AppInitLock;

    invoke-static {v0}, Lcom/facebook/orca/app/AppInitLock;->a(Lcom/facebook/orca/app/AppInitLock;)V

    .line 88
    return-void
.end method
