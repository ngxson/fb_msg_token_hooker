.class public Lcom/facebook/orca/app/OrcaLogInitializer;
.super Ljava/lang/Object;
.source "OrcaLogInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Lcom/facebook/orca/debug/FbLogImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/debug/FbLogImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaLogInitializer;->a:Lcom/facebook/orca/debug/FbLogImpl;

    .line 18
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaLogInitializer;->a:Lcom/facebook/orca/debug/FbLogImpl;

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/FbLog;)V

    .line 23
    return-void
.end method
