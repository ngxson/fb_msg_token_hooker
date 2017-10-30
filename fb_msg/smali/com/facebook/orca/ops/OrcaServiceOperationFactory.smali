.class public Lcom/facebook/orca/ops/OrcaServiceOperationFactory;
.super Ljava/lang/Object;
.source "OrcaServiceOperationFactory.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/server/OrcaServiceRegistry;

.field private final c:Lcom/facebook/orca/common/util/AndroidThreadUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/server/OrcaServiceRegistry;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->b:Lcom/facebook/orca/server/OrcaServiceRegistry;

    .line 65
    iput-object p3, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->c:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    iget-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->b:Lcom/facebook/orca/server/OrcaServiceRegistry;

    iget-object v5, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->c:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;Lcom/facebook/orca/server/OrcaServiceRegistry;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)Lcom/facebook/dispose/Disposable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Lcom/facebook/dispose/Disposable;)V

    .line 100
    return-object v0
.end method
