.class public Lcom/facebook/orca/login/AuthNavigationController;
.super Lcom/facebook/fragment/NavigableFragmentController;
.source "AuthNavigationController.java"


# instance fields
.field private a:Lcom/facebook/orca/login/AuthStateMachineConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/fragment/NavigableFragmentController;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/login/AuthStateMachineConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/orca/login/AuthNavigationController;->a:Lcom/facebook/orca/login/AuthStateMachineConfig;

    .line 24
    return-void
.end method

.method public c()Lcom/facebook/orca/login/AuthStateMachineConfig;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/login/AuthNavigationController;->a:Lcom/facebook/orca/login/AuthStateMachineConfig;

    return-object v0
.end method
