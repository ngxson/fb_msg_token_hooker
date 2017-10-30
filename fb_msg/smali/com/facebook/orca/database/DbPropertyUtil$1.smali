.class Lcom/facebook/orca/database/DbPropertyUtil$1;
.super Ljava/lang/Object;
.source "DbPropertyUtil.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/Supplier;

.field final synthetic b:Lcom/facebook/orca/database/DbPropertyUtil;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/DbPropertyUtil;Lcom/google/common/base/Supplier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/orca/database/DbPropertyUtil$1;->b:Lcom/facebook/orca/database/DbPropertyUtil;

    iput-object p2, p0, Lcom/facebook/orca/database/DbPropertyUtil$1;->a:Lcom/google/common/base/Supplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/database/DbPropertyUtil$1;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/facebook/orca/database/DbPropertyUtil$1;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
